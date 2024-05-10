/*
is_url - True
method - POST
url - '/api/publish/v2/proxy_user'
body - null, null, null
*/

async function getSubscribers() {
  const url = '/api/publish/v2/proxy_user';

  try {
    return await codeengine.sendRequest('POST', url, null, null, null);
  } catch (error) {
    throw error;
  }
}


