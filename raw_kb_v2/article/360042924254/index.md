

Intro
-------

Use the Fiscal Calendar setting to visualize KPI cards with your business's fiscal calendar. You can create custom visualizations that provide better insights based on the business's schedule rather than a standard calendar.


**Note:**
 At this time, it is not possible to set Fiscal Calendar as the default option on all Cards; it must be set on a Card-by-Card basis.


 Use a Fiscal Calendar in Domo
-------------------------------

To turn on the fiscal calendar option, you must have a Professional level Domo license or higher, and you need to contact Domo Support with the following information:

. Provide starting dates for three different years according to the desired calendar.
2. Whether your fiscal year matches the actual year of the starting dates. For instance, if your year starts on October 1
 st
 , 2018, is it considered fiscal year 2018 or 2019?
3. On what day of the week your weeks start.
4. Does your fiscal calendar calculate months by real month boundaries (1
 st
 of every month) or does it calculate it on a week boundary basis? If it calculates based on a week boundary, please answer the questions below:


* If your calendar operates on a week boundary, what is the week boundary configuration desired? Options are 4-4-5, 4-5-4, or 5-4-4, corresponding to the number of weeks in each “month” of a quarter (e.g. 4-4-5 is a quarter consisting of two 4-week months followed by a 5-week month)
* Week boundary calendars require a 53
 rd
 week be added every 4-6 years, depending on leap years. What specific years should have a 53
 rd
 week added? If none, the default will be used with 2020 as a reference point of a 53
 rd
 week year.
* For 53-week years, where in the year should this 53
 rd
 week be added? (e.g. first month of the year, last month of the year, etc.)

If your fiscal calendar does not follow a consistent pattern, please reach out to Support and they will help you with what information to provide.


 For more information on how to contact Support, see

Technical Support

.

*Note:**
 Fiscal calendars do not currently work on Cards powered by Federated DataSets.

Using a Fiscal Calendar in Analyzer
-------------------------------------

Once support has implemented your fiscal calendar, use the following steps to use it in a KPI card.

. Go to the
 **Analyzer**
 view of a card. For more information on how to do this, see

Opening Analyzer

.
2. Select
 **Date Range**
 .
3. Check the
 **Use fiscal calendar**
 box.
4. Save the card.

*Important:**


 When adding a fiscal calendar as part of a drill path, the fiscal calendar selection in the child pages MUST be the same as that of the parent card; otherwise, the drill path won't work.

The fiscal calendar checkbox does not apply to Beast Mode calculations that use the following functions:


 DAYOFWEEK, WEEK, YEAR, and YEARWEEK


 for more information on these functions, see

Beast Mode Functions Reference Guide

.


