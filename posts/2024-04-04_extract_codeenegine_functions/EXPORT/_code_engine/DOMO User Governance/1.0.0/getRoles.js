/*
method - GET
*/

function getRoles() {
  return codeEngine
    .sendRequest("GET", "/api/authorization/v1/roles")
    .then((roles) =>
      roles.map((role) => ({
        id: role.id,
        name: role.name,
      }))
    );
}


