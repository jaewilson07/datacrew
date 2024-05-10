/*
is_url - True
method - POST
url - api/datastores/v2/collections/${collectionId}/documents/bulk
body - sanitizedDocuments
*/

async function createAppDBDocuments(collectionId, documents) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (!Array.isArray(documents))
    throw new Error("The documents must be an array");

  if (documents.some((doc) => typeof doc !== "object" || doc === null))
    throw new Error(
      "All of the entries in the documents array must be an object"
    );

  const url = `api/datastores/v2/collections/${collectionId}/documents/bulk`;

  const sanitizedDocuments = documents.map((document) => ({
    content: document.content || document,
  }));

  try {
    return await codeengine.sendRequest("post", url, sanitizedDocuments);
  } catch (err) {
    console.error(err);
  }
}


