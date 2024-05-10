/*
method - POST
body - { parameters },
      null,
      null
    
*/

async function sendEmail(to, subject, body, recipients = [], style) {
  try {
    const emailRegex = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/;
    if (!emailRegex.test(to)) {
      throw new Error(`The supplied email address is invalid: ${to}`);
    }

    if (typeof subject !== "string" || subject.trim() === "") {
      throw new Error(`The subject must be a non-empty string: ${subject}`);
    }

    if (typeof body !== "string" || body.trim() === "") {
      throw new Error(`The body must be a non empty string: ${body}`);
    }

    if (
      !Array.isArray(recipients) ||
      !recipients.every((x) => Number.isInteger(+x))
    ) {
      throw new Error(
        `The recipients must be an array of user IDs: ${recipients}`
      );
    }

    if (typeof style !== "string") {
      throw new Error(`Style must be a string: ${style}`);
    }

    const parameters = {
      subject,
      text: `
        <div style="display: flex; flex-direction: column; font-family: Helvetica; overflow-x: scroll; flex-wrap: wrap; width: 100%; text-align: left;">
          <div style="display: flex; flex-direction: column; justify-content: flex-start; width: 100%">
            ${body}
          </div>
        </div>
        <style>${style}</style>`,
      recipientsUserIds: recipients,
    };

    await codeengine.sendRequest(
      "post",
      `/api/social/v3/messages/domoWrapperNew:plainText/send?route=recipients&method=EMAIL&recipients=${to}`,
      { parameters },
      null,
      null
    );

    return true;
  } catch (error) {
    console.error(error);
    return false;
  }
}


