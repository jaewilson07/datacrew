

Intro
-------

Campaigns is a premium app that allows you to build your own custom campaign to deliver emails complete with a PDF attachment and data file or an SMS message. Emails can be delivered on a schedule that you set or started from a Domo DataSet Alert or an API call. Your campaigns can include dynamic Domo content such as cards and Summary Numbers, or even reference specific fields directly from the campaign distribution list. Campaigns gives you complete customization and control over your marketing email and SMS campaigns.


 You can download the Campaigns app in the Appstore or contact your Customer Success Manager (CSM) or Account Executive (AE) to request it.

*Note:**
 If you are on a test version of the app, you can only send emails to the app owner.

*Note:**
 The ability to send SMS messages and data files requires an additional cost.  If you have not purchased these additional features, your UI may appear different than what is displayed in the documentation screenshots.


 This article describes the Campaigns app and how to complete various tasks within it in the following topics:

 Getting started
* Creating and editing a campaign
* SMS campaigns
* Email campaigns
* Distribution list
* Settings
* Schedule
* Notifications
* Logs
* Audit trail
* Unsubscribes
* Billing
* Help and outgoing message settings
* Support for SMS unsubscribe
* SMS governance
* FAQ

Getting Started
-------------------

The default screen of the app is the
 **Campaigns**
 tab. In this tab, you can perform the following actions:

 View the list of all campaigns in the app
* Search for a campaign in the list by entering a keyword into the search bar
* View the campaign owner
* View last updated details
* Create new and edit existing campaigns
* Delete a campaign
* Duplicate a campaign
* Email yourself a preview of the campaign
* Send the campaign to your distribution list

##


 Deleting a Campaign

Follow these steps to delete a campaign:

. Locate the campaign you want to delete in the list.
2. Select

*Delete Campaign**
 .


 A dialog displays to confirm deletion. Select
 **Cancel**
 to cancel deletion.
3. Select
 **Confirm.**


###


 Duplicating a Campaign


**Note:**
 Schedules and notifications are not duplicated when duplicating a campaign and need to be manually recreated.

Follow these steps to duplicate a campaign:

. Locate the campaign you want to duplicate in the list.
2. Select

*Duplicate Campaign**
 .
3. A duplicate of the campaign you selected is created and displays in the campaign list in alphabetical order with the name "Duplicate of
 *campaign name."*


###


 Emailing a Campaign Preview

Follow these steps to email yourself a preview of the campaign:

. Locate the campaign you want to email yourself a preview of in the list.
2. Select

*Email Preview**
 .


 A modal displays a preview of the campaign. You can close it without sending by selecting

*Close Preview**
 .
3. Select
 **Okay**
 to email the preview.


###


 Running a Campaign

Follow these steps to run a campaign:

. Locate the campaign you want to run in the list.
2. Select

*Send Campaign**
 . A dialog display to confirm running the campaign. Select
 **Cancel**
 to cancel the campaign.
3. Select
 **Confirm**
 .

Creating and Editing a Campaign
-----------------------------------

To access the editor, make sure you are in the
 **Campaigns**
 tab and choose an option below:

 **Creating a campaign —**
 Select
 **+ Add Campaign**
 , opposite the search bar.
* **Editing a campaign —**
 Select the campaign you want to edit from the list.

The editor displays, and you can edit the following campaign details:

 title
* description
* owner (You are the default owner.)


**Important:**
 After you assign a campaign owner, if that user is removed from the instance, any campaigns that they are the owner of fail.

There are two kinds of campaigns you can run: SMS and email. The sections below describe each type.

##
 SMS Campaigns

In the SMS Body of your campaign, you can do the following:

 Create the
 **Opt in message**
 . You can add a custom message to the beginning and/or end of the regulatory required message. Max length for the opt in message is 300 characters.
* Compose your SMS message in the Message body field. Max length for the message is 600 characters.
* Add Domo card titles, Summary Numbers, or descriptions to your campaign by selecting
 **Add Card**
 .
* Add fields from your distribution list DataSet by selecting
 **Add Merge Field**
 .
* Format any dynamic fields in your SMS message or add a QR cods by selecting
 **Tag Formatting.**


 Email Campaigns
-------------------

The following sections describe the types of email campaigns.

##
 HTML Email Body

