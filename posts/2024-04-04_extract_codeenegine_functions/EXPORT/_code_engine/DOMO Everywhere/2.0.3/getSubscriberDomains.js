/*
is_url - True
method - GET
url - '/api/publish/v2/proxy_user/domain/' + subDomain
*/

async function getSubscriberDomains() {
  try {
    const subs = await getSubscribers();

    return subs.map(sub => sub.subscriberDomain);
  } catch (error) {
    throw error;
  }
}

// TODO- do we need two of these?  Let's just use the plural one?

async function getSubscriberByDomain(subDomain) {
  const url = '/api/publish/v2/proxy_user/domain/' + subDomain;

  try {
    const response = await codeengine.sendRequest('GET', url);

    return response.virtualUserId;
  } catch (error) {
    throw error;
  }
}


