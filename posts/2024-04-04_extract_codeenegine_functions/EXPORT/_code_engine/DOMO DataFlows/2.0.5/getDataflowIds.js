/*
method - POST
body - payload
*/

async function getDataflowIds(dataset) {
  const api = `/api/search/v1/query`;
  const payload = {
    entities: ['DATAFLOW'],
    filters: [],
    combineResults: true,
    query: '*',
    count: 10000,
    offset: 0,
    sort: {
      isRelevance: false,
      fieldSorts: [
        {
          field: 'create_date',
          sortOrder: 'DESC',
        },
      ],
    },
  };

  try {
    const response = await codeengine.sendRequest('POST', api, payload);
    const searchObjects = response.searchObjects || [];
    const filteredObjects = searchObjects.filter(obj =>
      obj.inputDatasets.some(inputDataset => inputDataset.id === dataset),
    );
    const result = filteredObjects.map(obj => ({
      databaseId: obj.databaseId,
      name: obj.name,
    }));
    return result;
  } catch (error) {
    console.error(error);
    throw error;
  }
}

