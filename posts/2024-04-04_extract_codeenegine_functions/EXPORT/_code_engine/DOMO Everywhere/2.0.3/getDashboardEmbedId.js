/*
is_url - True
method - PUT
url - /api/content/v1/pages/embed/${pageId}/state
body - body,
    
*/

async function getDashboardEmbedId(
  pageId,
  visibility,
  showTitle,
  allowInteractions,
  showFilterBar,
  allowDataExport,
  showDataMaximization,
  persistFilters,
  openLinksInNewTab,
) {
  const url = `/api/content/v1/pages/embed/${pageId}/state`;
  const uppercaseVisibility = visibility?.toUpperCase() ?? '';
  const publicLinkValue =
    uppercaseVisibility === 'PUBLIC'
      ? 'SEARCHABLE'
      : uppercaseVisibility === 'OFF'
        ? 'OFF'
        : 'PRIVATE';
  const body = {
    dataExport: allowDataExport,
    dataMaximization: showDataMaximization,
    filters: showFilterBar,
    openLinksInNewTab: openLinksInNewTab,
    persistFilters: persistFilters,
    publicLink: publicLinkValue,
    interactions: allowInteractions,
    title: showTitle,
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


