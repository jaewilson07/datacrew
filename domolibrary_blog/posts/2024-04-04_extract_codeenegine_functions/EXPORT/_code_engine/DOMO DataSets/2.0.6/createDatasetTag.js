/*
is_url - True
method - POST
url - /api/data/ui/v3/datasources/${dataset}/tags
body - [tag]
*/

async function createDatasetTag(dataset, tag) {
  const url = `/api/data/ui/v3/datasources/${dataset}/tags`;

  try {
    await codeengine.sendRequest('POST', url, [tag]);

    return true;
  } catch (e) {
    throw e;
  }
}

class DatasetPermissionInitiator {
  static createDatasetOwnerPermission(ownerId) {
    return {
      id: ownerId,
      type: 'USER',
      accessLevel: 'CO_OWNER',
    };
  }
}


