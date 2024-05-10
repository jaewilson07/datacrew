/*
method - PUT
*/

async function updateUserRole(userId, role) {
  const roleId = await getRoleIdByName(role);
  return codeEngine.sendRequest(
    "PUT",
    `/api/authorization/v1/roles/${roleId}/users`,
    [userId]
  );
}


