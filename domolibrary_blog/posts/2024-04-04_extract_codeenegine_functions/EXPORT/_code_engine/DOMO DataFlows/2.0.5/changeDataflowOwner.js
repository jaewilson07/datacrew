/*
is_url - True
method - PUT
url - api/dataprocessing/api/dataprocessing/v1/dataflows/${dataFlowId}/patch
body - {responsibleUserId: +owner}
*/

async function changeDataflowOwner(dataFlowId, owner) {
  try {
    const url = `api/dataprocessing/api/dataprocessing/v1/dataflows/${dataFlowId}/patch`;
    await codeengine.sendRequest('put', url, {responsibleUserId: +owner});

    return true;
  } catch (error) {
    throw error;
  }
}

/*
 * Starts the specified dataflow
 *
 * @param {number} dataFlowId - The dataflow ID
 * @returns {boolean} - true if the call was successful
 */
async function disableDataFlow(dataFlowId) {
  const body = {enabled: false};
  const url = `api/dataprocessing/v1/dataflows/${dataFlowId}/patch`;

  try {
    await codeengine.sendRequest('put', url, body);
    return true;
  } catch (error) {
    throw error;
  }
}


