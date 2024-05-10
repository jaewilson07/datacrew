/*
method - GET
body - "
*/

async function sendExternalEmail(to, subject, body) {
  const emailRegex = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/;

  if (!Array.isArray(to) || !to.every((x) => emailRegex.test(x)))
    throw Error("Every entry in the to array must be a valid email");

  if (typeof subject !== "string" || subject.trim() === "")
    throw new Error("Subject must be a non-empty string");

  if (typeof body !== "string" || body.trim() === "")
    throw new Error("Body must be a non-empty string");

  try {
    const { value } = await codeengine.sendRequest(
      "get",
      "/api/content/v1/customer-states/authorized-domains"
    );

    const allowedDomains = value.split(",");
    const allowedRecipients = to.filter((email) =>
      allowedDomains.includes(email.split("@")[1])
    );

    if (allowedRecipients.length === 0) {
      console.error("No recipients with authorized domains.");
      return false;
    }

    const parameters = {
      subject,
      text: `
        <div style="display: flex; flex-direction: column; font-family: Helvetica; overflow-x: scroll; flex-wrap: wrap; width: 100%; text-align: left;">
          <div style="display: flex; flex-direction: column; justify-content: flex-start; width: 100%">
            ${body}
          </div>
        </div>`,
      recipientsUserIds: [],
    };

    await codeengine.sendRequest(
      "post",
      `/api/social/v3/messages/domoWrapperNew:plainText/send?route=recipients&method=EMAIL&recipients=${allowedRecipients.join(
        ","
      )}`,
      { parameters }
    );

    return true;
  } catch (error) {
    console.error(error);
    return false;
  }
}


