/*
is_url - True
method - POST
url - api/datastores/v2/collections/${collectionId}/documents/query?max=content.${fieldName} ${fieldName}
body - criteria || {}
*/

async function getMaxValue(collectionId, criteria, fieldName) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (typeof criteria !== "object" || criteria === null)
    throw new Error("The criteria parameter must be an object");

  if (!fieldName || !fieldName.trim().length)
    throw new Error(
      "The fieldName must have at least 1 alphanumberic character"
    );

  const url = `api/datastores/v2/collections/${collectionId}/documents/query?max=content.${fieldName} ${fieldName}`;

  try {
    const documents = await codeengine.sendRequest("post", url, criteria || {});
    return Array.isArray(documents) && documents.length
      ? documents[0][fieldName] + ""
      : "";
  } catch (err) {
    console.error(err);
  }
}


