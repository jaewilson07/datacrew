/*
is_url - True
method - DELETE
url - /api/social/v4/alerts/${alertId}/subscriptions?subscriberId=${userId}&type=USER
*/

async function removeSubscriptionFromUser(alertId, userId) {
    const url = `/api/social/v4/alerts/${alertId}/subscriptions?subscriberId=${userId}&type=USER`;
    try {
        await codeengine.sendRequest("DELETE", url);
        return true;
    } catch (error) {
        throw error;
    }
}

