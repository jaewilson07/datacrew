/*
*/

async function createUser(fullName, email, roleId) {
  try {
    return await Helpers.handleRequest('post', '/api/content/v3/users', {
      detail: {
        email,
      },
      displayName: fullName,
      roleId,
    });
  } catch (error) {
    throw new Error('Unable to create user.', error);
  }
}


