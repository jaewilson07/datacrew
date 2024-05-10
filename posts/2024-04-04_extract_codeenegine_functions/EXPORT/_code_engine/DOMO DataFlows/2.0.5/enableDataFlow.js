/*
is_url - True
method - PUT
url - api/dataprocessing/v1/dataflows/${dataFlowId}/patch
body - body
*/

async function enableDataFlow(dataFlowId) {
  const body = {enabled: true};
  const url = `api/dataprocessing/v1/dataflows/${dataFlowId}/patch`;

  try {
    await codeengine.sendRequest('put', url, body);
    return true;
  } catch (error) {
    throw error;
  }
}


