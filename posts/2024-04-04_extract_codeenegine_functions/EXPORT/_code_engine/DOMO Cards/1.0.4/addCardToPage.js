/*
method - PUT
body - body,
    
*/

async function addCardToPage(cardId, pageId) {
  const body = {
    cardIds: [cardId],
    destinationPageIds: [pageId],
  };
  try {
    await codeengine.sendRequest(
      'put',
      `/api/content/v1/cards/bulk/pages`,
      body,
    );
    return true;
  } catch (error) {
    throw error;
  }
}


