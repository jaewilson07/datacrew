/*
method - POST
*/

async function promoteRepository(repositoryId) {
  const deployment = await Sandbox.fetchDeployment(repositoryId);

  if (!deployment) throw new Error('Could not find deployment');

  const commit = await Sandbox.fetchLastCommit(repositoryId);

  if (!commit) throw new Error('Could not find last commit');

  const mappings = await Sandbox.fetchMappings(
    repositoryId,
    deployment,
    commit,
  );

  if (!mappings)
    throw new Error('Could not find repository dependency mappings');

  await ce.sendRequest(
    'post',
    `/api/version/v1/repositories/${repositoryId}/deployments/${deployment.id}/promotions`,
    {
      commitId: commit.id,
      mapping: mappings.map(function ({contentMapRequest}) {
        return contentMapRequest;
      }),
      pusherEventId: '',
      approvalId: '',
    },
  );

  return Sandbox.awaitPromoteCompletion(repositoryId);
}

