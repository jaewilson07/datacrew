/*
method - PUT
*/

async function bulkUpdateUserRoles(userIds, role) {
  const roleId = await getRoleIdByName(role);
  return codeEngine.sendRequest(
    "PUT",
    `/api/authorization/v1/roles/${roleId}/users`,
    userIds
  );
}


