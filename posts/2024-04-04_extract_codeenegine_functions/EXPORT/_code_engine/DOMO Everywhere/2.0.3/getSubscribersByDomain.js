/*
is_url - True
method - POST
url - '/api/publish/v2/proxy_user/domain/'
body - body
*/

async function getSubscribersByDomain(domains) {
  const url = '/api/publish/v2/proxy_user/domain/';
  const body = {
    domains,
  };

  try {
    const res = await codeengine.sendRequest('POST', url, body);

    return res.map(p => p.virtualUserId);
  } catch (error) {
    throw error;
  }
}


