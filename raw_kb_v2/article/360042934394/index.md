

Intro
-------

You can specify the global corporate time zone for your company. Or you can specify the time zone for your personal instance of Domo. For answers to commonly asked questions regarding time zones in Domo, see

Time Zone Troubleshooting FAQ

.


 You can only edit these settings if you have an Admin default security role or a custom role with the Manage All Company Settings grant enabled. For more information about default security roles, see

Managing Custom Roles

.


 Set the Global Time Zone
--------------------------

When you specify the global corporate time zone, all visualizations use it and days begin at the corporate midnight.

*Note:**
 If all of your data in Domo is in your corporate time, you do
 *not*
 need to set the time zone.


|
 Status
  |
 Description
  |
| --- | --- |
|
 Not enabled
  |
 When the global corporate time zone setting is not enabled, there is no way to convert DATETIME info for your corporate time zone. Example of DATETIME data:

'2014-08-14 15:05:30'

. All DATETIME fields in your data are visualized based on the assumption that your "current time" is UTC (Coordinated Universal Time). For example, if you were in New York City and your data is time-stamped in UTC, the date changes at 7:00PM since UTC is 5 hours ahead of Eastern time zone. The new time zone setting compensates for this situation. (If your data were already time-stamped in Eastern Time, you would
 *not*
 need to set the new time zone feature.)
  |
|
 Enabled
  |
 When the global corporate time zone setting is enabled, all DATETIME data sent into Domo
 *must be*
 in UTC (Coordinated Universal Time). The DATETIME data converts from UTC to the time zone setting when you view your charts. Your data remains unchanged. This time zone setting applies to all of your DataSets within Domo. The global corporate time zone does
 *not*
 affect any DATE fields within your data; the time zone setting affects only DATETIME fields.
  |

Follow these steps to set the global corporate time zone:

. In the navigation header, select
 **More**

*> Admin**

.


 The Admin Settings display.
2. In the
 **Company settings**
 menu, select
 **Company overview**
 .


 The
 **Company overview**
 page displays.
3. Under
 **Formatting**
 , select a new time zone from the
 **Time zone**

list.
4. Select
 **Save**
 .

Set the Global Language
-------------------------

Set date and number formats globally on the Domo platform based on your region. Formatting conventions based on your region are used to display numerical, financial, and date/time values based on your region.


 Follow these steps to set the global corporate language:

. In the navigation header, select
 **More > Admin**
 .


 The Admin Settings display.
2. In the
 **Company settings**
 menu, select
 **Company overview**
 .


 The
 **Company overview**
 page displays.
3. Under
 **Formatting**
 , select a language from the
 **Language**
 list.
4. Select
 **Save**
 .

Set Your Personal Time Zone
-----------------------------

You can set the time zone for your own Domo. This time zone determines when you receive notifications, alerts, and scheduled reports. You can change your time zone in your
 **Settings**
 menu.


 Follow these steps to set your personal time zone:

. Select your user profile picture in the top right corner of the screen.
2. Click

.


 The
 **Settings**
 page displays.
3. Click
 **Click to change time zone.**
4. Click the area on the map or select a major city in the menu for the time zone you want, then click
 **Save**
 .


**Note:**
 This will not offset any datetime data that you are viewing in Domo to display as the time zone you select here. Only the global time zone in Admin Settings can offset any datetimes.

How Domo Handles Date/Time Data
---------------------------------

When changing any company-wide or personal time zone settings, it is very important to understand how that may affect your data or visualizations.


**When a time zone has been set in your Domo instance,**

 The time difference between the chosen time zone and UTC will be added or subtracted from all datetime values whenever the data is: (e.g. If the time zone is set to PST, 8 hours is subtracted from all datetime columns.)
	+ Rendered for display in a DataSet preview
	+ Rendered for display on a card
	+ Used in a Beast Mode calculation
* Day/Week/Month date grains on cards and pages will honor the selected time zone and will occur at midnight of the company time zone, not UTC.


####
 Other time zone specifics


* Standalone Date and Time values are not affected by the time zone conversion process, only Datetime values.
* The expectation by Domo is that all datetime values loaded into Domo represent UTC time.

+ If a DataSet loaded into Domo has datetime values which actually represent PST, Domo cannot know this. Conversions will be applied as if the data is UTC and will be rendered as PST-8:00.
* Changing the company time zone setting has no effect on the values in the raw data.

+ If your company time zone is currently set to UTC, and the value "2016-12-07T15:00:00 exists in the database, it will remain the same after switching the time zone setting to PST. Automatic conversions only occur when the data is rendered.
* Datetime values are not converted to UTC during import from self-managed DataSets (Excel, Box, Google Sheets, file upload, etc.). Data in these sources must be stored in UTC prior to import.
* Datetime values are not converted to UTC during import from certain cloud app connectors (Qualtrics, Adobe Analytics, SurveyMonkey, etc.). However, most cloud app connectors deliver UTC values by default.


**Important:**
 Always check to see if values coming in from any cloud app connector are in UTC to ensure any time zone conversions are happening correctly.
* Datetime values are not converted to UTC during Workbench uploads unless a

Shift Data Time Zone Transform

is applied to the DataSet job.


**Note:**
 Scheduled runtimes for Workbench DataSet jobs follow the clock of the machine that Workbench is installed on. Company time zone settings have no effect on Workbench scheduling.
* Scheduled runtimes for DataSets will still be specified using UTC time values. There is a UTC label next to those scheduling fields.
* Runtimes displayed in the History tab for DataSets and DataFlows are unaffected. They always display in the time zone of the computer that you are viewing them from.
* DataFlows operate on the raw data values stored in the database, and not on converted values.

+ You will have different calculated results when grouping values utilizing a datetime field in a DataFlow (raw values) compared to doing the same grouping on a card with the converted values.


	**Tip:**
	 You can use the
	 `SUBDATE`
	 or
	 `ADDDATE`
	 functions in DataFlows to manually adjust your datetime columns as needed. See

 Beast Mode Functions

 for more information.
* Dynamic Date and Time value functions in DataFlows and Beast Modes are unaffected by any time zone set in your instance. The following functions will always reference UTC:

+ `CURDATE()`
	+ `CURRENT_DATE()`
	+ `CURRENT_TIME()`
	+ `CURRENT_TIMESTAMP()`
	+ `CURTIME()`
	+ `NOW()`
	+ `SYSDATE()`

*Tip:**
 You can use the
 `SUBDATE`
 or
 `ADDDATE`
 functions in Beast Modes to adjust these values as needed. See

Beast Mode Functions

for more information.

 If a datetime column is brought into Domo as a string data type rather than a datetime, it will not be converted based on the time zone settings.


