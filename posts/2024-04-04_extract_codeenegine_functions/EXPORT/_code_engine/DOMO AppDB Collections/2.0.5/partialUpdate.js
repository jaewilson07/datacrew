/*
is_url - True
method - PUT
url - /api/datastores/v2/collections/${collectionId}/documents/update
body - docUpdateObject,
      null,
      null
    
*/

async function partialUpdate(collectionId, query, update) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (typeof query !== "object" || query === null)
    throw new Error("Query should be an object");

  if (typeof update !== "object" || update === null)
    throw new Error("Update should be an object");

  const docUpdateObject = {
    query: query,
    operation: update,
  };

  const url = `/api/datastores/v2/collections/${collectionId}/documents/update`;

  try {
    return await codeengine.sendRequest(
      "put",
      url,
      docUpdateObject,
      null,
      null
    );
  } catch (err) {
    console.error(err);
    return 0;
  }
}


