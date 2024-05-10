/*
is_url - True
method - PUT
url - /api/content/v1/cards/${cardId}/title
body - payload
*/

async function changeCardTitle(cardId, newTitle) {
  const url = `/api/content/v1/cards/${cardId}/title`;
  const payload = {title: newTitle};
  try {
    await codeengine.sendRequest('PUT', url, payload);
    return true;
  } catch (error) {
    throw error;
  }
}


