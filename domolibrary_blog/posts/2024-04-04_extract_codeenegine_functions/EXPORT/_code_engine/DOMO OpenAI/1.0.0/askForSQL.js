/*
method - POST
*/

async function askForSQL(input, datasetId) {
  const dataSourceSchemas = await fetchCollectionSchema(datasetId);
  const aiResponse = await ENGINE.sendRequest("post", `${AI_URL}/text/sql`, {
    input,
    dataSourceSchemas,
  });

  return aiResponse?.choices?.[0]?.output ?? "";
}


