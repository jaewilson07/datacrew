/*
is_url - True
method - PUT
url - /api/content/v1/cards/${cardId}
body - payload
*/

async function lockCard(cardId) {
  const url = `/api/content/v1/cards/${cardId}`;
  const payload = {locked: true};
  try {
    await codeengine.sendRequest('PUT', url, payload);
    return true;
  } catch (error) {
    throw error;
  }
}


