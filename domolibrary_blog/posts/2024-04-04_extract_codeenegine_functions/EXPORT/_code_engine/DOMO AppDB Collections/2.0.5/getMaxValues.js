/*
is_url - True
method - POST
url - api/datastores/v2/collections/${collectionId}/documents/query?max=content.${fieldName} ${fieldName}&groupby=content.${groupby}
body - criteria || {}
*/

async function getMaxValues(collectionId, criteria, fieldName, groupby) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (typeof criteria !== "object" || criteria === null)
    throw new Error("The criteria parameter must be an object");

  if (!fieldName || !fieldName.trim().length)
    throw new Error(
      "The fieldName must have at least 1 alphanumberic character"
    );

  if (!groupby || !groupby.trim().length)
    throw new Error(
      "The groupby parameter must have at least 1 alphanumberic character"
    );

  const url = `api/datastores/v2/collections/${collectionId}/documents/query?max=content.${fieldName} ${fieldName}&groupby=content.${groupby}`;

  try {
    const documents = await codeengine.sendRequest("post", url, criteria || {});
    return documents.map((doc) => ({
      [groupby]: doc._id,
      [fieldName]: doc[fieldName],
    }));
  } catch (err) {
    console.error(err);
  }
}

