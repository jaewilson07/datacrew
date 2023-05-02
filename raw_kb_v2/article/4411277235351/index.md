

Intro
-------

Cvent, Inc. is a publicly held software-as-a-service company that specializes in meetings, events, and hospitality management technology. Use Domo's Cvent REST Connector to retrieve data for various insights and metrics about attendees, contacts, events, surveys, and so on.


 Experience enhanced performance and make faster decisions by integrating Cvent data with your existing CRM and Marketing Automation systems. By combining your Cvent data with Domo’s leading business intelligence platform, you’ll develop comprehensive strategies to fully optimize your business. Within minutes you’ll be able to create customized reports for your most important KPIs. To learn more the API,

visit Cvent's website.

You connect to your Cvent account in the Data Center. This topic discusses the fields and menus that are specific to the Cvent connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to analyze and report conference metrics to learn from and optimize these large meetings.
  |
|
**Primary Metrics**
 | * How many people signed up for an event?
* How many people actually showed up?
* How many total people attended each meeting, survey, event?
* What survey feedback are we getting?
 |
|
**Primary Company Roles**
 |
 It varies based on the organization, but most companies will want C-level roles to have access to the data at some point.
  |
|
**Average Implementation Time**
 |
 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Cvent account and create a DataSet, you must have the following:

 Your Cvent account name
* Your client ID and client secret associated with your Cvent app
* You also need to select the region for your Cvent instance

Before you connect to Cvent in Domo, you need to whitelist the appropriate IP addresses for your region. You can access the list of IP addresses, by region, in

Whitelisting IP Addresses for Connectors & Federated Adapters.

Connecting to Your Cvent Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Cvent REST Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Cvent account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter the name for your Cvent Account.
  |
|
 Region
  |
 Select the region for your Cvent instance.
  |
|
 Client ID
  |
 Enter the client ID from your Cvent app.
  |
|
 Client Secret
  |
 Enter the client secret from your Cvent app.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Cvent credentials, you can use the same account any time you go to create a new Cvent REST DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a Cvent report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Cvent REST report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Appointments
  |
 Retrieves a list of Appointments.
  |
|
 Appointment Attendees
  |
 Retrieves information of attendees of either events or appointment events.
  |
|
 Appointment Meeting Interests
  |
 Retrieves information of appointment attendees' preferences in meeting with another organization or individual.
  |
|
 Attendees
  |
 Retrieves attendees for events associated with your account.
  |
|
 Attendance Duration
  |
 Retrieves attendance duration.
  |
|
 Available Appointment Times
  |
 Retrieves available appointment times associated with events
  |
|
 Attendee Activities
  |
 Retrieves information about your customers activities for an event.
  |
|
 Attendee Insights
  |
 Retrieves attendee insights for events associated with your account.
  |
|
 Booth Staff
  |
 Retrieves booth staff associated with the exhibitor for an event.
  |
|
 Budget Items
  |
 Retrieves a paginated list of budget items for event associated to the account of the access token.
  |
|
 Budget Totals
  |
 Retrieves a paginated list of budget totals for event associated to the account of the access token.
  |
|
 Contacts
  |
 Retrieves contacts associated with your account.
  |
|
 Contact Groups
  |
 Retrieves contact group associated with your account.
  |
|
 Events
  |
 Retrieves information about your events.
  |
|
 Event Surveys
  |
 Retrieves surveys associated with an event.
  |
|
 Event Survey Questions
  |
 Retrieves questions associated with event survey.
  |
|
 Event Survey Responses
  |
 Retrieves responses associated with event survey.
  |
|
 E-Literature Requests
  |
 Retrieves e-literature requests for an event.
  |
|
 Event Features
  |
 Retrieves event features associated with an event.
  |
|
 Exhibitor
  |
 Retrieves exhibitors for an event.
  |
|
 Exhibitor Admins
  |
 Retrieves admins associated with exhibitors for an event.
  |
|
 List App Events
  |
 Retrieves a paginated list of Appointment Events.
  |
|
 List Budget Items
  |
 Retrieves a paginated list of budget items for events associated with the account of the access token.
  |
|
 List Budget Totals
  |
 Retrieves a paginated list of budget totals for events associated with the account of the access token.
  |
|
 List Ext Activities Metadata
  |
 Retrieves a paginated list of external attendee activities metadata.
  |
|
 List All Event Responses
  |
 Retrieves a paginated list of event survey responses for all events and surveys.
  |
|
 List Exhibitor Questions
  |
 Retrieves a list of exhibitor questions for a given event id.
  |
|
 List Exhibitor Answers
  |
 Retrieves a list of answers to exhibitor questions for a given exhibitor id.
  |
|
 List Exhibitor's Categories
  |
 Retrieves a paginated list of exhibitor-categories assigned to the provided exhibitor Id.
  |
|
 Leads
  |
 Retrieves leads gathered for an event.
  |
|
 Meeting Requests
  |
 Retrieves information about the Meeting Requests.
  |
|
 Meeting Request Forms
  |
 Retrieves information about the Meeting Request Forms.
  |
|
 Orders
  |
 Retrieves orders associated with an event.
  |
|
 Order Items
  |
 Retrieves order items associated with an event.
  |
|
 Qualifying Answers
  |
 Retrieves answers provided by leads to qualifying questions.
  |
|
 Qualifying Questions
  |
 Retrieves qualifying questions which are asked to identify the lead.
  |
|
 Score
  |
 Retrieves engagement scores provided by attendees for events associated with your account.
  |
|
 Sessions
  |
 Retrieves sessions associated with events.
  |
