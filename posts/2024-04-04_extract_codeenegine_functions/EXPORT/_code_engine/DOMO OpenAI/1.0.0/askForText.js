/*
method - POST
*/

async function askForText(input) {
  const aiResponse = await ENGINE.sendRequest(
    "post",
    `${AI_URL}/text/generation`,
    { input }
  );

  return aiResponse?.choices?.[0]?.output ?? "";
}

