


####
 Intro


 Get answers to frequently asked questions about setting your time zone.


####
 Why do my cards show data at the wrong hour/day?

See

Setting Your Time Zone

for information.

###
 What are the implications for using vs. not using company time zone settings?

The data in your cards will be altered to reflect any changes you make in your company time zone settings. All data loaded into Domo is assumed to be in UTC and the company time zone setting will adjust the data from UTC to the selected time zone.


 If you have data coming into Domo in different time zones, the four simplest options for mitigating problems with the data are as follows, in order of simplicity:

 Transform the data using Beast Mode so that it is normalized to UTC
* Transform the data in a DataFlow so that it is normalized to UTC
* Fix the data on the customer side
* Use the API to alter the data with code

Because Domo will always assume that the date/time values in your data are coming in as UTC, changing your time zone setting is essentially telling Domo to adjust the date/time values either forward or backward by the hour offset between UTC and your selected time zone.


 For example, if you are in the Eastern time zone of the United States and have turned this setting on, when Domo goes to plot any cards with time-level granularity, it will assume the times in your data are in UTC and the visualization will reflect those times adjusted back by 5 hours (or 4 hours, depending on Daylight Saving Time). So if the time values in your DataSet are already in your local time zone, and you have turned on the time zone feature, the times that appear on your card will not be correct.


 The following table clarifies some of the specific effects of setting or not setting your company time zone:


*With*
 Time Zone Set
  |
*Without*
 Time Zone Set
  |
| --- | --- |
|
 All date/time values (ex: mm/dd/yy; hh:mm:ss) must be in UTC. Domo will adjust them to your chosen local time in your cards. The actual data in your DataSet is not changed.
  |
 No changes are applied to the cards or your data. Cards will represent date/time values (ex: mm/dd/yy; hh:mm:ss)
  |
|
 Date values (ex: mm/dd/yy) will not be affected.
  |
 Date values (ex: mm/dd/yy) will not be affected.
  |
|
 Days break at UTC +/- your local adjustment for midnight (ex: in New Your City, midnight is 5 am UTC).
  |
 Days break at midnight of the existing date/time values in your DataSet.
  |
|
 Connector scheduling remains in UTC.
  |
 Connector scheduling remains in UTC.
  |


**Note**
 : Many data providers will use UTC as a default. If you have some DataSets that are in UTC and others that are in local time, you will need to perform some calculations in either Beast Mode or using a DataFlow in order to normalize the date/time values into the same time zone. Or you may be able normalize the date/time values through or within your data provider prior to uploading.

If you have verified that all of the date-time values in your DataSets are in UTC, then you can simply turn on the company time zone settings and your cards will update to reflect your local time.

####
 Time Zone Adjustments: Beast Mode vs DataFlows

Time zone transformations can be accomplished in either Beast Mode calculations or DataFlows, but it’s important to note that there are situations where one solution may be better than the other.


 It is more appropriate to use Beast Mode for time zone transformations when the resultant field has the following requirements:

 Does not need to be used as the Date Range Field on the card (given that you cannot currently use Beast Mode calculations for the Date Range Field).
* Does not need to be used in other Beast Mode calculations (because this would require duplicating the transformation code in every location where the field is to be used).

If a DataFlow is already being used to create the DataSet powering the card, it is often best to include the time zone adjustments in the already existing DataFlow. In this case, the output fields will be available for use as the Date Range Field on the card and can also be used in Beast Mode calculations.


 Also, note that the code used to adjust time zones will differ between a Beast Mode and MySQL DataFlows. In MySQL, the

CONVERT\_TZ()

function can be used to adjust a date from one time zone to another, automatically handling Daylight Saving Time concerns in the process. When using Beast Mode calculations, Daylight Saving Time needs to be considered in the code.

###
 How can I adjust Beast Mode functions to account for Daylight Saving Time?

Problem*
 :


 Timestamp outputs for DataFlows will timestamp according the local time zone settings of your instance. Even if the transform's preview shows UTC, it will convert to your settings upon generating the output. However, timestamp functions in Beast Mode will stamp according to UTC time.


 This can cause some major issues when writing Beast Mode calculations off these fields/functions and if your state recognizes Daylight Saving Time.


