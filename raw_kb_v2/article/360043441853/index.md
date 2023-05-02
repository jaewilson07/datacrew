


###
 Intro

Campaigns supports the ability to start a campaign from a call to the API

##
 Triggering a Campaign


#####
 Endpoint

The endpoint to call to trigger a campaign is:

https://campaigns-prod.domolabs.io/api/v1/campaigns/start


#####
 Object

Call a POST event to the endpoint above with the following JSON object:


```
{
  "campaignId": 0,
  "domoAccessToken": "",
  "domoAccessTokenOwnerEmailAddress": "",
  "emailAddresses": [],
  "instance": ""
}
```

#####
 Campaign Id

The id of the campaign you want to start.  You can get the campaign id by editing the campaign and going to the "SETTINGS" tab:


######
 Domo Access Token

A Domo access token that has been generated in Domo.  You can generate Domo Access Tokens by logging in,  going to the Admin Settings section, going to "Security", and selecting "Access tokens".  There you can simply generate a new access token to use for calls to the API.


######
 Domo Access Token Owner Email Address

The email address of the user who owns the
 **Domo Access Token**
 specified above.

#####
 Email Addresses (OPTIONAL)

A list of email addresses the campaign should be delivered to.  If no email addresses are selected, the entire campaign will be started and delivered to all recipients in the distribution list.

#####
 Instance

You Domo instance (e.g.

domo.domo.com

).

####
 Summary


|  |  |
| --- | --- |
|
 Path
  | `https://campaigns-prod.domolabs.io/api/v1/campaigns/start` |
|
 Since version
  |
 1.0
  |
|
 Description
  |
 Run a campaign and send an email to a everyone in the distribution list OR to a selected list of people
  |
|
 Auth
  |
 NONE, Roles: anonymous
  |
|
 Produces
  |
| `application/json`  |
|
 Consumes
  |
| `application/json`  |
|
 Body object
  |
| `startcampaign`  |
|
 Response status code
  |
| `200 - OK`  |
|
 Response object
  |
| `void`  |


