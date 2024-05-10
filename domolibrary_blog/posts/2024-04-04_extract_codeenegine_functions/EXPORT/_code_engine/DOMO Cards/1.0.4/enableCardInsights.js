/*
method - POST
body - null,
    
*/

async function enableCardInsights(cardId) {
  try {
    await codeengine.sendRequest(
      'POST',
      `/api/social/v1/smart-alerts/enable?resourceId=${cardId}&resourceType=CARD`,
      null,
    );
    return true
  } catch (error) {
    throw error;
  }
}