*Solution*
 :


 Create a Beast Mode calculations to convert UTC into the correct time zone while also taking into account the correct dates to handle Daylight Saving Time.


 The following example will show you how to do it. Specifically, this formula will give you the value of the `date` column shifted according to whether you’re in Daylight Saving Time or not:

*Note:**
 Daylight Saving Time for the US begins at 2:00 AM on the second Sunday in March, and ends at 2:00AM on the first Sunday in November.

CASE`


`WHEN `date` >= ADDDATE(STR_TO_DATE(CONCAT(YEAR(`date`),'03','01'),'%Y%m%d'),(MOD(15 - DAYOFWEEK(STR_TO_DATE(CONCAT(YEAR(`date`),'03','01'),'%Y%m%d')),7) + 7))`


`AND `date` < ADDDATE(STR_TO_DATE(CONCAT(YEAR(`date`),'11','01'),'%Y%m%d'),MOD(1 - DAYOFWEEK(STR_TO_DATE(CONCAT(YEAR(`date`),'11','01'),'%Y%m%d')),7))`


`then DATE_SUB(`date`,INTERVAL 4 HOUR)`


`else DATE_SUB(`date`,INTERVAL 5 HOUR)`


`END`

###
 Why are my connector jobs running at the wrong time?

Problem:*


 Say you scheduled a DataSet to update at a particular time but the update history shows it running at a different time.


*Solution:*


 When a customer sets a time for a DataSet to update, this time is based on UTC time. However, the time shown in the update history will show the actual time of the update based on your company's time zone setting. Verify that the job is set for the right time using UTC. If Daylight Saving Time is an issue, you may have to update your connector schedule twice a year to account for the change.

###
 Why are the times not what I expect in my timestamps in my DataSets?

Problem:*


 This can happen as a result of two issues. The most common cause is that you don’t have your time zone set properly in your company settings. The second most common reason is that your data was scheduled to upload in a time zone other than UTC, and your company settings are shifting the timestamp to the time zone you’ve selected in you company settings. Essentially, this means Domo is assuming your data is coming in at UTC, even though it isn’t.


*Possible Solutions:*

 Adjust your company settings
* Adjust your data set or connector upload schedule
* Create a Beast Mode or DataFlow calculation that will allow you to resolve the disparity between the different time zones


####
 (Workbench) How do I set the time zone for a DataSet job in Workbench 4?

You have the option to set the time zone for a DataSet Job within Workbench. When the job is sent to Domo, all of the date-time data is based on the time zone you selected. You apply a time zone to a DataSet using the Shift Date Timezone Transform.

Here’s how to set the time zone for a DataSet job:

. In the
 **Accounts**
 pane, select the DataSet job in which you want to set the time zone.
2. In the
 **Transforms**
 grouping in the
 **Buttons**
 toolbar at the top of the Workbench window, click
 **Add New**
 .
3. In the
 **Transform Type**
 menu, select
 **Shift Date Timezone**
 then select
 **Next**
 .
4. Then select
 **Finish**
 .


 At this point, a
 **Shift Date Timezone**
 item is added under
 **Transforms**
 for this DataSet job.
5. Next, select the new
 **Shift Date Timezone**
 item under
 **Transforms**
 .
6. In the
 **Data Timezone**
 menu, select the desired time zone.
7. Click
 **Save**
 in the DataSet Jobs grouping in the Buttons toolbar at the top of the Workbench window.


####
 How can I convert Time Zones Using a MySQL DataFlow?

MySQL offers a

CONVERT\_TZ

function that you can use to convert the time zone in a DataFlow. This function is also designed to accommodate Daylight Saving time.


 For example, to convert a datetime column from UTC to Pacific Standard, do the following:


`CONVERT_TZ(`Date`, 'UTC', 'PSTUS/Pacific')`


 Please go to your favorite resource on MySQL to learn more on how to perform this function.

