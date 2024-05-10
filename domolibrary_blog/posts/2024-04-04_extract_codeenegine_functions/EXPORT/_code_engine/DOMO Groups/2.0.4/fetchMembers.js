/*
method - GET
body - obj
*/

async function fetchMembers(group) {
  try {
    const groupObj = await fetchGroup(group);
    const members = await Promise.all(
      groupObj.userIds.map(async (userId) => {
        const user = await codeengine.sendRequest(
          "get",
          `/api/identity/v1/users/${userId}?parts=detailed`
        );
        const attributes = user.users[0].attributes;
        const mappedAttributes = attributes.reduce(
          (map, obj) => ({ ...map, [obj.key]: obj.values[0] }),
          {}
        );
        return {
          name: mappedAttributes.displayName,
          id: mappedAttributes.id,
          location: mappedAttributes.employeeLocation,
          manager: mappedAttributes.reportsTo,
          phoneNumber: mappedAttributes.phoneNumber,
          title: mappedAttributes.title,
        };
      })
    );
    return members;
  } catch (error) {
    throw new Error(error);
  }
}


