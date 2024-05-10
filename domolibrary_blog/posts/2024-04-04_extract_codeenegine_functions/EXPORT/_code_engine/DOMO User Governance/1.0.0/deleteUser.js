/*
method - DELETE
*/

function deleteUser(userId) {
  return codeEngine.sendRequest("DELETE", `/api/identity/v1/users/${userId}`);
}

