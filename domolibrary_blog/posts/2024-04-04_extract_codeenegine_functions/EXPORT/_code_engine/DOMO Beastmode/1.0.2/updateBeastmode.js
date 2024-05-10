/*
is_url - True
method - PUT
url - /api/query/v1/functions/template/${beastmodeId}?strict=false
body - payload
*/

async function updateBeastmode(beastmodeId, expression) {
    const url = `/api/query/v1/functions/template/${beastmodeId}?strict=false`;
    const payload = {expression};
    try {
      await codeengine.sendRequest("PUT", url, payload);
      return true;
    } catch (error) {
      throw error;
    }
}

