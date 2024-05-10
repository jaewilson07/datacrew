/*
is_url - True
method - GET
url - ${DATASET_URL.replace(':id', dataset)}?includeAllDetails=true
*/

async function getNumberOfDataflowsPoweredByDataset(dataset) {
  const url = `${DATASET_URL.replace(':id', dataset)}?includeAllDetails=true`;

  try {
    const datasetResult = await codeengine.sendRequest('get', url);
    return datasetResult.dataFlowCount;
  } catch (error) {
    throw error;
  }
}


