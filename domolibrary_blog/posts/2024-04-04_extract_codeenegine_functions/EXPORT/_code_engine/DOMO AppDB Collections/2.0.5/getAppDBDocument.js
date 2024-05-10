/*
is_url - True
method - GET
url - api/datastores/v2/collections/${collectionId}/documents/${documentId}
*/

async function getAppDBDocument(collectionId, documentId) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (!guuidRegex.test(documentId))
    throw new Error("The document ID is improperly formatted");

  const url = `api/datastores/v2/collections/${collectionId}/documents/${documentId}`;

  try {
    return await codeengine.sendRequest("get", url);
  } catch (err) {
    console.error(err);
  }
}


