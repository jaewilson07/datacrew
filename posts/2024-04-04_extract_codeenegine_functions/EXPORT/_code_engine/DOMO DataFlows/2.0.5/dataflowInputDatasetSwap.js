/*
method - GET
body - codeengine.sendRequest('GET', api2
*/

async function dataflowInputDatasetSwap(
  dataflowId,
  oldDataSourceId,
  newDataSourceId,
) {
  try {
    // Step 1: Make API calls to get the schemas of both datasets
    const api1 = `/api/query/v1/datasources/${oldDataSourceId}/schema/indexed`;
    const api2 = `/api/query/v1/datasources/${newDataSourceId}/schema/indexed`;
    const [schema1, schema2] = await Promise.all([
      codeengine.sendRequest('GET', api1),
      codeengine.sendRequest('GET', api2),
    ]);

    // Extract oldDataSourceName and newDataSourceName
    const oldDataSourceName = schema1.name;
    const newDataSourceName = schema2.name;

    // Step 2: Extract columns from the schemas
    const columns1 = schema1.tables[0].columns;
    const columns2 = schema2.tables[0].columns;

    // Step 3: Check that all columns from oldDataSourceId are present in newDataSourceId
    const missingColumns = columns1.filter(column1 => {
      return !columns2.some(
        column2 =>
          column1.name === column2.name && column1.type === column2.type,
      );
    });

    if (missingColumns.length > 0) {
      throw 'Schema mismatch: Some columns are missing in the new data source';
    }

    // Step 4: Fetch dataflow definition
    const api = `/api/dataprocessing/v2/dataflows/${dataflowId}?hydrationState=VISUALIZATION&validationType=SAVE`; //remove params
    const response = await codeengine.sendRequest('GET', api);
    const dataflowDefinition = response;

    const getNewInput = input => ({
      ...input,
      dataSourceId:
        input.dataSourceId === oldDataSourceId
          ? newDataSourceId
          : input.dataSourceId,
      dataSourceName:
        input.dataSourceName === oldDataSourceName
          ? newDataSourceName
          : input.dataSourceName,
    });

    const getNewAction = action => ({
      ...action,
      dataSourceId:
        action.dataSourceId === oldDataSourceId
          ? newDataSourceId
          : action.dataSourceId,
      name: action.name === oldDataSourceName ? newDataSourceName : action.name,
    });

    const getNewTriggerEvent = triggerEvent => ({
      ...triggerEvent,
      datasetId:
        triggerEvent.datasetId === oldDataSourceId
          ? newDataSourceId
          : triggerEvent.datasetId,
    });

    const getNewTriggerCondition = triggerCondition => ({
      ...triggerCondition,
      datasets:
        triggerCondition.datasets &&
        triggerCondition.datasets.map(dataset =>
          dataset === oldDataSourceId ? newDataSourceId : dataset,
        ),
    });

    const getNewTrigger = trigger => ({
      ...trigger,
      triggerEvents: trigger.triggerEvents.map(getNewTriggerEvent),
      triggerConditions: trigger.triggerConditions.map(getNewTriggerCondition),
    });

    // Step 5: Modify the inputs and actions
    const newDataflowDefinition = {
      ...dataflowDefinition,
      inputs: dataflowDefinition.inputs.map(getNewInput),
      actions: dataflowDefinition.actions.map(getNewAction),
      triggerSettings: {
        ...dataflowDefinition.triggerSettings,
        triggers:
          dataflowDefinition.triggerSettings.triggers.map(getNewTrigger),
      },
      onboardFlowVersion: {
        ...dataflowDefinition.onboardFlowVersion,
        description: `Modified via Worfklow to switch out input dataset ${oldDataSourceName} to ${newDataSourceName}.`,
      },
    };

    // Step 6: Save the modified dataflow
    const saveApi = `/api/dataprocessing/v1/dataflows/${dataflowId}`;
    await codeengine.sendRequest('PUT', saveApi, newDataflowDefinition);

    return true;
  } catch (error) {
    console.error(error);
    throw error;
  }
}


