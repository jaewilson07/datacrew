/*
is_url - True
method - DELETE
url - /api/data/v3/datasources/${dataset}/permissions/USER/${person}
*/

async function revokeDatasetAccess(dataset, person) {
  try {
    const url = `/api/data/v3/datasources/${dataset}/permissions/USER/${person}`;

    await codeengine.sendRequest('DELETE', url);
    return true;
  } catch (e) {
    throw new Error(e);
  }
}


