/*
*/

async function getRoleIdByName(roleName) {
  const roles = await getRoles();
  const foundRole = roles.find(({name}) => name === roleName);
  return foundRole ? foundRole.id : null;
}


