/*
is_url - True
method - POST
url - api/buzz/v1/channels/${searchResponse.searchObjects[0].databaseId}/messages?mentionsGrantPermission=true
body - searchBody
    
*/

async function sendBuzzRequestByChannelName(channelName, message) {
  const body = {
    domoSystemId: "CARD",
    content: {
      text: message,
      tags: [],
    },
  };

  const searchUrl = `api/search/v1/query`;
  const searchBody = {
    count: 1,
    offset: 0,
    combineResults: false,
    query: channelName,
    includePhonetic: true,
    queryProfile: "GLOBAL",
    state: "grid",
    entityList: [["buzz_channel"]],
  };

  try {
    const searchResponse = await codeengine.sendRequest(
      "post",
      searchUrl,
      searchBody
    );
    const url = `api/buzz/v1/channels/${searchResponse.searchObjects[0].databaseId}/messages?mentionsGrantPermission=true`;

    await codeengine.sendRequest("post", url, body);
    return true;
  } catch (error) {
    console.error(error);
    return false;
  }
}


