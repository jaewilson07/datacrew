/*
method - POST
*/

function listRepositories(shared, queryOverrides) {
  Sandbox.validateBoolean(shared, 'shared');
  return ce.sendRequest('post', '/api/version/v1/repositories/search', {
    query: {
      offset: 0,
      limit: 50,
      fieldSearchMap: {},
      sort: 'repositoryName',
      order: 'asc',
      filters: {userId: null},
      dateFilters: {},
      ...queryOverrides,
    },
    shared: shared,
  });
}


