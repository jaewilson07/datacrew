/*
*/

async function secondsSinceUpdated(dataset) {
  try {
    const response = await getMetadata(dataset);
    return response
      ? (Date.now() - new Date(response.lastUpdated).getTime()) / 1000
      : 0;
  } catch (error) {
    console.error(error);
    return 0;
  }
}


