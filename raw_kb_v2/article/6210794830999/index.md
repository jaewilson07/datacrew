

Intro
-------

Brainshark's leading platform for enablement and readiness gives you the tools to prepare client-facing teams to perform at the highest level. It helps organizations create dynamic content used for sales training, onboarding, and coaching.


 Get the real time updates about your coaching and learning performance metrics with Domo's leading business intelligence platform. By combining your Brainshark data with Domo, you'll be able to develop comprehensive strategies to fully optimize your business across all platforms. To learn more about the Brainshark API, visit their page (

https://www.brainshark.com/developer/#theApi

).


 The Brainshark Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Brainshark account in the Data Center. This topic discusses the fields and menus that are specific to the Brainshark Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Brainshark account and create a DataSet, you must have the following:

 The username and password associated with your Brainshark account
* The main directory used to log into the Brainshark Sharkive

Connecting to Your Brainshark Account
---------------------------------------

This section enumerates the options in the Credentials and Details panes in the Brainshark Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Brainshark account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username associated with your Brainshark account.
  |
|
 Password
  |
 Enter the password associated with your Brainshark account.
  |
|
 Login Directory
  |
 Enter the main directory name used to log into the Brainshark Sharkive.
  |

Once you have entered valid Brainshark credentials, you can use the same account any time you go to create a new Brainshark DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the Brainshark report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Administration User Bulk Download
  |
 Return a list of user bulk downloads
  |
|
 Administration Users
  |
 Return a list of users
  |
|
 Administration Users By Group
  |
 Return a list of users by group
  |
|
 Coaching Activity Status Report
  |
 Return a list of activity status reports
  |
|
 Coaching Challenge Details Report
  |
 Return a list of challenge details reports
  |
|
 Coaching Challenge Responses Report
  |
 Return a list of challenge responses reports
  |
|
 Coaching Challenge Summary Report
  |
 Return a list of challenge summary reports
  |
|
 Coaching Participant Summary Report
  |
 Return a list of participant summary reports
  |
|
 Coaching Reviewer Summary Report
  |
 Return a list of reviewer summary reports.
  |
|
 Coaching Summary
  |
 Return a list of summaries.
  |
|
 Rapid Learning Activity
  |
 Return a list of learning activities.
  |
|
 Rapid Learning Content
  |
 Return a list of learning contents.
  |
|
 Rapid Learning Course
  |
 Return a list of courses.
  |
|
 Rapid Learning Course Details With question Results
  |
 Return a list of course details with question results.
  |
|
 Rapid Learning Course Enrollment
  |
 Return a list of course enrollments.
  |
|
 Rapid Learning Curriculum
  |
 Return a list of curriculums.
  |
|
 Rapid Learning Curriculum Enrollment
  |
 Return a list of curriculums enrollments.
  |
|
 Rapid Learning Curriculum Summary
  |
 Return a list of curriculum summaries.
  |
|
 Rapid Learning Curriculum Summary By Group
  |
 Return a list of curriculum summary by groups.
  |
|
 Reporting Grade Book
  |
 Return a list of grade books.
  |
|
 Reporting Question Inventory
  |
 Return a list of question inventories.
  |
|
 Reporting Question Response Details
  |
 Return a list of Reporting question response details.
  |
|
 Reporting Viewer Transcript
  |
 Return a list of viewer transcripts.
  |
|
 Reporting Viewing Details By Viewer
  |
 Return a list of viewing details by viewers.
  |
|
 Reporting Viewing Details With Question Results
  |
 Return a list of viewing details with question results.
  |
|
 Reporting Viewing Summary By Viewer
  |
 Return a list of viewing summary by viewers.
  |
|
 Reporting Viewing Usage Data
  |
 Return a list of viewing usage data.
  |

|
|
 Group By
  |
 Select whether you want to group by your data by the Created Date or Author.
  |
|
 Show Questions And Answers
  |
 Select True if you want to show the questions and answers; otherwise, select False.
  |
|
 Show Poll Details

|
 Select True if you want to show poll details; otherwise, select False.
  |
|
 Show Survey Details

|
 Select True if you want to show survey details; otherwise, select False.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Which endpoint is the base URL for this connector?

The base URL for the Brainshark connector is

https://www.brainshark.com/Brainshark/Webservices\_Mobile

.

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Administration User Bulk Download
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Administration Users
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Administration Users By Group
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Coaching Activity Status Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{challenge\_id}
  |
|
 Coaching Challenge Details Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{challenge\_id}
  |
|
 Coaching Challenge Responses Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Coaching Challenge Summary Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Coaching Participant Summary Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Coaching Reviewer Summary Report
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Coaching Summary
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Rapid Learning Activity
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Rapid Learning Content
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{Groupby}
  |
|
 Rapid Learning Course
  |
 /course.ashx
  |
|
 Rapid Learning Course Details With question Results<t/d>
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Rapid Learning Course Enrollment
  |
 /courseenrollment.ashx/{sid}&{sky}&{uid}
  |
|
 Rapid Learning Curriculum
  |
 /curriculum.ashx
  |
|
 Rapid Learning Curriculum Enrollment
  |
 /curriculumenrollment.ashx/{sid}&{sky}&{uid}
  |
|
 Rapid Learning Curriculum Summary
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{curriculum\_list}
  |
|
 Rapid Learning Curriculum Summary By Group
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{curriculum\_list}
  |
|
 Reporting Grade Book
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Reporting Question Inventory
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Reporting Question Response Details
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Reporting Viewer Transcript
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}
  |
|
 Reporting Viewing Details By Viewer
  |
 /report.ashx/{sid}&{sky}&{uid}&{path}&{category\_id}
  |
|
 Reporting Viewing Details With Question Results
  |
 /report.ashx/{sid}&{sky}&{uid}&{path
  |
|
 Reporting Viewing Summary By Viewer
  |
 /report.ashx/{sid}&{sky}&{uid}&{path
  |
|
 Reporting Viewing Usage Data
  |
 /report.ashx/{sid}&{sky}&{uid}&{path
  |


####
 What kind of credentials do I need to power up this Connector?

You need the username and password associated with your Brainshark account. You also need to provide the main directory used to log into the Brainshark Sharkive.

###
 Can I use the same account multiple times to create datasets?

Yes

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No

