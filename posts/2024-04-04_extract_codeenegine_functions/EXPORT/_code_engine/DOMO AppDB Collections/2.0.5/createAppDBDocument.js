/*
method - POST
body - { content: sanitizedDocument }
    
*/

async function createAppDBDocument(collectionId, document) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (typeof document !== "object" || document === null)
    throw new Error("The document must be an object");

  const sanitizedDocument = document.content || document;
  try {
    return await codeengine.sendRequest(
      "post",
      `api/datastores/v2/collections/${collectionId}/documents`,
      { content: sanitizedDocument }
    );
  } catch (err) {
    console.error(err);
  }
}


