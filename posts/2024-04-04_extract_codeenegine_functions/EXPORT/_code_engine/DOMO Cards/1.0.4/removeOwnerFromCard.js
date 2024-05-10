/*
method - GET
body - cardOwners: [{id: user, type: 'USER'}]};

    await codeengine.sendRequest('POST', postURL, payload
*/

async function removeOwnerFromCard(cardId, user) {
  const getURL = `api/content/v1/cards?urns=${cardId}&parts=owners&includeFiltered=true`;
  try {
    const card = await codeengine.sendRequest('GET', getURL);
    const owners = card[0].owners;

    if (!owners) return true;

    owners.filter(owner => owner.id !== user);

    const postURL = `/api/content/v1/cards/owners/remove`;
    const payload = {cardIds: [cardId], cardOwners: [{id: user, type: 'USER'}]};

    await codeengine.sendRequest('POST', postURL, payload);

    return true;
  } catch (error) {
    throw error;
  }
}


