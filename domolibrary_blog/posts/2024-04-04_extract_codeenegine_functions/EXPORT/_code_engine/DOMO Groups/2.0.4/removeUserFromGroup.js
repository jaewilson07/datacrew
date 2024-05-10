/*
is_url - True
method - DELETE
url - /api/content/v2/groups/${group}/removeuser/${person}
*/

async function removeUserFromGroup(group, person) {
  try {    
    const url = `/api/content/v2/groups/${group}/removeuser/${person}`;
    await codeengine.sendRequest("delete", url);

    return true;
  } catch (error) {
    throw new Error(error);
  }
}

