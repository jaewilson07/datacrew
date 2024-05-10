/*
is_url - True
method - PUT
url - /api/publish/v2/publications/${pubId}
body - body
*/

async function addSubscribersToPublication(subDomains, pubId) {
  const publication = await HelperFunctions.getPublication(pubId);
  const subscriberDomains = publication.subscriptionAuthorizations.map(
    sub => sub.domain,
  );
  const datasets = publication.children
    .filter(c => {
      return c.content.type === 'DATASET';
    })
    .map(c => c.domoObjectId);

  // TODO: Add new subscriber to PDP policies
  const virtualUsers = await getSubscribersByDomain(subscriberDomains);
  HelperFunctions.addDomainToPolicies(subDomains, virtualUsers, datasets);

  const url = `/api/publish/v2/publications/${pubId}`;
  const content = publication.children.map(c => c.content);
  const subscribers = [...subscriberDomains, ...subDomains];
  const body = {
    name: publication.name,
    description: publication.description,
    content,
    subscriberDomain: subscribers,
    domain: '',
    type: 'CONTENT',
    id: pubId,
  };

  try {
    return await codeengine.sendRequest('PUT', url, body);
  } catch (error) {
    throw error;
  }
}


