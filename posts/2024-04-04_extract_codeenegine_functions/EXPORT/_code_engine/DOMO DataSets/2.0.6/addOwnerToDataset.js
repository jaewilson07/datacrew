/*
*/

async function addOwnerToDataset(dataset, owner) {
  try {
    await addOwnersToDataset(dataset, [owner]);
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


