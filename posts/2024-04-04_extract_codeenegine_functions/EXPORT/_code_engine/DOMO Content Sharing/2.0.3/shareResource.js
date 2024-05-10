/*
method - POST
*/

async function shareResource(resourceType, resourceId, recipientType, recipients) {
  const body = {
    resources: [
      {
        type: resourceType,
        id: resourceId,
      },
    ],
    recipients: Array.isArray(recipients)
      ? recipients.map((id) => ({ type: recipientType, id }))
      : [
          {
            type: recipientType,
            id: recipients,
          },
        ],
    message: `I thought you might find this ${resourceType} interesting.`,
  };
  try {
    await codeEngine.sendRequest("POST", "/api/content/v1/share", body);
    return true;
  } catch (err) {
    throw new Error(err);
  }
}


