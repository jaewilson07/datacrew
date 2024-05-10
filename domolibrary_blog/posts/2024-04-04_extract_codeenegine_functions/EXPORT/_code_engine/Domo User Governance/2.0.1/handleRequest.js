/*
is_url - True
*/

async function handleRequest(method, url, body = null) {
  try {
    return await codeEngine.sendRequest(method, url, body);
  } catch (error) {
    console.error(`Error with ${method} request to ${url}:`, error);
    throw error;
  }
}


