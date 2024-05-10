/*
method - DELETE
*/

async function revokePageAccess(pageId, person) {
  try {
    await codeengine.sendRequest('delete', `/api/content/v1/share/page/${pageId}/user/${+person}`);

    return true;
  } catch (error) {
    throw error
  }
}


