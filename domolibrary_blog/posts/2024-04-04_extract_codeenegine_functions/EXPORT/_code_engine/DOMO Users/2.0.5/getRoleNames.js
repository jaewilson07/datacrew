/*
*/

async function getRoleNames() {
  const roles = await getRoles();
  return roles.map(({name}) => name);
}


