/*
method - GET
body - type: 'USER'}
*/

async function addOwnerToCard(cardId, user) {
  const getURL = `api/content/v1/cards?urns=${cardId}&parts=owners&includeFiltered=true`;
  try {
    const card = await codeengine.sendRequest('GET', getURL);

    let owners = card[0].owners;
    if (!owners) owners = [];

    // Check if user is already an owner
    if (owners.some(owner => owner.id === user)) return true;

    owners.push({id: user, type: 'USER'});

    const postURL = `/api/content/v1/cards/owners/add`;
    const payload = {
      cardIds: [cardId],
      cardOwners: [{id: user, type: 'USER'}],
      note: '',
      sendEmail: false,
    };

    await codeengine.sendRequest('POST', postURL, payload);

    return true;
  } catch (error) {
    throw error;
  }
}


