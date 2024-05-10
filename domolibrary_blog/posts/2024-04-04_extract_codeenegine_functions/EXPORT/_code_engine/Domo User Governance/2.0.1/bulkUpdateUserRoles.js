/*
*/

async function bulkUpdateUserRoles(people, role) {
  const roleId = await getRoleIdByName(role);
  return handleRequest(
    "PUT",
    `/api/authorization/v1/roles/${roleId}/users`,
    people
  );
}


