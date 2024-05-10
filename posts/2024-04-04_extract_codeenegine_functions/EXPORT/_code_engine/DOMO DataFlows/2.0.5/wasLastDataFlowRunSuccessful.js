/*
*/

async function wasLastDataFlowRunSuccessful(dataFlowId) {
  try {
    const result = await getDataFlowMetadata(dataFlowId);
    return !result.lastExecution.failed;
  } catch (error) {
    throw error;
  }
}


