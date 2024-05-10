/*
*/

async function getDataFlowLastRunTime(dataFlowId) {
  try {
    const result = await getDataFlowMetadata(dataFlowId);
    return new Date(result.lastExecution.endTime);
  } catch (error) {
    throw error;
  }
}


