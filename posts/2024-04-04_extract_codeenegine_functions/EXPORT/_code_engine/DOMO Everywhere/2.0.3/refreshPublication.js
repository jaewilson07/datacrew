/*
is_url - True
method - POST
url - '/api/publish/v2/publications/refresh'
body - body
*/

async function refreshPublication(publicationId, subscribers = []) {
  const url = '/api/publish/v2/publications/refresh';
  const body = {
    publicationIds: [publicationId],
    domains: subscribers,
  };

  try {
    await codeengine.sendRequest('POST', url, body);
  } catch (error) {
    throw error;
  }
}

