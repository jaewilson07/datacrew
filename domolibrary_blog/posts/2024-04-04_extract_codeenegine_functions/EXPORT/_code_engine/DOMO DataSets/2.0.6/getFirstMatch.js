/*
*/

async function getFirstMatch(dataset, sql) {
  const limitToOne = sql => {
    if (/LIMIT \d+/i.test(sql)) return sql.replace(/LIMIT \d+/i, 'LIMIT 1');

    return `${sql} LIMIT 1`;
  };

  try {
    const response = await queryWithSql(dataset, limitToOne(sql));

    if (Array.isArray(response)) return response[0];
    return response;
  } catch (e) {
    console.error(e);
    throw new Error('Failed to execute SQL query', e);
  }
}


