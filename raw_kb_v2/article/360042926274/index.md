

Intro
-------

You can add a DataSet using a data Connector. A data Connector (similar to an alias or DSN) lets you define connection information to a DataSet. While adding a DataSet using a Connector, you can specify the connection information for the specific data provider. Afterwards when you power up Cards you can use the DataSet by selecting the Connector by name.


 This topic discusses the interface components common to all third-party Connectors. For detailed information about connecting to all of Domo's 500+ public Connectors, see

API Connectors

.


 For information about the Data Center, see

Data Center Layout

.

*Notes:**


* Domo does not store or transmit user passwords, but stores connector account credentials.
* If you experience issues connecting to Connectors, ensure that appropriate IP addresses have been whitelisted. For more information, see

Whitelisting IP Addresses for Connectors

.


**Video - Connectors Overview**


 Adding a DataSet using a Connector
------------------------------------

When you add a DataSet using a Connector, it is stored in Domo where you can use it to power multiple Cards without having to specify connection information to that DataSet in each Card.


 When you add a DataSet, you are automatically assigned as the DataSet owner. For information about changing the owner of a DataSet, see

Changing the Owner of a DataSet

.


 You can access the interface for adding Connector DataSets via the Appstore, the Data Center, or the

menu.


**To add a DataSet using a Connector,**

. Choose one of the following:

* (Conditional) If you want to connect to data via the APPSTORE, do the following:

	1. Select
		 **Appstore**
		 in the toolbar at the top of the screen.
		2. Click the
		 **Search**
		 tab.
		3. Click the
		 **Connector**
		 checkbox under
		 **Capability**
		 .
		4. Use the search bar or page navigation to locate the Connector you want to connect to, then click it to open its details view.
		5. Click
		 **Get the Data**
		 .


		 Alternatively, for some of the most popular Connectors, a
		 **Get the Cards**
		 button is available. This allows you to power up several prebuilt, live Cards based on your own data, without having to configure advanced options. This is a great way to "preview" the Connector to make sure it provides the data you want. If you choose this option, you are asked to select the desired account or input your account information if you haven't created an account for this Connector yet.
	* (Conditional) If you want to connect to data via the DATA CENTER, do the following:

	1. Select
		 **Data**
		 in the toolbar at the top of the screen.
		2. In the
		 **Connect Data**
		 area at the top of the screen, select
		 **Connectors**
		 ,
		 **File**
		 , or
		 **Database**
		 , depending on the connection type.


		 You can use the following table to learn more about these Connector types:


		|
		 Connector Type
		  |
		 Description
		  |
		| --- | --- |
		|
		 Connectors
		  |
		 A Connector for a third-party app in which data is stored in the cloud. Most of Domo's Connectors fall into this category. Examples include Facebook, Salesforce, Adobe Analytics, and so on.
		  |
		|
		 File
		  |
		 A Connector used to pull files into Domo. Examples include Excel, Google Sheets, and Box.
		  |
		|
		 Database
		  |
		 A Connector in which you write a query to pull data from a database into Domo. Examples include MySQL, Amazon Redshift, and MongoDB.
		  |


		 The other two icons in this area denote other non-Connector methods for bringing data into Domo.
		 **Federated**
		 refers to federated DataSets, and
		 **API**
		 refers to Domo's development environment, where you can build your own custom Connectors. For more information on Federated DataSets, see

	 Connecting to Data Using Workbench 5

	 .
		3. Select the Connector type you want.
		4. Click the desired Connector tile.

	**Note:**
		 Popular Connectors are marked with a Preferred tag. This is also used when there are several different Connectors to the same data, such as Facebook. The most commonly used option will display the Preferred tag.
	* (Conditional) If you want to connect to data via the

 menu, do the following:

	1. Select

	**> Data**
		 .
		2. Select
		 **Connectors**
		 ,
		 **File**
		 , or
		 **Database**
		 .


		 For more information about these Connector types, see the above table.
		3. Click the desired Connector tile.
2. Specify the settings in each section.


 Refer to the general information included in this topic and to the help in the specific data Connector.


 For more information about configuring specific data Connectors, see Configuring Each Connector.


 As applicable, click
 **Connect**
 ,
 **Next**
 , or
 **Save**
 and open the next section.
3. When finished, click
 **Save**
 .


 You are taken to the details view for the DataSet in the Data Center. For more information about this view, see

Data Center Layout

.

Connector settings
--------------------

All Connector types in Domo have different options for setting up a DataSet. Most Connectors require you to enter login credentials, an API key, a server URL, or a combination of these to access the Connector. If you cannot connect after entering your credentials, you have most likely entered incorrect credentials. For information about finding credentials, see the documentation for your specific Connector. You can find this under

API Connectors

