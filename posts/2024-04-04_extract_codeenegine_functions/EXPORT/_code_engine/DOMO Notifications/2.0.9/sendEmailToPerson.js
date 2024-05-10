/*
*/

async function sendEmailToPerson(person, subject, body) {
  return await sendDomoEmailToPeople([person], subject, body);
}

