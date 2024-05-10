/*
*/

async function deleteUser(person) {
  await handleRequest("DELETE", `/api/identity/v1/users/${person}`);
  return true;
}

