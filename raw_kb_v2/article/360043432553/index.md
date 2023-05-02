

Intro
-------

Drchrono provides a patient care platform and app for doctors and patients that makes electronic health records (EHR) available digitally and provides practice management and medical billing services. To learn more about the Drchrono API, visit their page (

https://www.drchrono.com/api/

).


 You connect to your Drchrono account in the Data Center. This topic discusses the fields and menus that are specific to the Drchrono connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Drchrono account and create a DataSet, you must have your Drchrono username and password.


 Connecting to Your Drchrono Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Drchrono Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Drchrono connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Drchrono accounts in Domo) to open the Drchrono OAuth screen where you can enter your Drchrono username and password. Once you have entered valid Drchrono credentials, you can use the same account any time you go to create a new Drchrono DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Drchrono when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Drchrono.


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
 Select the Drchrono report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Appointments
  |
 Retrieves a list of appointments.
  |
|
 Appointment Profiles
  |
 Retrieves appointment profile data.
  |
|
 Doctors
  |
 Retrieves a list of doctors.
  |
|
 Offices
  |
 Retrieves a list of offices.
  |
|
 Patients Summary
  |
 Retrieves a summary of patient data.
  |
|
 Transactions
  |
 Retrieves transaction data.
  |
|
 Users
  |
 Retrieves a list of users.
  |

|
|
 Start Days
  |
 Enter the number of past days for which you want your report to begin pulling data. Enter

0

to return data for today. Pair with
 **End Days**
 to create a range of days of data. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time the report ran it would pull data for the past 14 days up until the last 7 days.
  |
|
 End Days
  |
 Enter the number of past days for which you want your report to stop pulling data. Enter

0

to return data for today. Pair with
 **Start Days**
 to create a range of days of data. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time the report ran it would pull data for the past 14 days up until the last 7 days.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

