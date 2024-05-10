/*
is_url - True
method - PUT
url - /api/content/v1/cards/${cardId}
body - payload
*/

async function allowTableDrill(cardId) {
  const url = `/api/content/v1/cards/${cardId}`;
  const payload = {allowTableDrill: true};
  try {
    await codeengine.sendRequest('PUT', url, payload);
    return true;
  } catch (error) {
    throw error;
  }
}


