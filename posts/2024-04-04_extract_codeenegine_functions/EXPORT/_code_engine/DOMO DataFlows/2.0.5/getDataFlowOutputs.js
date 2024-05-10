/*
*/

async function getDataFlowOutputs(dataFlowId) {
  try {
    const result = await getDataFlowMetadata(dataFlowId);
    return result.outputs;
  } catch (error) {
    throw error;
  }
}