In the HTML Email Body of your campaign, you can do the following:

 Enter the
 **Email Subject**
 .
* Use the
 **Email Body Editor**
 to compose your email campaign.
* Use the
 **Choose file**
 option to upload a file as your email campaign instead of creating one from scratch.


**Note:**
 You can only upload HTML files via
 **Choose file**
 .
* Add Domo cards, card titles, summary numbers, or descriptions to your campaign by selecting
 **Add Card**
 .
* Add fields from your distribution list DataSet by selecting
 **Add Merge Field**
 .
* Add an unsubscribe link to your email by selecting
 **Add Dynamic Tag**
 .
* Format any dynamic field in your email or add a QR Code by selecting
 **Tag Formatting**
 .


**Tip:**
 If you want even more control over creating your email body or attachment, you can go into code mode by selecting

in the
 **Email Body Editor**
 . In this mode, you can write all of your own code to build your email body or attachment. To learn more about adding custom touches or even more Domo content, check out

Using the Domo Campaigns Markup Language

.


####


###
 Plain Text Body

The
 **Plain Text Body**
 allows you to create a custom email for customers who have email clients that do not support HTML. Plain Text Body has the same options as the HTML Email Body except for showing cards themselves and adding a dynamic tag.


 Email Attachment
------------------

There are two options for email attachments:

PDF and Data.

##
 PDF

You have all the same options to optionally create a fully dynamic and custom email attachment as you do with the email body. Only HTML formatted files can be uploaded and will be received as a PDF.

###
 Data Email Attachment


 Data attachments allow you to filter a Domo DataSet or an HTML Table Card and attach it to a campaign as a CSV or XLSX file. You can also choose to compress the file to keep email sizes small.

####
 Compressing a File

There are two formatting options for compressing a data attachment: Zip, or 7-Zip. You can also choose
 **No compression**
 .

 **Zip —**
 An archive file format that supports lossless data compression.
* **7-Zip —**
 A compressed archive file format that supports several different data compression, encryption, and pre-processing algorithms.

*Note:**
 When sending an HTML Table Card as a PDF attachment or embedding it in the body of the campaign, you are limited by the maximum number of rows that can be rendered from an HTML Table card—between 800 and 1,000.

Distribution List
---------------------

The distribution list determines who the campaign is sent to. The distribution list must come from a DataSet in Domo that has all the information you need for your message, the recipients email addresses, and any Filters you want to apply.


 To import a distribution list for a new campaign:

. In the
 **Distribution List**
 tab of the campaign editor, select
 **Import**
 .
2. Search for and select the DataSet that contains the list of contacts you want this campaign to be sent to. A modal displays to guide you through configuration.
3. Specify which column contains the emails and/or phone numbers and which columns contain Filters.

*Note:**
 Valid operands for Filters include:

* is greater than
	* is greater than or equal to
	* is less than
	* is less than or equal to
	* is between
	* is equal to
	* does not equal
	* is in
	* is not in
 For more information on how to use Filters to ensure your recipients are only seeing the data you want them to see, see our article on

Using the Domo Campaigns Markup Language

.
4. (Optional) Specify which column contains a semi-colon delimited list of CC and/or BCC email addresses, sender name, sender email, and 'reply to' email address. The values specified in the distribution list override the settings in the
 **Settings**
 tab.
5. Click
 **Select**
 .


 After you add a distribution list to your campaign, you can:

 Change the distribution list DataSet by selecting the orange button with the DataSet

name.
* View which column in your Distribution list is mapped as email, phone number, Filters, and so on.
* View a specific recipient's campaign email by selecting the checkbox next to the recipient's name, then selecting
 **Test**
 .
* Send the campaign to specific recipients by selecting the checkboxes by their names, then selecting
 **Run**
 .

*Note:**
 There is a limit of 50 recipients for sending a direct campaign with either
 **Test**
 or
 **Run.**


 Settings
------------


###
 Campaign Settings

In the
 **Campaign Settings,**
 you can do the following:

 Choose to be notified if your campaign runs more than once in a specified amount of time. This is helpful to ensure you are not inadvertently delivering multiple emails to the same customers.
