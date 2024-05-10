/*
is_url - True
method - GET
url - '/api/publish/v2/publications/summaries/counts'
body - null, null, null
*/

async function getPublicationCount() {
  const url = '/api/publish/v2/publications/summaries/counts';

  try {
    return await codeengine.sendRequest('GET', url, null, null, null);
  } catch (error) {
    throw error;
  }
}


