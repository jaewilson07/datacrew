/*
method - PUT
*/

async function lockPage(pageId, lock) {
  const URL = "/api/content/v1/pages"
  try {
     await codeEngine.sendRequest(
      "put",
      `${URL}/${pageId}`,
      {
        "locked": lock
      }
    );
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


