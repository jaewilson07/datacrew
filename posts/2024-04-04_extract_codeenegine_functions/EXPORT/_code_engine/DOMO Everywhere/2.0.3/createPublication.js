/*
is_url - True
method - POST
url - '/api/publish/v2/publications'
body - body
*/

async function createPublication(
  name,
  description = '',
  userId = '',
  subscribers,
  pages,
  datasets,
  permissions = [],
) {
  const url = '/api/publish/v2/publications';

  const content = [
    ...pages.map(page => ({
      domoObjectId: page,
      type: 'PAGE',
    })),
    ...datasets.map(dataset => ({
      domoObjectId: dataset,
      type: 'DATASET',
    })),
  ];

  const body = {
    name,
    description,
    content,
    subscriberDomain: subscribers,
    domain: '',
    type: 'CONTENT',
  };

  if (userId) {
    body.userId = userId;
  }

  const pageDatasets = Promise.all(
    pages.map(page => {
      return HelperFunctions.getDatasetsFromPage(page);
    }),
  );
  const allDatasets = [...new Set([...datasets, pageDatasets])];
  allDatasets.forEach(HelperFunctions.enablePDPForDataset);

  const allPermissions = HelperFunctions.addAllRowsPermissions(
    datasets,
    permissions,
  );
  HelperFunctions.addPermissions(allPermissions, subscribers);

  try {
    const {id} = await codeengine.sendRequest('POST', url, body);

    return id;
  } catch (error) {
    throw error;
  }
}


