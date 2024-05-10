/*
*/

async function fetchUser(person) {
  try {
    return await Helpers.handleRequest(
      'get',
      `/api/content/v3/users/${person}?includeDetails=true`,
    );
  } catch (error) {
    console.error(error);
  }
}


