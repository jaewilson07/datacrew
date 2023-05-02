

Intro
-------

OfficeSpace is more than just a workplace management software, it’s a search engine for your workplace. OfficeSpace offers a platform for managing facilities of every size. It is designed to help you find simple and quick solutions for your complex workplace challenges. It also reduces real estate costs. Use Domo's OfficeSpace connector to understand and manage your workspace in a simpler, smarter, and easier way. To learn more about OfficeSpace, visit their page

https://www.officespacesoftware.com/technology/integrations

.


 You connect to your OfficeSpace account in the Data Center. This topic discusses the fields and menus that are specific to the OfficeSpace connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your OfficeSpace account and create a DataSet, you must have the following:

 Your OfficeSpace domain name
* Your OfficeSpace API Key

Connecting to Your OfficeSpace Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

OfficeSpace

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain Name
  |
 Enter your OfficeSpace domain name.
  |
|
 API Key
  |
 Enter your OfficeSpace API Key.
  |


 Once you have entered valid

OfficeSpace

credentials, you can use the same account any time you go to create a new

OfficeSpace

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the OfficeSpace report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Bookable Desks
  |
 Retrieves a list of all currently available desks.
  |
|
 Canceled Moves
  |
 Retrieves a list of moves canceled within the date range.
  |
|
 Completed Moves
  |
 Retrieves a list of moves completed within the date range.
  |
|
 Directories
  |
 Retrieves a list of all directories.
  |
|
 Employees
  |
 Retrieves a list of employees.
  |
|
 Floor Attributes
  |
 Retrieves the floor attributes for the given floor ID.
  |
|
 Floors
  |
 Retrieves a list of all floors.
  |
|
 Form Extension
  |
 Retrieves the list of field definitions.
  |
|
 Pending Moves
  |
 Retrieves a list of all pending moves.
  |
|
 Room Attributes
  |
 Retrieves a list of attributes in a room.
  |
|
 Rooms
  |
 Retrieves a list of all rooms.
  |
|
 Seat Assets
  |
 Retrieves a list of assets on a seat.
  |
|
 Seat Availabilities
  |
 Retrieves all seat availability.
  |
|
 Seats
  |
 Retrieves a list of all seats.
  |
|
 Site Attributes
  |
 Retrieves a list of attributes on a site.
  |
|
 Sites
  |
 Retrieves a list of all sites.
  |
|
 Users
  |
 Retrieves a list of all users.
  |

|
|
 Filter Data By Date
  |
 Select this check box if you would like to filter the data for the selected duration.
  |
|
 Floor ID
  |
 Select the floor ID to fetch the data for.
  |
|
 Room ID
  |
 Select the room ID to fetch the data for.
  |
|
 Seat ID
  |
 Select the seat ID to fetch the data for.
  |
|
 Site ID
  |
 Select the site ID to fetch the data for.
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
 ****Days Back****
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
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
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

