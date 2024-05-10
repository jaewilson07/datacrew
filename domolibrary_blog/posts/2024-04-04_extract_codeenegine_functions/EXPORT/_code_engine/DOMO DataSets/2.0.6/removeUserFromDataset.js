/*
method - DELETE
*/

async function removeUserFromDataset(dataset, user) {
  const api = `/api/data/v3/datasources/${dataset}/USERS/${user}`;

  try {
    await codeengine.sendRequest('delete', api);
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


