/*
is_url - True
method - PUT
url - /api/content/v1/cards/${cardId}/title
body - payload
*/

async function changeCardDescription(cardId, newDescription) {
  const url = `/api/content/v1/cards/${cardId}/title`;
  const payload = {description: newDescription};
  try {
    await codeengine.sendRequest('PUT', url, payload);
    return true;
  } catch (error) {
    throw error;
  }
}


