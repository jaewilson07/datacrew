

Intro
-------

Outreach is a sales communication platform that makes your team's communication workflows faster and reveals the performance insights that make them more effective at selling. To learn more about the Outreach API, visit their page (

https://www.outreach.io/product/platform#api

).


 You connect to your Outreach account in the Data Center. This topic discusses the fields and menus that are specific to the Outreach connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Outreach account and create a DataSet, you must have the username and password associated with your Outreach account.


 Connecting to Your Outreach Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Outreach Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Outreach connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Outreach accounts in Domo) to open the Outreach OAuth screen where you can enter your Outreach username and password. Once you have entered valid Outreach credentials, you can use the same account any time you go to create a new Outreach DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Outreach when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Outreach.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Outreach report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |

Retrieves details about accounts used to categorize prospects.

|
|
 Audits
  |

Retrieves details about audit events that happen during the day. Things like login, plugin mapping changes, etc.

|
|
 Call Dispositions
  |

Details about call dispositions used to categorize calls.

|
|
 Call Purposes
  |

Details about call purposes used to categorize calls.

|
|
 Calls
  |

Retrieves details about inbound and outbound calls.

|
|
 Content Category Membership
  |

Retrieves details about content category membership. Use this report to map content to a content category.

|
|
 Content Category Ownership
  |

Retrieves details about content category ownership. use this report to map content to content owners.

|
|
 Content Category
  |

Retrieves details about content categories.

|
|
 Custom Duties
  |

Retrieves details about custom duties, which are freeform user-specified roles or job duties played by a user in their organization.

|
|
 Duty
  |

Retrieves details about duties

|
|
 Email Address
  |

Retrieves details about prospect's email addresses.

|
|
 Event
  |

Retrieves details about application events.

|
|
 Favorite
  |

Retrieves details about favorites.

|
|
 Mail Alias
  |

Retrieves details about mail aliases.

|
|
 Mailbox
  |

Retrieves details about mailboxes.

|
|
 Mailings
  |

Retrieves details about emails.

|
|
 Messenger Conversation
  |

Retrieves details about messenger conversations.

|
|
 Messenger Message
  |

Retrieves details about messenger messages.

|
|
 Opportunities
  |

Retrieves details about opportunities.

|
|
 Opportunity Prospect Role
  |

Retrieves details about opportunity prospect roles.

|
|
 Opportunity Stage
  |

Retrieves details about opportunity stages.

|
|
 Personas
  |

Retrieves details about personas used to categorize prospects.

|
|
 Phone Number
  |

Retrieves details about prospect's phone numbers.

|
|
 Profile
  |

Retrieves details about profiles.

|
|
 Prospects
  |

Retrieves details about prospects associated with a logged in user.

|
|
 Recipient
  |

Retrieves details about recipients.

|
|
 Role
  |

Retrieves details about roles, which are where an individual falls within the organizational structure.

|
|
 Rulesets
  |

Retrieves details about rulesets applied to sequences.

|
|
 Sequence States
  |

Retrieves details about sequence states for a prospect

|
|
 sequence Steps
  |

Retrieves details about steps in sequences

|
|
 Sequence Template
  |

Retrieves details about sequence templates.

|
|
 Sequences
  |

Retrieves details about sequences.

|
|
 Snippet
  |

Retrieves details about snippets, a piece of email to be reused in multiple messages.

|
|
 Stages
  |

Retrieves details about stages used to categorize prospects.

|
|
 Task Priority
  |

Retrieves details about priorities used to categorize tasks.

|
|
 Tasks
  |

Retrieves details about tasks.

|
|
 Team
  |

Retrieves details about teams.

|
|
 Template
  |

Retrieves details about email templates.

|
|
 Users
  |

Retrieves details about users.

|

|
|
 Outcome
  |
 Select whether you want to retrieve all outcomes, only answered outcomes or only non-answered outcomes.
  |
|
 Mailing Type
  |
 Select whether to retrieve data for all mailing types or only a specific type (campaign, sequence, or single).
  |
|
 Action
  |
 Select whether to retrieve data for all task action types or only a specific type (action items, calls, emails, or in-person).
  |
|
 State
  |
 Select the task state you want to retrieve data for.
  |
