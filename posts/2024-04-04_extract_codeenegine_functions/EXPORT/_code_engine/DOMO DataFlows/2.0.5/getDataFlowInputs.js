/*
*/

async function getDataFlowInputs(dataFlowId) {
  try {
    const result = await getDataFlowMetadata(dataFlowId);
    return result.inputs;
  } catch (error) {
    throw error;
  }
}


