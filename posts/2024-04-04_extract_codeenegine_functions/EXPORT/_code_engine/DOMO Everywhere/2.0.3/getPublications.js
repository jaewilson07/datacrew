/*
is_url - True
method - GET
url - /api/publish/v2/publications/summaries?limit=${limit}&offset=${offset}&searchTerm=${searchTerm}
body - virtualUsers
*/

async function getPublications(limit, offset, searchTerm) {
  const url = `/api/publish/v2/publications/summaries?limit=${limit}&offset=${offset}&searchTerm=${searchTerm}`;

  try {
    return await codeengine.sendRequest('GET', url);
  } catch (error) {
    throw error;
  }
}

// This will fail if there are over 100 virtual users
// We will need to paginate this

async function getUsedPolicies(datasetId, virtualUsers) {
  const url = `/api/query/v1/data-control/${datasetId}/bulk/filter-groups/VIRTUAL_USER?options=include_open_policy`;
  const body = virtualUsers;

  try {
    const res = await codeengine.sendRequest('POST', url, body);

    return Object.values(res.objectMap).map(policy => ({
      datasetId: policy.dataSourceId,
      policyId: policy.filterGroupId,
    }));
  } catch (error) {
    throw error;
  }
}


