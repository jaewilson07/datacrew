/*
is_url - True
method - POST
url - api/dataprocessing/v1/dataflows/${dataFlowId}/executions
body - body
*/

async function startDataFlow(dataFlowId) {
  const body = {};
  const url = `api/dataprocessing/v1/dataflows/${dataFlowId}/executions`;

  try {
    const result = await codeengine.sendRequest('post', url, body);
    return result;
  } catch (error) {
    console.log(error);
  }
}


