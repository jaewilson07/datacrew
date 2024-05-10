/*
*/

async function getDatasetOwner(dataset) {
  try {
    const datasetResult = await getMetadata(dataset);
    return datasetResult.owner.id;
  } catch (error) {
    throw error;
  }
}


