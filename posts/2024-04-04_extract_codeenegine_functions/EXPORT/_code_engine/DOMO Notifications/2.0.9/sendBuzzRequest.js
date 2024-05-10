/*
is_url - True
method - POST
url - api/buzz/v1/channels/${channelId}/messages?mentionsGrantPermission=true
body - body, null, null
*/

async function sendBuzzRequest(channelId, message) {
  const validateUUID = (uuid) => {
    const regex = new RegExp(
      "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"
    );
    return regex.test(uuid);
  };

  if (!validateUUID(channelId))
    throw Error("The provided channelId is not a valid GUUID");

  if (typeof message !== "string")
    throw Error("The message property must be a string");

  const body = {
    domoSystemId: "CARD",
    botRef: null,
    content: {
      text: message,
      tags: [],
    },
  };
  const url = `api/buzz/v1/channels/${channelId}/messages?mentionsGrantPermission=true`;

  try {
    await codeengine.sendRequest("post", url, body, null, null);
    return true;
  } catch (reason) {
    console.error(reason);
    return false;
  }
}


