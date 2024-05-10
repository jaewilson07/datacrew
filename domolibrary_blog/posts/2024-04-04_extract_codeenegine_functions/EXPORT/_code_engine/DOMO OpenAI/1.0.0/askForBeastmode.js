/*
method - POST
*/

async function askForBeastmode(input, datasetId) {
  const dataSourceSchemas = await fetchCollectionSchema(datasetId);
  const aiResponse = await ENGINE.sendRequest(
    "post",
    `${AI_URL}/text/beastmode`,
    {
      input,
      dataSourceSchemas,
    }
  );

  return aiResponse?.choices?.[0]?.output ?? "";
}