* Configure the system to wait for a specified amount of time after running a campaign before delivering emails. This gives you the opportunity to cancel a campaign before any emails are delivered to your customers.
* Determine who the campaign is visible to. Campaigns uses Domo Groups to manage who can and cannot see certain campaigns.  If you select a specific group or groups under T
 **his campaign is visible to:**
 , then only users who belong to those groups can see this specific campaign.


 If you would like to configure an "administrative" user that can see all campaigns regardless of this group setting, create a group in your Domo instance called
 **\_CAMPAIGNS\_VIEW\_ALL\_**
 and add all of your "administrative" users to this group.  That will deactivate this group visibility functionality for those accounts.
* Disable strict no data checking by checking the box. By default, if a campaign filters out all the data for a recipient, that campaign is blocked and not delivered to the customer. Selecting this option disables this safeguard and allows such campaigns to be delivered.


####
 SendGrid Tracking

If you use the SendGrid SMTP server, Campaigns integrates with SendGrid to provide tracking numbers for all of your emails. Enabling SendGrid tracking, you can see how many emails are being delivered, bounced, or opened all in a custom SendGrid report which is brought back into Domo via the

SendGrid Connector

.


 Check the
 **Enable SendGrid tracking**
 box and make sure your

outgoing mail settings

are set up with your SendGrid account information.

*Tip:**
 The campaign name, campaign id, and the distribution list columns (excluding Email and Filter columns) are passed to SendGrid when this option is enabled. SendGrid has a limit of 10,000 bytes, so it is best practice to place columns you want passing through at the beginning of the distribution list to ensure important data is sent.


###
 Email Settings

In
 **Email Settings**
 , you can do the following:

 Choose what the sender name, sender email address, and reply to address should be. If left blank, an error occurs when trying to send the campaign.
* Specify a semi-colon delimited list of CC and/or BCC addresses that should receive a copy of each campaign. These values can be overridden in
 **Distribution List**
 .
* Select the mail server to use when delivering your campaign.


 Schedule
------------

In the
 **Schedule**
 tab under
 **Settings**
 , set up dynamic schedules to send your email campaigns by selecting
 **Add Schedule**
 .

*Note:**
 The Campaigns App uses the current user's System Timezone when scheduling campaigns.


 Scheduling frequency options include:

 Hourly
* Daily
* Weekly
* Bi-weekly (every two weeks)
* Monthly By Date
* Monthly By Week


**Note:**
 For a  Bi-weekly schedule, even/odd weeks are determined by the total 52 weeks in the year and the intended purpose is to send the campaign every other week.


**Note:**
 Monthly By Week is based on the occurrence within the month. An example of this type of schedule would be: "Monthly by Week on the 1st Wednesday in July.

Set as many schedules as you would like and select
 **Save**
 button when you are finished. To cancel a schedule, select
 **Delete**
 for that schedule.


**Note:**
 If you do not have a schedule set for your campaign at all, then you will always need to send it manually.


 Notifications
-----------------

You can configure notifications to be sent to any Domo user so they know whether delivery of the campaign was successful or unsuccessful to any recipient on your distribution list.


 To add a user to either type of notification, search for and select the user's name in the field for that notification.


 When you are finished adding recipients, select
 **Save**
 .


###
 Send Only Campaign User

Campaigns now supports a
 **Send Only**
 user.
 **Send Only**
 users can view any campaign to which they have access but can't update or change anything.  The only action they can perform is to send a campaign.  To add a user as a
 **Send Only**
 user, create a new group in your Domo instance called
 **\_CAMPAIGNS\_SEND\_ONLY\_**
 and add all of your
 **Send Only**
 users to this group.  This limits those users rights to only being able to send a campaign.


 Logs
--------

Domo logs all campaign activity within the app. In the Logs tab, you can view all events related to campaign execution such as, successful deliveries, warnings, and errors. This is the best way to stay up to date on campaign delivery.


 You can search the log by campaign, user, or event type. Select
 **Refresh**
 to view the latest version of the log.


**Note:**
 The logs track all activity since the app was downloaded.


 Audit Trail
---------------

The Audit Trail specifically tracks all user activity within the app. You can view who performed what action, at what time, and on which campaign.


 You can search the Audit Trail by campaign, user, or event type. Select
 **Refresh**
 to see the latest version of the Audit Trail.


**Important:**