.


 After you connect, you are usually asked for information about the data you want to pull and the desired format. Most Connectors have two or more associated report types. In addition, many Connectors request a timeframe for the data to be retrieved. You may also be asked to submit a query for retrieving data. For example, when connecting to JIRA you can enter a JQL query to retrieve data for a specified search filter.


 For most Connectors, you are also asked to schedule data updates. You can use basic scheduling, in which you select a single, specific unit of time (such as "Every hour") and enter the time of day when the update is to occur, if required. Or you can use advanced scheduling, in which you can select multiple update times.


 The information in this section is general and may or may not be required for a certain Connector. For specific requirements for Connectors, see

API Connectors

.

##
 Credentials

If required, specify the credentials for connecting to the data provider. If available, you can select an account or create an account to use in connecting. For more information about accounts, see

Managing User Accounts for Connectors

.


 Some Connectors, such as Google Drive, use OAuth to connect. This means that you only need to enter your credentials once for a given account. In the future, when you go to create a DataSet using this Connector account, your credentials are passed in automatically. Other Connectors do not use OAuth, so you must enter your credentials each time you create a DataSet using this Connector account.

##
 Details

Most Connectors include a
 **Details**
 settings category. Here you usually specify options like the report to run, the timeframe for the data, a data query for pulling specific information from a database, and so on. If a query is required, the type of query you need to use depends on the Connector type and the source data in your system.


 Click
 **Load Preview**
 to verify that your data is accessible. If connection errors occur, verify the specified connection information.

##
 Scheduling

In the
 **Scheduling**
 settings category, you can specify the update schedule, retry settings, and update method you want for this DataSet.


 You can use either basic or advanced scheduling for connectors.

###
 Basic scheduling


#####
 Update

In the
 **Basic Scheduling**
 tab, you can create a basic update schedule in which you specify a predefined update interval for this DataSet (such as "every Monday at 10:00 AM").


 By default, schedules are set from the current time. Update intervals include every hour, day, weekday, week, month, and manually. Schedule times are based on UTC and will also show what time that is for you based on your Company Time Zone setting.


 For hour, day, and week options, you can specify the interval (every # hours/days/weekdays) and the start period.

*Note:**
 If you set a Connector schedule using the hourly method, the end time is not inclusive. For example, if the schedule is set to hourly with the active hours set to run 8 AM UTC to 7 AM UTC it will skip the 7 AM UTC run because the end hour is not treated as inclusive.

If you select
 **Manually**
 for your update interval, you can instruct Domo to send you a notification when the data has not been updated for a given period of time. Time periods range from one hour to three months.


**Note:**
 If you need your DataSet to update faster than every 15 minutes, please reach out to your account team for evaluation.


####
 Update Method

When creating or editing a DataSet, you can specify whether to append or replace data when updates occur. The update options are found at the bottom of the
 **Basic Scheduling**
 and
 **Advanced Scheduling**
 tabs.


 Option
  |
 Description
  |
| --- | --- |
|
 Replace
  |
 Replace the current version of the data with a new version of the data. Previous versions are preserved.
  |
|
 Append
  |
 Add data to the current version of the data, increasing the size of the DataSet.
  |
|
 Upsert
  |
 Update DataSets with restated data to ensure you have the most up-to-date information. Available for selected connectors only. For a list of available connectors, see

DataSet Update Methods

.
  |
|
 Partition
  |
 Select a rolling window of data to keep, making it easier to focus on relevant data. Available for selected connectors only. For a list of available connectors, see

DataSet Update Methods

.
  |


####
 Advanced Scheduling

In the
 **Advanced Scheduling**
 tab, you have more control over when data is updated than you do when using basic scheduling. You can create schedules by month, day of the month, or day of the week. You can even specify which days of the week out of the month you want to update (for example, every second and fourth Sunday).


 You can indicate whether updates are done on a set interval (such as "every 15 minutes," "every 8 hours," etc.) or at a specified time. You can also set the start time (based on the current minute). If you want, you can set the update schedule to start immediately.

*Note:**
 If you need your DataSet to update faster than every 15 minutes, please reach out to your account team for evaluation.

Schedule times are based on UTC but can be seen in your timezone.


**Delay start**
 : If you would like to delay when the schedule starts, you can do that in the
 **Delay start**
 section. Select
 **Start schedule: Later**
 , then choose a date and time when you would like your schedule to start. Your DataSet will run once and then wait until the selected time to begin following the schedule.

###
 Error handling

Retry settings determine whether Domo should attempt to retry if updates fail for this DataSet and, if so, the frequency and maximum number of retries. These settings apply only to scheduled runs, not manual runs. You access the retry options dialog by selecting
 **Always retry when an update fails**
 .

The options in this dialog are as follows:


 Option
  |
 Description
  |
| --- | --- |
|
 Always retry when an update fails
  |
 Domo retries to update the DataSet. After retrying the specified number of times, Domo sends a notification if the update attempt is unsuccessful.
  |
|
 Do not retry when update fails
  |
 Domo sends a notification if the update attempt is unsuccessful, and no retries are made.
  |


