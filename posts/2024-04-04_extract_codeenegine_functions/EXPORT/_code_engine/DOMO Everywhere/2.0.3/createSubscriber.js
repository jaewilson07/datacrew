/*
is_url - True
method - POST
url - /api/publish/v2/proxy_user/domain/${subDomain}
body - body
*/

async function createSubscriber(subDomain, orgId) {
  const url = `/api/publish/v2/proxy_user/domain/${subDomain}`;
  const body = {
    tenantId: orgId,
  };

  try {
    await codeengine.sendRequest('POST', url, body);
  } catch (error) {
    throw error;
  }
}


