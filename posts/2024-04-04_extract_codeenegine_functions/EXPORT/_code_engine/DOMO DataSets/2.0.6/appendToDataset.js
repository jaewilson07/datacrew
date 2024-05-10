/*
method - POST
body - uploadsBody,
    
*/

async function appendToDataset(dataset, values) {
  const uploadsUrl = UPLOADS_URL.replace(':id', dataset);
  const uploadsBody = {
    action: 'APPEND',
    message: 'Uploading',
    appendId: 'latest',
  };

  try {
    const uploadsResponse = await codeengine.sendRequest(
      'post',
      uploadsUrl,
      uploadsBody,
    );
    const partsUrl = UPLOADS_PARTS_URL.replace(':id', dataset).replace(
      ':uploadId',
      uploadsResponse.uploadId,
    );

    await codeengine.sendRequest('put', partsUrl, values, null, 'text/plain');

    const commitUrl = UPLOADS_COMMIT_URL.replace(':id', dataset).replace(
      ':uploadId',
      uploadsResponse.uploadId,
    );
    const commitBody = {
      index: true,
      appendId: 'latest',
      message: 'it worked',
    };

    return await codeengine.sendRequest(
      'put',
      commitUrl,
      commitBody,
      null,
      'application/json',
    );
  } catch (error) {
    console.error(error);
  }
}


