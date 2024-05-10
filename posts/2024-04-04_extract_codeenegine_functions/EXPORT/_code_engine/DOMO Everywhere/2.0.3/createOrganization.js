/*
is_url - True
method - POST
url - /api/publish/v2/controlcenter/subscribers
body - body
*/

async function createOrganization(
  organizationName,
  serviceAccountEmail,
  customerId,
  shareWithDefaultGroup,
) {
  const url = `/api/publish/v2/controlcenter/subscribers`;
  const body = {
    teamName: organizationName,
    additionalUser: {
      displayName: serviceAccountEmail,
      emailAddress: serviceAccountEmail,
    },
    keyAttribute: customerId,
    shareDefaultGroup: shareWithDefaultGroup,
  };

  try {
    return await codeengine.sendRequest('POST', url, body);
  } catch (error) {
    if (error.status === 403) {
      return {message: 'Access is denied - insufficient priviliges'};
    } else if (error.status === 400) {
      return {
        message:
          'Failed to create - you have maxed out the number of instances you can create. Reach out to your account team.',
      };
    } else {
      throw error;
    }
  }
}


