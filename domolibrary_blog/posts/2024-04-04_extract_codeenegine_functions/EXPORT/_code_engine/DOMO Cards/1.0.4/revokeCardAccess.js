/*
method - DELETE
*/

async function revokeCardAccess(cardId, user) {
  try {
    await codeengine.sendRequest(
      'delete',
      `/share/unsharekpiuser?resourceId=${cardId}&userId=${user}`,
    );
    return true;
  } catch (error) {
    throw error;
  }
}


