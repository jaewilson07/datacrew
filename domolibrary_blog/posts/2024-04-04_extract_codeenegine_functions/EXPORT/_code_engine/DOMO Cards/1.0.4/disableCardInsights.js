/*
method - POST
body - null,
    
*/

async function disableCardInsights(cardId) {
  try {
    await codeengine.sendRequest(
      'POST',
      `/api/social/v1/smart-alerts/disable?resourceId=${cardId}&resourceType=CARD`,
      null,
    );
    return true
  } catch (error) {
    throw error;
  }
}


