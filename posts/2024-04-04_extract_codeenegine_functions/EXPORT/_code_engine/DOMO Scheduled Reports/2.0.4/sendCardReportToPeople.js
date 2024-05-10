/*
method - POST
body - viewObj
*/

async function sendCardReportToPeople(
  cardName,
  cardId,
  people = [],
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
      ...(people ? people.map(user => ({type: 'USER', value: user})) : []),
    ];
    await codeengine.sendRequest('post', reportUrl, recipients);
    return true;
  } catch (error) {
    throw new Error(error);
  }
}


