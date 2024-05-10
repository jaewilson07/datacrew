/*
*/

async function updateUserRole(person, role) {
  const roleId = await getRoleIdByName(role);
  await Helpers.handleRequest(
    'PUT',
    `/api/authorization/v1/roles/${roleId}/users`,
    [person],
  );
}