Any user that has access to this app has access to see and edit all of the campaigns. Keep this in mind when sharing the app with others in your Domo instance.

Unsubscribes
----------------

You can view any end user who has unsubscribed from a campaign via email or SMS in the
 **Unsubscribes**
 tab. If an end user accidentally unsubscribed from a campaign by replying with ###STOP (123STOP), they can resubscribe to the campaign by replying with ###START (123START).


 If an end user accidentally unsubscribed from all campaigns by replying with STOP, they can resubscribe to all campaigns by replying with START.


 You can search the unsubscribes by campaign and email address.


 Select
 **Export**
 to download the list of unsubscribes in a CSV file, or select
 **Refresh**
 to view the latest version of the list.


**Note:**

Unsubscribing from a specific campaign (123STOP) is managed separately from unsubscribing from all campaigns (STOP). Resubscribing to all campaigns does not automatically resubscribe a user to a specific campaign.  Users still have to reply with ###START to subscribe to the specific campaign.

Billing
-----------

The
 **Billings**
 tab displays a list of all of the campaigns with their type, the date last run, and how many SMS messages and emails were delivered. This is an easy way to keep track of the number of messages you have sent to ensure you are within your monthly message limits.


 Help and Outgoing Message Settings
--------------------------------------


 Select

*Help**
 to view the app version number and a list of further resources for using Campaigns.


 Select

*Settings**
 to access the outgoing message settings. A modal displays. Go to the
 **Outgoing Mail Settings**
 tab or the
 **Outgoing SMS Settings**
 tab to configure them.

##
 Outgoing Mail Settings

To configure the outgoing email settings, go to the
 **Outgoing Mail Settings**
 tab of the

*Settings**
 modal.


 You need to know the following:

 SMTP Server
* Port
* Username
* Password
* Whether your network security is SSL or TLS


**Note:**
 If you are using a Mail Server, like your own exchange server, that is behind a firewall, you may need to allowlist the IP Addresses of the Campaigns servers. Those IP Addresses are:


* 52.201.63.225.
* 52.54.147.112
* 3.235.111.48
* 3.235.111.49

After you enter the server information, choose whether you want to
 **Use as Default Mail Server**
 .


 Select
 **Save**
 to save your changes and close the modal.

##
 Outgoing SMS Settings

To configure the outgoing text message settings, go to the
 **Outgoing SMS Settings**
 tab of the

*Settings**
 modal. SMS messages use your own Twilio account.


 You need to know the following:

 Twilio LIVE credentials Account SID
* Twilio LIVE credentials Auth Token
* Twilio API Key SID
* Twilio API Key Token
* Twilio Account outgoing phone number or short code
* The country code to which your outgoing phone number or short code belongs

Follow these steps to configure your own Twilio account:

. In the
 **Outgoing SMS Settings**
 tab, select

*Add**
 in the account list on the left to add a new account.
2. Enter an account name and optional description.
3. For
 **Account SID**
 enter the Account SID from your LIVE Credentials in Twilio.
4. For
 **Auth Token**
 enter the Auth Token from your LIVE Credentials in Twilio.
5. Create a new Standard API Key in Twilio.
6. For
 **API Key SID**
 enter the SID from your API Key in Twilio.
7. For
 **API Key Secret**
 enter the Secret from your API Key in Twilio.
8. For
 **Sender Phone Number / Short Code**
 enter the sender phone number or short code associated with this account.  Do not include the country code, just the phone number or short code.
9. For
 **Country Code**
 select the country code to which the sender phone number or short code belongs.
10. Indicate whether to use this account as the default Twilio account.
11. (Optional) Select
 **Test Connection**
 to test the configuration.
12. Select
 **Save**
 .

Support for SMS Unsubscribe
-------------------------------

In order for Campaigns to support unsubscribe requests from your customers, you need to configure your Twilio account to forward all unsubscribes events to the Campaigns endpoint:


