/*
method - GET
body - null,
      null,
      'application/json',
    
*/

async function runDataset(dataset) {
  const api = `/api/data/v3/datasources/${dataset}`;

  try {
    const response = await codeengine.sendRequest(
      'get',
      api,
      null,
      null,
      'application/json',
    );
    const runApi = `/api/data/v1/streams/${response.streamId}/executions`;
    return await codeengine.sendRequest('post', runApi, {runType: 'MANUAL'});
  } catch (error) {
    console.error(error);
  }
}


