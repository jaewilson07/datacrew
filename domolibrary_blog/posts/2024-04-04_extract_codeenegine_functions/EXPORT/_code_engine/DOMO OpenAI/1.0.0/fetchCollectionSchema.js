/*
is_url - True
method - POST
url - ${DATASET_URL}/${datasetId}
*/

async function fetchCollectionSchema(datasetId) {
  const url = `${DATASET_URL}/${datasetId}`;

  const response = await ENGINE.sendRequest("post", url, {
    sql: "select * from table limit 1",
  }).catch(console.error);

  const columns = response?.columns?.map((columnName, idx) => ({
    name: columnName,
    type: response.metadata[idx].type,
  }));

  return [
    {
      dataSourceName: "table",
      description: "",
      columns,
    },
  ];
}


