/*
*/

async function displayName(group) {
  try {
    const groupObj = await fetchGroup(group);
    return groupObj.name;
  } catch (error) {
    throw new Error(error);
  }
}


