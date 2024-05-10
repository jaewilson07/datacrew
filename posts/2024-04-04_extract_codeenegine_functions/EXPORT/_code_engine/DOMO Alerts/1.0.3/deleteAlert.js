/*
is_url - True
method - DELETE
url - /api/social/v4/alerts/${alertId}
*/

async function deleteAlert(alertId) {
    const url = `/api/social/v4/alerts/${alertId}`;
    try {
        await codeengine.sendRequest("DELETE", url);
        return true;
    } catch (error) {
        throw new error;
    }
}


