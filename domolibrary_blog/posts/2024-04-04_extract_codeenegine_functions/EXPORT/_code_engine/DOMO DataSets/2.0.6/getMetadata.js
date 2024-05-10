/*
is_url - True
method - GET
url - ${DATASET_URL.replace(':id', dataset)}?part=${parts}
*/

async function getMetadata(dataset, requestedParts) {
  const parts = requestedParts?.trim() ?? DATASET_PARTS.join(',');
  const url = `${DATASET_URL.replace(':id', dataset)}?part=${parts}`;

  try {
    return await codeengine.sendRequest('get', url);
  } catch (error) {
    console.error(error);
  }
}


