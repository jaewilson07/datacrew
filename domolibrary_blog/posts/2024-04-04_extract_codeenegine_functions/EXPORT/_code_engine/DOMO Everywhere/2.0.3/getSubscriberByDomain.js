/*
is_url - True
method - GET
url - '/api/publish/v2/proxy_user/domain/' + subDomain
*/

async function getSubscriberByDomain(subDomain) {
  const url = '/api/publish/v2/proxy_user/domain/' + subDomain;

  try {
    const response = await codeengine.sendRequest('GET', url);

    return response.virtualUserId;
  } catch (error) {
    throw error;
  }
}


