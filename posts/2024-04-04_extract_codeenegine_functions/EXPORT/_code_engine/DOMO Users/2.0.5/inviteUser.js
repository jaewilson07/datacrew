/*
*/

async function inviteUser(displayName, email, role) {
  const roleId = await getRoleIdByName(role);
  const body = {displayName, detail: {email}, roleId};
  return Helpers.handleRequest('POST', '/api/content/v3/users', body);
}


