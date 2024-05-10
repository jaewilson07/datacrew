/*
method - PUT
body - body,
    
*/

async function addCardToPages(cardId, pageIds) {
  const body = {
    cardIds: [cardId],
    destinationPageIds: pageIds,
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


