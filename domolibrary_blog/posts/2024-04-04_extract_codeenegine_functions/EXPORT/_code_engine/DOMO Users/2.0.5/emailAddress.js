/*
*/

async function emailAddress(person) {
  const user = await fetchUser(person);
  return user?.detail?.email;
}


