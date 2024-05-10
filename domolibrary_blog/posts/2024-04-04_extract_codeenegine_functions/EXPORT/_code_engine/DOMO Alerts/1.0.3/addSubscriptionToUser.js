/*
is_url - True
method - POST
url - /api/social/v4/alerts/${alertId}/subscriptions
body - payload
*/

async function addSubscriptionToUser(alertId, userId) {
    const url = `/api/social/v4/alerts/${alertId}/subscriptions`;
    const payload = { subscriberId: userId, type: "USER" };
    try {
        await codeengine.sendRequest("POST", url, payload);
        return true;
    } catch (error) {
        throw error;
    }
}


