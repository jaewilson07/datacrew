/*
method - POST
body - {}
*/

async function truncateDataset(dataset) {
  try {
    // Step 1: Start a new upload and get the data version
    const apiNewUpload = `/api/data/v3/datasources/${dataset}/uploads`;
    const dataVersion = await codeengine.sendRequest('POST', apiNewUpload, {});

    // Step 2: Upload data
    const apiDataUpload = `/api/data/v3/datasources/${dataset}/uploads/${dataVersion.uploadId}/parts/1`;
    await codeengine.sendRequest('PUT', apiDataUpload, '', null, 'text/plain');

    // Step 3: Commit upload
    const apiCommitUpload = `/api/data/v3/datasources/${dataset}/uploads/${dataVersion.uploadId}/commit`;
    const bodyCommitUpload = {index: false, action: 'REPLACE'};
    await codeengine.sendRequest('PUT', apiCommitUpload, bodyCommitUpload);

    // Step 4: Index dataset
    const apiIndexDataset = `/api/data/v3/datasources/${dataset}/indexes`;
    const bodyIndexDataset = {...bodyCommitUpload, index: true};
    await codeengine.sendRequest('POST', apiIndexDataset, bodyIndexDataset);

    return true;
  } catch (error) {
    return false;
  }
}

