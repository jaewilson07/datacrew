/*
*/

async function getRoles() {
  const roles = await Helpers.handleRequest(
    'GET',
    '/api/authorization/v1/roles',
  );
  return roles.map(({id, name}) => ({id, name}));
}


