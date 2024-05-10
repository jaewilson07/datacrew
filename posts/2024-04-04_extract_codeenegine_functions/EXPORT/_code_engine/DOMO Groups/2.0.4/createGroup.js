/*
is_url - True
method - POST
url - /api/content/v2/groups
body - body
*/

async function createGroup(name, description, type) {
  try {
    if (name.trim() === "")
      throw new Error("Name must be a non-empty string");
    
    if (!["closed", "dynamic", "open"].includes(type))
      throw new Error(`Type must be 'closed', 'dynamic', or 'open'`);

    const url = `/api/content/v2/groups`;
    const body = { name, description, type };

    const group = await codeengine.sendRequest("post", url, body);
    return group.id;
  } catch (error) {
    throw new Error(error);
  }
}


