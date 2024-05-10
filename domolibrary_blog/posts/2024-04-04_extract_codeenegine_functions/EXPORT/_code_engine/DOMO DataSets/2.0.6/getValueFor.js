/*
*/

async function getValueFor(dataset, field, where, value) {
  try {
    const query = `SELECT * FROM table WHERE ${where} = '${value}' LIMIT 1`;
    const response = await getFirstMatch(dataset, query);

    if (!response) return '';
    if (!response.hasOwnProperty(field))
      throw new Error(
        "The requested field doesn't exist on the returned object",
        response,
      );

    return response[field] ? `${response[field]}` : '';
  } catch (e) {
    console.log(e);
    throw new Error('The query failed to execute', e);
  }
}


