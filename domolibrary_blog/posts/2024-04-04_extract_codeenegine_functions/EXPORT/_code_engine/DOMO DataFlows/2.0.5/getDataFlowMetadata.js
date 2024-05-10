/*
is_url - True
method - GET
url - api/dataprocessing/v2/dataflows/${dataFlowId}
*/

async function getDataFlowMetadata(dataFlowId) {
  const url = `api/dataprocessing/v2/dataflows/${dataFlowId}`;

  try {
    const result = await codeengine.sendRequest('get', url);
    return result;
  } catch (error) {
    throw error;
  }
}


