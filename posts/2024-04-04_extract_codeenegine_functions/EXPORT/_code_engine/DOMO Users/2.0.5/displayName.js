/*
*/

async function displayName(person) {
  const user = await fetchUser(person);
  return user?.displayName;
}


