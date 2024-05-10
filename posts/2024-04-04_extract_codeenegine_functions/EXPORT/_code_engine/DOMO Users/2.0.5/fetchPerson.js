/*
*/

async function fetchPerson(person) {
  try {
    const response = await Helpers.handleRequest(
      'get',
      `api/identity/v1/users/${person}?parts=detailed`,
    );
    const users = response?.users;
    const firstUser = users?.[0];
    const attributes = firstUser?.attributes;

    if (!attributes || !attributes.length) return undefined;

    const mappedResponse = attributes.reduce(
      (map, obj) => ({
        ...map,
        [obj.key]: Array.isArray(obj.values) ? obj.values[0] : undefined,
      }),
      {},
    );

    return {
      name: mappedResponse.displayName,
      id: mappedResponse.id,
      location: mappedResponse.employeeLocation,
      manager: mappedResponse.reportsTo,
      phoneNumber: mappedResponse.phoneNumber,
      title: mappedResponse.title,
    };
  } catch (error) {
    console.error(error);
  }
}


