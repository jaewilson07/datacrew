/*
is_url - True
method - POST
url - /api/query/v1/data-control/${datasetId}/bulk/filter-groups/VIRTUAL_USER?options=include_open_policy
body - body
*/

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


