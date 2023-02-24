---
title: Cvent Connector
url: https://domo-support.domo.com/s/article/360042930554
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930554](https://domo-support.domo.com/s/article/360042930554)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003397
views: 1,122
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Cvent, Inc. is a publicly held software-as-a-service company that specializes in meetings management technology. To learn more about the Cvent API, visit their page ([http://www.cvent.com/en/event-manage...grations.shtml](http://www.cvent.com/en/event-management-software/cvent-integrations.shtml "http://www.cvent.com/en/event-management-software/cvent-integrations.shtml")).


You connect to your Cvent account in the Data Center. This topic discusses the fields and menus that are specific to the Cvent connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


 




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to analyze and report conference metrics to learn from and optimize these large meetings. |
| **Primary Metrics** | * How many people signed up for a meeting?
* How many people actually showed up?
* How many total people attended each meeting?
* What survey feedback are we getting?
 |
| **Primary Company Roles** | It varies based on the organization, but most companies will want C-level roles to have access to the data at some point. |
| **Average Implementation Time** | 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Prerequisites
-------------


To connect to your Cvent account and create a DataSet, you must have the following:


* Your Cvent account number. You can find this in your Cvent Administration Profile page.
* Your Cvent API username and password. You can request these credentials from Cvent.


Before you connect to Cvent in Domo, you should whitelist the following IP addresses to your Cvent account:


`54.208.95.237`


`54.208.87.122`


`54.208.95.167`


`54.208.94.194`


`50.207.240.162`


`50.207.241.62`


`52.18.90.222`


`52.62.103.83`


`34.198.214.100`


 


Connecting to Your Cvent Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Cvent Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Cvent account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Cvent Account Number | Enter your Cvent account number. |
| Cvent API Username | Enter your Cvent API username. |
| Cvent API Password | Enter your Cvent API password. |
| Cvent Environment | Select respective Environment from the dropdown. i.e. Production Account, Sandbox Account and EU Production Account. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Cvent credentials, you can use the same account any time you go to create a new Cvent DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu from which you select a Cvent report.




| Menu | Description |
| --- | --- |
| Report | Select the Cvent report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Appointment | Returns a list of appointments for the authenticated user's account. |
| Appointment Attendee | Returns a list of appointment attendees for the authenticated user's account. |
| Approver | Returns a list of approvers for the authenticated user's account. |
| Budget | Returns budget details for the authenticated user's account, such as tax type, gratuity type, etc. |
| Budget Item | Returns a list of budget items for the authenticated user's account. |
| Campaign | Returns a list of campaigns for the authenticated user's account. |
| Contacts | Returns a list of contacts for the authenticated user's account. |
| Contacts Custom Details | Returns a list of contact custom details for the authenticated user's account. |
| Contact Group | Returns a list of contact groups for the authenticated user's account. |
| Conversion Rate | Returns conversion rate information for the authenticated user's account. |
| eMarketing Email History | Returns the eMarketing email history for the authenticated user's account. |
| Event |  Returns a list of events for the authenticated user's account. |
| Event Cards | Returns a list of event cards for the authenticated user's account. |
| Event Details | Returns event details for the authenticated user's account. |
| Event Email History | Returns the event email history for the authenticated user's account. |
| Event Question | Returns event questions for the authenticated user's account. |
| Guest | Returns a list of guests for the authenticated user's account. |
| Invitee | Returns a list of invitees for the authenticated user's account. |
| Meeting Request | Returns a list of meeting requests for the authenticated user's account. |
| Meeting Request Custom Details | Returns meeting request custom details for the authenticated user's account. |
| Meeting Request Sleeping Room Details | Returns meeting request sleeping room details for the authenticated user's account. |
| Meeting Request User | Returns a list of meeting request users for the authenticated user's account. |
| Meeting Request Survey | Returns a list of meeting request surveys for the authenticated user's account. |
| Proposal | Returns a list of proposals for the authenticated user's account. |
| Proposal Sleeping Room | Returns a list of proposal sleeping rooms for the authenticated user's account. |
| Proposal Estimated Costs | Returns a list of guests for the authenticated user's account. |
| Rate History | Returns the rate history for the authenticated user's account. |
| Registration | Returns registration information for the authenticated user's account. |
| Registration with Order Details | Returns registration information with order details for the authenticated user's account. |
| Registration with Survey Details | Returns registration with survey details for the authenticated user's account. |
| Respondent | Returns a list of respondents for the authenticated user's account. |
| Response | Returns a list of responses for the authenticated user's account. |
| RFP | Returns RFP details for the authenticated user's account. |
| RFP Meeting Room Details | Returns RFP meeting room details for the authenticated user's account. |
| RFP Question Details | Returns RFP question details for the authenticated user's account. |
| RFP Sleeping Room Details | Returns RFP sleeping room details for the authenticated user's account. |
| RFP Supplier Details | Returns RFP supplier details for the authenticated user's account. |
| Session | Returns session details for the authenticated user's account. |
| Speaker | Returns a list of speakers for the authenticated user's account. |
| Supplier | Returns a list of suppliers for the authenticated user's account. |
| Supplier Proposal | Returns a list of supplier proposals for the authenticated user's account. |
| Supplier RFP | Returns supplier RFP details for the authenticated user's account. |
| Survey | Returns a list of surveys for the authenticated user's account. |
| Survey Email History | Returns the survey email history for the authenticated user's account. |
| Survey Question | Returns a list of survey questions for the authenticated user's account. |
| Table Assignment | Returns a list of table assignments for the authenticated user's account. |
| Transaction | Returns a list of transactions for the authenticated user's account. |
| User | Returns a list of users for the authenticated user's account. |
| User Group | Returns a list of user groups for the authenticated user's account. |
| User Role | Returns a list of user roles for the authenticated user's account. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


Check your credentials to make sure you have the proper access rights.

