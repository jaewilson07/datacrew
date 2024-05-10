/*
*/

async function deleteUser(userId) {
  try {
    await Helpers.handleRequest('delete', `/api/identity/v1/users/${userId}`);
    return true;
  } catch (error) {
    throw new Error('Unable to delete user.', error);
  }
}


