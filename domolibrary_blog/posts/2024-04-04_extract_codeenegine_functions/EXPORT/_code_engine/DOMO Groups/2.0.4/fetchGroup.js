/*
method - GET
*/

async function fetchGroup(group) {
  try {
    return await codeengine.sendRequest(
      "get",
      `/api/content/v2/groups/${group}`
    );
  } catch (error) {
    throw new Error(error);
  }
}