|
 Session Attendance
  |
 Retrieves session attendance associated with your events.
  |
|
 Session Enrollments
  |
 Retrieve enrollments for sessions associated with your events.
  |
|
 Session Speakers
  |
 Retrieve information about speakers assigned to the provided session ID.
  |
|
 Speakers
  |
 Retrieves speakers associated with your events.
  |
|
 Sponsorship Levels
  |
 Retrieves sponsorship levels of exhibitors for your event.
  |
|
 Standard Surveys
  |
 Retrieves the details for the standard survey associated with your account.
  |
|
 Standard Survey Questions
  |
 Retrieves questions asked in standard survey.
  |
|
 Standard Survey Respondents
  |
 Retrieves standard survey respondents.
  |
|
 Standard Survey Responses
  |
 Retrieves responses to the standard surveys.
  |
|
 Stats
  |
 Retrieves a quick overview of attendee insight scores.
  |
|
 Transactions
  |
 Retrieves Transactions associated with an event.
  |
|
 Transaction Items
  |
 Retrieves transaction items associated with an event.
  |
|
 Webcasts
  |
 Retrieves information about webcasts associated with your event.
  |

|
|

Event Survey Selection Criteria

|

Select whether you want to retrieve data for all event surveys or selected event surveys.

|
|

Exclude Contacts

|

Select this checkbox if you want to exclude the contact information of the attendee.

For example, if an attendee record includes contact information, the Connector will exclude that contact information in your Attendees report.

|
|
 Event Selection Criteria
  |

Select whether you want to retrieve data for all events or selected events.

|
|
 Events
  |

Select the events.

|
|
 Event Subreports
  |
 Select the sub reports you want to expand in the data.
  |
|
 Survey Selection Criteria
  |

Select whether you want to retrieve data for all surveys or selected surveys.

|
|
 Standard Surveys
  |

Select the standard surveys.

|
|
 Event Surveys
  |
 Select the event surveys.
  |
|
 Skip Failing Records
  |

Select this checkbox if you want to skip the failing records.


 For example, select this checkbox in case a selected survey or event has been deleted.

|
|
 Meeting Requests from Selection Criteria
  |
 Select whether you want to retrieve data for all meeting requests form ids or selected meeting requests form ids.
  |
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ********End Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Start Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Check your credentials to make sure you have the proper access rights.

##
 FAQs


####
 What endpoint is the base URL for this connector?

The base URL for the Cvent REST connector is

https://api-.cvent.com/ea/

.

###
 Which endpoint does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Appointments
  |
 /appointment
  |
|
 Appointment Attendees
  |
 /appointment-attendees
  |
|
 Appointment Meeting Interests
  |
 /appointment-meeting-interests
  |
|
 Attendees
  |
 /attendees
  |
|
 Attendee Activities
  |
 /attendees/activities
  |
|
 Attendee Insights
  |
 /attendee-insights
  |
|
 Booth Staff
  |
 /events/{exibitorId}/exhibitors/{eventId}/booth-staff
  |
|
 Contacts
  |
 /contacts
  |
|
 Events
  |
 /events
  |
|
 Event Surveys
  |
 /events/{EventId}/surveys
  |
|
 Event Survey Questions
  |
 /events/{eventId}/surveys/{surveyId}/questions
  |
|
 Event Survey Responses
  |
 /events/{eventId}/surveys/{surveyId}/responses
  |
|
 Exibitor
  |
 /events/{eventId}/exhibitors
  |
|
 Exibitor Admins
  |
 /events/{exibitorId}/exhibitors/{eventId}/admins
  |
|
 Leads
  |
 /leads
  |
|
 Meeting Requests
  |
 /meeting-request-forms/{MeetingRequestFormId}/requests
  |
|
 Meeting Request Forms
  |
 /meeting-request-forms
  |
|
 Qualifying Answers
  |
 /events/{eventId}/exhibitors/{exbitorId}/leads/{leadId}/answers
  |
|
 Qualifying Questions
  |
 /events/{eventId}/exhibitors/{exhibitorId}/questions
  |
|
 Score
  |
 /attendee-insights/{attendeeInsightId}/scores
  |
|
 Session
  |
 /sessions
  |
|
 Session Attendance
  |
 /sessions/attendance
  |
|
 Session Enrollment
  |
 /sessions/enrollment
  |
|
 Session Speakers
  |
 /sessions/{eventIds}/speakers
  |
|
 Speaker
  |
 /speakers
  |
|
 Sponsership Levels
  |
 /events/{eventId}/sponsorship-levels
  |
|
 Standard Surveys
  |
 /standard-surveys
  |
|
 Standard Survey Questions
  |
 /standard-surveys/{StandardSurveyId}s/questions
  |
|
 Standard Survey Respondents
  |
 /standard-surveys/{StandardSurveyId}s/respondents
  |
|
 Standard Survey Responses
  |
 /standard-surveys/responses
  |
|
 Stats
  |
 /attendee-insights/{AttendeeInsightId}/stats
  |
|
 Webcasts
  |
 /webcasts
  |


####
 What kind of credentials do I need to power up this connector?

You need your Cvent account name, and the client ID and client secret associated with your Cvent app. You also need to select the region for your Cvent instance.

###
 Can I use the same account to create multiple datasets?

Yes

###
 How often can the data be updated?

As often as needed.

###
 Do I need to whitelist any IP addresses?

Before you connect to Cvent in Domo, you should whitelist the following IP addresses to your Cvent account:

 54.208.95.237
* 54.208.94.194
* 54.208.87.122
* 54.208.95.167
* 50.207.240.162
* 50.207.241.62
* 34.198.214.100


