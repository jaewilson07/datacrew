/*
method - POST
body - { parameters },
      null,
      null
    
*/

async function sendDomoEmailToPeople(recipients = [], subject, body) {
  if (
    !Array.isArray(recipients) ||
    !recipients.every((x) => Number.isInteger(+x))
  )
    throw Error("Every recipient must be a domo user id");

  if (typeof subject !== "string" || subject.trim() === "")
    throw Error("The subject must be a non empty string");

  if (typeof body !== "string" || body.trim() === "")
    throw Error("The body must be a non empty string");

  const parameters = {
    subject,
    text: `
      <div style="display: flex; flex-direction: column; font-family: Helvetica; overflow-x: hidden; flex-wrap: wrap; width: 100%; text-align: left;">
        <div style="display: flex; flex-direction: column; justify-content: flex-start; width: 100%">
          ${body}
        </div>
      </div>`,
    recipientsUserIds: recipients.map(Number),
  };

  try {
    await codeengine.sendRequest(
      "post",
      "/api/social/v3/messages/domoWrapperNew:plainText/send?route=recipients&method=EMAIL&recipients=",
      { parameters },
      null,
      null
    );
    return true
  } catch (error) {
    console.error(error);
    return false
  }
}


