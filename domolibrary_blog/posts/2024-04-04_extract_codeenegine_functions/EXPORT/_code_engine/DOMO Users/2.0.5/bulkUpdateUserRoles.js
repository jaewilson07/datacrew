/*
*/

async function bulkUpdateUserRoles(people, role) {
  const roleId = await getRoleIdByName(role);
  await Helpers.handleRequest(
    'PUT',
    `/api/authorization/v1/roles/${roleId}/users`,
    people,
  );
}

