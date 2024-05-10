/*
is_url - True
method - PUT
url - '/api/content/v1/pages/bulk/move'
body - {
      "pageIds": [pageId],
      "pagePermission": "ORIGINAL"
    }
*/

async function makePageTopLevel(pageId) {
  try {
    const url = '/api/content/v1/pages/bulk/move';
    await codeengine.sendRequest("put", url, {
      "pageIds": [pageId],
      "pagePermission": "ORIGINAL"
    });
    return true;
  }
  catch(err) {
    throw new Error(
      `Could not move the subpage ${pageId} to be a top-level page`
    );
  }
}

