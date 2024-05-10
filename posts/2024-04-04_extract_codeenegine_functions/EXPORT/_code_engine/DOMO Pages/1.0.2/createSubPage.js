/*
is_url - True
method - POST
url - '/api/content/v1/pages'
body - {
      parentPageId,
      title,
      "hasLayout": true
    }
*/

async function createSubPage(parentPageId, title) {
  try {
    const url = '/api/content/v1/pages';
    return await codeengine.sendRequest("post", url, {
      parentPageId,
      title,
      "hasLayout": true
    });
  }
  catch(err) {
    throw new Error(
      `Could not create the subpage ${title} for page ${parentPageId}`
    );
  }
}


