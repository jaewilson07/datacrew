/*
*/

async function removeUsersFromDataset(dataset, users) {
  try {
    await Promise.all(
      (users || []).map(userId => removeUserFromDataset(dataset, userId)),
    );
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


