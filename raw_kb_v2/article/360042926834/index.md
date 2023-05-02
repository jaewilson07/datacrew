

Intro
-------

Infusionsoft automates your small business sales and marketing, while combining your CRM, email marketing, lead capture and e-commerce in one place. You can use this connector to automatically pull data from your Infusionsoft account anytime changes are made within your subscribed columns.


 Because this connector is webhook-based, DataSets created using this connector update automatically when new data is sent to your Infusionsoft account. You do
 *not*
 need to worry about scheduling updates when using this connector.


 You connect to your Infusionsoft account in the Data Center. This topic discusses the fields and menus that are specific to the Infusionsoft REST Hook connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 For more information about webhooks in Infusionsoft, see

https://developer.infusionsoft.com/r...documentation/

.


 Prerequisites
---------------

To connect to your Infusionsoft account and create a DataSet, you must have the following:

 The email address associated with your Infusionsoft account
* Your Infusionsoft password


 Connecting to Your Infusionsoft Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Infusionsoft REST Hook Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

When you click
 **Add account**
 in this pane, you are taken to the Infusionsoft login screen, where you can log into your Infusionsoft account using your Infusionsoft credentials (the email address associated with your Infusionsoft account as well as your Infusionsoft password).

Once you have entered valid credentials for your Infusionsoft app and account, you can use the same account any time you go to create a new Infusionsoft Webhook DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane, you configure webhook subscriptions for your Infusionsoft app by selecting the columns you want to subscribe to then clicking a button to register the subscriptions.


**To configure webhook subscriptions for your app,**

. In the Details pane in Domo, check the boxes for all of the columns you want to subscribe to.


 When changes are made to any of your subscribed columns in Infusionsoft, your DataSet will automatically update.

*Note:**
 Ignore the
 **Webhook URL**
 field. You do
 *not*
 need to paste this URL in Infusionsoft for the connector to work.
2. Click the green button under "Register Subscriptions."
3. (Conditional) If you want new data in your DataSet to be replaced instead of simply added onto, click
 **Change update settings**
 then choose
 **Replace.**
4. Click
 **Save**
 .

FAQs
------


#####
 How often can the data be updated?

The Infusionsoft Webhook connector updates automatically as Infusionsoft receives data.

####
 Are there any API limits I should be aware of?

No.

####
 What's the difference between this connector and the Infusionsoft connector?

The Infusionsoft Webhook connector automatically updates as Infusionsoft receives more data and does not update on a set schedule. The Infusionsoft connector, on the other hand, is an API-based connector in which you choose a report and set an update schedule.

####
 How do I know my Infusionsoft credentials are secure?

The login process uses the OAuth process, so your Infusionsoft credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.

####
 Can I use the same account to create multiple DataSets?

Yes.

####
 When I click
 **Connect**
 , why am I getting automatically validated without needing to enter credentials?

If you are already logged into Infusionsoft when you connect to Domo, you are authenticated automatically as you click
 **Connect**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Infusionsoft.