```
https://campaigns-prod.domolabs.io/api/v1/campaigns/queue/sms

``


 This endpoint must be entered into your Twilio account at different places depending on if you are sending SMS messages from a Twilio Short Code or a full Phone Number.

##
 Short Code Webhook

Follow these steps if you are using a Twilio Short Code for your sender number:

. Log into your Twilio account.
2. Under
 **Communications Cloud**
 select
 **Programmable Messaging**
 .
3. Select
 **Senders**
 .  This displays a list of all of your short codes.
4. Select the appropriate short code (for example, 55555).
5. Under
 **Messaging**
 in the box next to
 **A Message Comes In**
 :
	1. Leave the first drop-down on
	 **Webhook**
	 .
	2. Enter the URL above into the text box
	3. Leave the second drop-down on
	 **HTTP Post**
	 .
	4. Select
	 **Save**
	 .


###
 Phone Number Webhook

Follow these steps if you are using a full phone number for your sender number:

. Log into your Twilio account.
2. Under
 **Super Network**
 , select
 **Phone Numbers**
 .  This displays a list of all of your phone numbers you have registered with Twilio.
3. Select the appropriate phone number (e.g. +1 555 123 4567).
4. Scroll to the bottom of the page.  Under
 **Messaging**
 in the box below
 **A Message Comes In**
 :
	1. Leave the first drop-down on
	 **Webhook**
	 .
	2. Enter the URL above into the text box.
	3. Leave the second drop-down on
	 **HTTP Post**
	 .
	4. Select
	 **Save**
	 .

SMS Governance
------------------

After you purchase the SMS Messages upgrade for Campaigns, you can manage who has the ability to send and configure your SMS messages. This is done by creating specific Groups in Domo and adding Domo users to those groups.

##
 SMS Admin Group

If you want to give a user the ability to create, edit, and send SMS campaigns as well as the ability to configure your outgoing SMS settings, create a new group in Domo called \_SMS \_ADMIN\_ and add the user to this group. Any member of this group has full admin rights to the SMS messaging capabilities in Campaigns.

##
 SMS User Group

If you want to give a user the ability to create, edit, and send SMS Campaigns but not allow them to configure your outgoing SMS settings, create a new new group in Domo called


 \_SMS\_USER\_


 and add the user to this group. Any member of this group can create and deliver an SMS Campaign but won't be able to see or modify your outgoing SMS settings.


 FAQ
-------

*What card types are supported?**


 We support Analyzer Cards, Table Cards, and Sumo Tables.


**Can you include Adobe Illustrator cards in the emails?**


 Adobe Illustrator custom app cards are not currently supported.


**Is the embedded content drillable or interactive?**


 Embedded content is rendered as an image, so it cannot be interactive.


**How do I include images in the email body or PDF attachments?**


 All emails and PDF attachments are rendered on the Campaigns server which means any images you want to include must be publicly accessible.


 There are two ways to include images:


 You can either use a publicly hosted image (<img src="URL\_TO\_YOUR\_IMAGE\_GOES\_HERE" />), or Base64 encode your image (<img src="data:image/png;base64, BASE\_64\_ENCODED\_IMAGE\_DATA\_GOES\_HERE" />).


**Can Filters be shown/used via the emails being sent out?**


 Yes, Filters can be set on any dimension on the cards that are embedded in the message or attachment.


**What level of customization does the app allow for? Can I whitelabel the emails?**


 The Campaigns app supports anything you can do with HTML. There is a Domo watermark that is rendered on every card that is coming from Domo. If you're interested in whitelabeling, contact your CSM.


**I am getting an error that a Campaign won't be delivered because all of my data has been filtered out.  Can I override this error so I can send out a Campaign with a blank card?**


 Yes.  Go to the
 **Settings**
 for the campaign and check the box to
 **Disable strict no data checking**
 . This allows the campaign to be delivered even when all of the data or content has been filtered out.


**Can I send a story-based dashboard like I can today via the Report Scheduler?**


 Unfortunately not.  You must manually recreate the story dashboard in Campaigns.


**Can I send an SMS to a phone number outside of the US or Canada?**


 If you are using Domo's Twilio account and short code, you can only send SMS messages to phone numbers within the US and Canada.  If you want to send messages to phone numbers in other countries, you must sign up for and use your own Twilio account that is configured for use in that country.

*Note:**
 Due to potential issues receiving SMS messages from another country, Twilio recommends only sending SMS messages from within the same country.  For more information see the following articles from Twilio:

Not Receiving Incoming SMS and MMS Messages on Twilio Phone Number

and

Can US and Canadian Twilio phone numbers receive international SMS messages?

