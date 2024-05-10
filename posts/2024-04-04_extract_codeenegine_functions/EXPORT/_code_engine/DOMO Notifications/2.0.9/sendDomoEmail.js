/*
*/

function sendDomoEmail(to, subject, body) {
   to.map((email) => sendEmail(email, subject, body));
}