|
 Type
  |
 Select whether to retrieve data for all task types or only a specific type (follow-up, manual, no-reply, open sequence, call sequence, email sequence, task sequence, or touch).
  |
|
 Include Email Body?
  |
 Select
 **True**
 to include the email body in your report data.
  |
|
 Date Filter
  |
 Select whether to filter dates based on the creation date or the date when updates were last made.
  |
|
 Duration
  |
 Select whether you want to pull data for a single date (e.g. January 23) or a date range (e.g. January 23-31).
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today. If you choose
 **Specific**
 , the report will always pull data for the selected date whenever it runs. If you choose
 **Relative**
 , the report will pull data for the entered number of back days whenever it runs. For example, if you selected
 **Relative**
 and entered

7

for the number of days back, each time the report ran it would pull data for the last 7 days.
  |
|
 Specific Date
  |
 Select the specific date you want to pull data for.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report. The report will pull data for this number of past days whenever it runs. For example, if you entered

7

here, each time the report ran it would pull data for the last 7 days.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


####
 What version of the Outreach API does this connector use?

This connector uses version 2 of the Outreach API (

https://api.outreach.io/api/v2

).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Accounts
  |
 /accounts
  |
|
 Audits
  |
 /audits
  |
|
 Call Dispositions
  |
 /callDispositions
  |
|
 Call Purposes
  |
 /callPurposes
  |
|
 Calls
  |
 /calls
  |
|
 Content Category Membership
  |
 /contentCategoryMemberships
  |
|
 Content Category Ownership
  |
 /contentCategoryOwnerships
  |
|
 Content Category
  |
 /contentCategories
  |
|
 Custom Duties
  |
 /customDuties
  |
|
 Duty
  |
 /duties
  |
|
 Email Address
  |
 /emailAddresses
  |
|
 Event
  |
 /events
  |
|
 Favorite
  |
 /favorites
  |
|
 Mail Alias
  |
 /mailAliases
  |
|
 Mailbox
  |
 /mailboxes
  |
|
 Mailings
  |
 /mailings
  |
|
 Messenger Conversation
  |
 /messengerConversations
  |
|
 Messenger Message
  |
 /messengerMessages
  |
|
 Opportunities
  |
 /opportunities
  |
|
 Opportunity Prospect Role
  |
 /opportunityProspectRoles
  |
|
 Opportunity Stage
  |
 /opportunityStages
  |
|
 Personas
  |
 /personas
  |
|
 Phone Number
  |
 /phoneNumbers
  |
|
 Profile
  |
 /profiles
  |
|
 Prospects
  |
 /prospects
  |
|
 Recipient
  |
 /recipients
  |
|
 Role
  |
 /roles
  |
|
 Rulesets
  |
 /rulesets
  |
|
 Sequence States
  |
 /sequenceStates
  |
|
 Sequence Steps
  |
 /sequenceSteps
  |
|
 Sequence Template
  |
 /sequenceTemplates
  |
|
 Sequences
  |
 /sequences
  |
|
 Snippet
  |
 /snippets
  |
|
 Stages
  |
 /stages
  |
|
 Task Priority
  |
 /taskPriorities
  |
|
 Tasks
  |
 /tasks
  |
|
 Team
  |
 /teams
  |
|
 Template
  |
 /templates
  |
|
 Users
  |
 /users
  |


####
 What kind of credentials do I need to power up this connector?

You need the email address and password of your Outreach account.

###
 Why am I getting an error after entering the correct credentials in the OAuth login window?

Outreach has previously had a known issue with their OAuth popup window. This requires you to login into Outreach in a separate tab, then create a Domo Outreach account. For the step-by-step instructions for obtaining a client id, see Outreach

OAuth Documentation.

Redirect URL:

https://oauth.domo.com/api/data/v1/oauth/providers/outreach

.

###
 How do I know my Outreach account credentials are secure?

Domo's Outreach connector uses OAuth, which authenticates the account without Domo ever having access to your Outreach account credentials.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

The Outreach API is rate limited on a per-user basis, with a fixed limit of 5,000 requests per one hour period.

###
 When I click 'Add Account', why am I getting automatically validated without needing to enter credentials?

If you are already logged into Outreach when you connect to Domo, you are authenticated automatically as you click Add Account. If you want to connect to an account that is different from the one you are logged into, you must first log out of Outreach.

