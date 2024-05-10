/*
*/

async function updateField(collectionId, entryId, field, value) {
  if (!guuidRegex.test(collectionId))
    throw new Error("The collection ID is improperly formatted");

  if (!guuidRegex.test(entryId))
    throw new Error("The entry ID is improperly formatted");

  if (!field || !field.trim().length)
    throw new Error(
      "The field parameter must have at least 1 alphanumberic character"
    );

  return await partialUpdate(
    collectionId,
    { id: entryId },
    {
      $set: { [field.includes("content") ? field : `content.${field}`]: value },
    }
  );
}


