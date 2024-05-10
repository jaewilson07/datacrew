/*
method - GET
*/

async function getBeastmode(beastmodeId) {
  try {
    return await codeengine.sendRequest("get", `api/query/v1/functions/template/${beastmodeId}`, );
  } catch (error) {
    throw new Error(`Failed to fetch beast mode for the given beast mode id: ${beastmodeId}`, error);
  }
}


