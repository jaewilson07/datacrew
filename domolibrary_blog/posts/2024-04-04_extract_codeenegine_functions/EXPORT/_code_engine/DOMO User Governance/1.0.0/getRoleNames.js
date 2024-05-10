/*
*/

async function getRoleNames() {
  return ((await getRoles()) || []).map((role) => role.name);
}


