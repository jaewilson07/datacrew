/*
is_url - True
method - PUT
url - /api/content/v1/cards/kpi/embed/${cardId}/state
body - body,
    
*/

async function getCardEmbedId(
  cardId,
  visibility,
  showTitle,
  allowDrill,
  allowFilter,
  showChartPicker,
  allowDataExport,
) {
  const url = `/api/content/v1/cards/kpi/embed/${cardId}/state`;
  const uppercaseVisibility = visibility?.toUpperCase() ?? '';
  const publicLinkValue =
    uppercaseVisibility === 'PUBLIC'
      ? 'SEARCHABLE'
      : uppercaseVisibility === 'OFF'
        ? 'OFF'
        : 'PRIVATE';
  const body = {
    publicLink: publicLinkValue,
    title: showTitle,
    drill: allowDrill,
    filter: allowFilter,
    picker: showChartPicker,
    dataExport: allowDataExport,
  };

  try {
    const {gatewayToken, ...rest} = await codeengine.sendRequest(
      'PUT',
      url,
      body,
    );

    return {
      ...rest,
      embedId: gatewayToken,
    };
  } catch (error) {
    throw error;
  }
}


