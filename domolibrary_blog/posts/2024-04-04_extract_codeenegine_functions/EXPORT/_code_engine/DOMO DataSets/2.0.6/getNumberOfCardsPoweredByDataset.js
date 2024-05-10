/*
*/

async function getNumberOfCardsPoweredByDataset(dataset) {
  try {
    const datasetResult = await getMetadata(dataset);
    return datasetResult.cardCount;
  } catch (error) {
    throw error;
  }
}


