

Intro
-------

Domo's JSON Webhook connector allows you to connect to data sources that push JSON-formatted data, such as IFTTT, Github, and Fitbit. Using JSON Webhooks, you can get access to real-time data from weather devices, vending machines, wearables, and more. The Webhook link includes a long-living single use token so anyone with the link can publish data to your DataSet.


 You set up your JSON Webhook connection by configuring options in the Data Center as well as in the third-party application, as described in continuation.


**Video - Creating a JSON Webhook DataSet**


 Setting up a JSON Webhook Connection
--------------------------------------


 This section explains how to set up a JSON Webhook connection in Domo and in the third-party application. Once you have set up a successful connection, you can use the same account any time you go to create a new JSON Webhook DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*To set up a JSON Webhook connection,**

. Select
 **Appstore**
 from the top navigation pane.
2. Search for "JSON Webhook," then click the tile when it appears.
3. Click
 **Get the Data**
 .
4. Click
 **Copy Link**
 .
5. Paste the link you just copied into the appropriate location in your third-party application.


 The following screenshot comes from Github:

This location will
 *usually*
 be a field with a name like "Payload URL," like in the above screenshot. However, there are exceptions. Please refer to the third-party application's documentation if you are not sure.


 Also, be sure to follow the third-party application's requirements for pasting the URL. In some applications, the token (the piece after the last backslash) must be pasted on a different line.
6. Also in the third-party application, be sure to set the content type to "application/json."
7. Configure other settings in the third-party application as necessary then save the webhook.
8. Return to the JSON Webhook connector interface in Domo.
9. (Optional) Enter a
 **Webhook Secret**
 if desired.


 If a Webhook Secret is specified, Domo will expect a X-Hub-Signature header with every post. The value of the X-Hub-Signature is the HMAC (hash-based message authentication code) of the request body using the Webhook Secret and either SHA1, SHA256 or SHA512 hash algorithms.
10. (Optional) If you want to include metadata in the DataSet, such as IP and timestamp, select
 **Yes**
 in the last menu in the
 **Details**
 view; otherwise leave this set to
 **No**
 .
11. (Optional) If you want to use "Replace" instead of "Append" when the DataSet is updated, click
 **Change update settings**
 , select
 **Replace**
 in the menu, then click
 **Save**
 .
12. Click
 **Next**
 .
13. Enter a DataSet name and description (optional) in the correct fields.
14. Click
 **Save**
 .

You should now have a functional connector that collects data continuously from the third-party application and updates to Domo every 15 minutes.


 FAQs
------


####
 What type of data do I need to push to this Connector?

JSON-formatted data.

###
 What does it mean if my data includes blank fields?

Because the connector creates a record for each row, if a row does not include data, that row will appear blank in your DataSet.

###
 Who can push data into my Webhook DataSet?

The Webhook link includes a long-living single use token, so anyone with the link can publish data to your DataSet.

###
 Can anyone with the Webhook link see the data in my DataSet?

The Webhook link will push the data but will not show or expose any data.

###
 What is the rate limit for this Connector?

25 calls per second.

###
 Is there a size limit for a single call?

Yes, the Webhook accepts up to 100KB of data in a single call.

