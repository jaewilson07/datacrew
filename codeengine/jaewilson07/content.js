const codeengine = require("codeengine")

/**
 * sets the landing page of user calling the function
 * @param {string} objectId - id of page or card
 * @param {string} objectType - 'CARD' | 'PAGE'
*/
async function setMyLandingPage(objectId, objectType ) {
    if (!(['CARD', 'PAGE'].includes(objectType))) {
      throw new Error("🤯 invalid inputs:  `objectType` must be 'PAGE' or 'CARD'");
    }
    
    const url = `/api/content/v1/landings/target/DESKTOP/entity/${objectType}/id/${String(objectId)}/me`
    
    try{
      let r = await codeengine.sendRequest('put', url, {})
      return true
        
     } catch(err) {
        throw new Error(`🤯 API Error: ${err.status} - ${err.statusReason} -- check valid \`objectId\` (is it shared with you?)`);
    }
} 
