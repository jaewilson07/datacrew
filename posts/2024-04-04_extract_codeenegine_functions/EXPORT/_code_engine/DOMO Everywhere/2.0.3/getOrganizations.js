/*
is_url - True
method - GET
url - /api/publish/v2/controlcenter/subscribers?limit=${limit}&offset=${offset}&q=${searchTerm}
body - null, null, null
*/

async function getOrganizations(limit, offset, searchTerm) {
  const url = `/api/publish/v2/controlcenter/subscribers?limit=${limit}&offset=${offset}&q=${searchTerm}`;

  try {
    return await codeengine.sendRequest('GET', url, null, null, null);
  } catch (error) {
    throw error;
  }
}


