/*
is_url - True
method - PUT
url - /api/content/v2/groups/${group}/user
body - people
*/

async function addUsersToGroup(group, people) {
  try {
    const url = `/api/content/v2/groups/${group}/user`;
    await codeengine.sendRequest("put", url, people);

    return true;
  } catch (error) {
    throw new Error(error);
  }
}


