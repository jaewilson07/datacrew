/*
method - POST
body - viewObj
*/

async function sendCardReportToGroups(
  cardName,
  cardId,
  groups = [],
  includeAttachments = false,
) {
  const viewUrl = `/api/content/v2/views`;
  const viewObj = {
    name: cardName,
    resourceType: 'CARD',
    resourceId: cardId,
    type: 'VIEW',
    purpose: 'REPORT',
    filterGroupIds: [],
    filters: [],
    functionOverrides: {},
    chartStates: [],
    segmentIds: [],
  };
  try {
    const viewRes = await codeengine.sendRequest('post', viewUrl, viewObj);
    const reportUrl = `/api/content/v1/reportschedules/views/${viewRes.id}/sendNow?attachmentInclude=${includeAttachments}`;
    const recipients = [
      ...(groups ? groups.map(group => ({type: 'GROUP', value: group})) : []),
    ];
    await codeengine.sendRequest('post', reportUrl, recipients);
    return true;
  } catch (error) {
    throw new Error(error);
  }
}

