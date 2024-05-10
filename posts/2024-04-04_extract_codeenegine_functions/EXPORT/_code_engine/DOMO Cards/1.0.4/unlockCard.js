/*
is_url - True
method - PUT
url - /api/content/v1/cards/${cardId}
body - payload
*/

async function unlockCard(cardId) {
  const url = `/api/content/v1/cards/${cardId}`;
  const payload = {locked: false};
  try {
    await codeengine.sendRequest('PUT', url, payload);
    return true;
  } catch (error) {
    throw error;
  }
}


