/*
method - POST
*/

async function commitRepository(repositoryId) {
  Sandbox.validateUUID(repositoryId);
  await ce.sendRequest(
    'post',
    `/api/version/v1/repositories/${repositoryId}/commitRequests`,
    {
      summary: '',
      hidden: false,
      pusherEventId: null,
    },
  );

  return Sandbox.awaitCommitCompletion(repositoryId);
}


