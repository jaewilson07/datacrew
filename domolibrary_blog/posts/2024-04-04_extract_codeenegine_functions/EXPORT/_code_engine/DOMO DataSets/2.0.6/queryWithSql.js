/*
is_url - True
method - POST
url - QUERY_URL.replace(':id', dataset)
body - body
*/

async function queryWithSql(dataset, sql) {
  const convertResponseToList = ({rows, columns}) => {
    return rows.map(row => {
      return row.reduce((acc, curr, index) => {
        acc[columns[index]] = curr;
        return acc;
      }, {});
    });
  };

  try {
    const url = QUERY_URL.replace(':id', dataset);
    const body = {sql};
    const response = await codeengine.sendRequest('post', url, body);
    return convertResponseToList(response);
  } catch (error) {
    console.error(error);
  }
}


