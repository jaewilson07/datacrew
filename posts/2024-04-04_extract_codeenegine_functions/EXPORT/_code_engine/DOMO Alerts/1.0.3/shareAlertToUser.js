/*
is_url - True
method - POST
url - /api/social/v4/alerts/${alertId}/share
body - payload
*/

async function shareAlertToUser(alertId, message, userId, sendEmail) {
    const url = `/api/social/v4/alerts/${alertId}/share`;
    const payload = { userMessage: message, alertSubscriptions: [{ subscriberId: userId, type: "USER" }], sendEmail: sendEmail, metaData: {} };
    try {
        await codeengine.sendRequest("POST", url, payload);
        return true;
    } catch (error) {
        throw error;
    }
}


