/*
method - POST
body - body
*/

async function addOwnersToDataset(dataset, owners) {
  const api = `/api/data/v3/datasources/${dataset}/share`;
  const permissions = (owners || []).map(
    DatasetPermissionInitiator.createDatasetOwnerPermission,
  );
  const body = {
    // message: can be a string of the message string to
    permissions,
    sendEmail: true,
  };

  try {
    await codeengine.sendRequest('post', api, body);
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


