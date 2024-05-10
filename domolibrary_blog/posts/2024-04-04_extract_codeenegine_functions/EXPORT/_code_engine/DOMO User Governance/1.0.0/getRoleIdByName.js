/*
*/

async function getRoleIdByName(role) {
  const roles = await getRoles();
  const foundRole = roles.find((f) => f.name === role);
  if (foundRole) {
    return foundRole.id;
  } else {
    return null;
  }
}


