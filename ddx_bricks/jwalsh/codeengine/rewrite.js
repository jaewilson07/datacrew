async function getPageCards(pageId) {
  const fetchPageUrl = `api/content/v1/pages/${pageId}/cards`; // Endpoint to fetch all cards on a page
  try {
    // Fetch all card IDs from the page
    return await codeengine.sendRequest("GET", fetchPageUrl);
  } catch (getPageCardsError) {
    console.error(
      `Error retrieving cards from page ID: ${pageId}`,
      getPageCardsError
    );
    throw error;
  }
}

async function GetCardMetaData(cardId) {
  const fetchUrl = `api/content/v1/cards?urns=${cardId}&parts=metadata,metadataOverrides,problems,properties,certification,datasources,dateInfo,domoapp,drillPath,drillPathURNs,library,masonData,owner,owners,problems,properties,slicers&includeFiltered=true`; // Endpoint to fetch card details
  try {
    const response = await codeengine.sendRequest("GET", fetchUrl);
  } catch (error) {
    console.error(`Error rerieving card meadata: ${cardId}`, error);
    throw error;
  }

  if (!response || response.length === 0) {
    throw new Error(`No card data found for card ID: ${cardId}`);
  }
  return response;
}

async function updateCardTitle(cardId, newTitle) {
  const updateUrl = `/api/content/v1/cards/${cardId}/title`; // Endpoint to update card title

  const payload = { title: newTitle };
  try {
    return await codeengine.sendRequest("PUT", updateUrl, payload);
  } catch (updateCardTitleError) {
    console.error(
      `Error updating card title for card ID: ${cardId}`,
      updateCardTitleError
    );
  }
}

async function updaeCardDataSource(cardId, newDatasourceId) {
  const updateDatasourceUrl = (cardId) =>
    `/api/content/v1/cards/${cardId}/datasource/${newDatasourceId}`; // Endpoint to update card datasource
  const datasourcePayload = { datasourceId: newDatasourceId }; // Assuming this is the correct payload structure

  try {
    return await codeengine.sendRequest(
      "PUT",
      updateDatasourceUrl(cardId),
      datasourcePayload
    );
  } catch (updateDatasourceError) {
    console.error(
      `Error updating datasource for card ID: ${cardId}`,
      updateDatasourceError
    );
    throw updateDatasourceError;
  }
}

async function updateAllCardTitles(pageId) {
  try {
    // Fetch all card IDs from the page
    const pageResponse = await PageCards(pageId);

    if (!pageResponse || pageResponse.length === 0) {
      throw new Error("No cards found on the page");
    }

    const cardIds = pageResponse.map((card) => card.id);

    for (const cardId of cardIds) {
      try {
        // Fetch the current card details
        const response = await GetCardMetaData(cardId);
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

        await updateCardTitle(cardId, newTitle);
      } catch (error) {
        console.error(
          `Error updating card title for card ID: ${cardId}`,
          error
        ); // Log the error for debugging
      }

      try {
        const datasourcePayload = { datasourceId: newDatasourceId }; // Assuming this is the correct payload structure
        await codeengine.sendRequest(
          "PUT",
          updateDatasourceUrl(cardId),
          datasourcePayload
        );
      } catch (updateDatasourceError) {
        console.error(
          `Error updating datasource for card ID: ${cardId}`,
          updateDatasourceError
        );
      }
    }
    return true;
  } catch (error) {
    console.error("Error updating card titles:", error); // Log the error for debugging
    throw error;
  }
}
