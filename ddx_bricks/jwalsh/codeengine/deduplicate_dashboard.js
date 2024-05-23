async function updateAllCardTitles(pageId) {
  const fetchPageUrl = `api/content/v1/pages/${pageId}/cards`; // Endpoint to fetch all cards on a page
  try {
    // Fetch all card IDs from the page
    const pageResponse = await codeengine.sendRequest("GET", fetchPageUrl);
    if (!pageResponse || pageResponse.length === 0) {
      throw new Error("No cards found on the page");
    }
    const cardIds = pageResponse.map((card) => card.id);
    for (const cardId of cardIds) {
      const fetchUrl = `api/content/v1/cards?urns=${cardId}&parts=metadata,metadataOverrides,problems,properties,certification,datasources,dateInfo,domoapp,drillPath,drillPathURNs,library,masonData,owner,owners,problems,properties,slicers&includeFiltered=true`; // Endpoint to fetch card details
      const updateUrl = `/api/content/v1/cards/${cardId}/title`; // Endpoint to update card title
      try {
        // Fetch the current card details
        const response = await codeengine.sendRequest("GET", fetchUrl);
        if (!response || response.length === 0) {
          throw new Error(`No card data found for card ID: ${cardId}`);
        }
        const currentTitle = response[0].title;
        if (!currentTitle) {
          throw new Error(
            `Title not found in card data for card ID: ${cardId}`
          );
        }
        // Remove "Duplicate of " from the title
        const newTitle = currentTitle.replace(/^Duplicate of /, "");
        // Update the card with the new title
        const payload = { title: newTitle };
        await codeengine.sendRequest("PUT", updateUrl, payload);
      } catch (error) {
        console.error(
          `Error updating card title for card ID: ${cardId}`,
          error
        ); // Log the error for debugging
      }
    }
    return true;
  } catch (error) {
    console.error("Error updating card titles:", error); // Log the error for debugging
    throw error;
  }
}
