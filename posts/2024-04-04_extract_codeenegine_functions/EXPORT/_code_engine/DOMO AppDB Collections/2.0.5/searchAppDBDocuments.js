/*
is_url - True
method - POST
url - api/datastores/v2/collections/${collectionId}/documents/query
body - criteria
*/

async function searchAppDBDocuments(collectionId, criteria) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (typeof criteria !== "object" || criteria === null)
    throw new Error("The criteria parameter must be an object");

  const url = `api/datastores/v2/collections/${collectionId}/documents/query`;

  try {
    return await codeengine.sendRequest("post", url, criteria);
  } catch (err) {
    console.error(err);
  }
}


