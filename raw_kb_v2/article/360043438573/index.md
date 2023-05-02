

Intro
-------

The Retail Store Performance app provides you with the ability to view progress in comparison to past sales and to other stores in your district. The app consists of multiple cards to assess performance including current rankings, past rankings, intraday sales and goal, past overall performance, top and bottom performing categories, and one-way communication functionality to push important internal notifications.

##
 How to get the app

If you are interested in purchasing this app, contact your Customer Success Manager (CSM).

##
 Prepare and Connect Your Data

The Retail Store Performance app is powered by two different required DataSets:

 **Total Sales**
 : The schema of this table must be as follows to power the app


|
 Column Name
  |
 Data Type
  |
 Column Description
  |
| --- | --- | --- |
|
 Store ID
  |
 Number
  |
 ID of the store
  |
|
 Store Name
  |
 String
  |
 Name of the store
  |
|
 Category
  |
 String
  |
 Category of the product or service
  |
|
 Subcategory
  |
 String
  |
 Subcategory of the product or service
  |
|
 Item Name
  |
 String
  |
 Name for the item by that store
  |
|
 Timestamp
  |
 Datetime
  |
 Date and time sale was made
  |
|
 Sales Total
  |
 Number
  |
 Calculated total amount of sales for specified timestamp.
  |
|
 Sales Goal
  |
 Number
  |
 Goal for a specified timeframe.
  |
|
 Last Year Sales Total
  |
 Number
  |
 Calculated total amount of sales for specified timestamp last year.
  |


* **Store Performance Overview**
 : The schema of this table must be as follows to power the app


|
 Column Name
  |
 Data Type
  |
 Column Description
  |
| --- | --- | --- |
|
 Store Level
  |
 String
  |
 Pre-configured calculation of store performance into one of three categories (Green, Orange, Red) based on custom metrics provided during initial setup.
  |
|
 Store Rank
  |
 Number
  |
 Current rank of the store in the district according to the timeframe.
  |
|
 Last Updated
  |
 Date
  |
 When data was last provided.
  |
|
 Store ID
  |
 Number
  |
 ID for the store.
  |
|
 Store Name
  |
 String
  |
 Name of the store for ease of reference.
  |
|
 Region ID
  |
 Number
  |
 ID for the region or district.
  |
|
 Sales Total
  |
 Number
  |
 Calculated total amount of sales for specified timeframe.
  |
|
 Sales Goal
  |
 Number
  |
 Goal for a specified timeframe.
  |
|
 Last Year Sales Total
  |
 Number
  |
 Calculated total amount of sales for specified timeframe last year.
  |
|
 Goal Percentage
  |
 Number
  |
 Percentage of goal that has been achieved.
  |
|
 Variance Gap
  |
 Number
  |
 The variance between goal and actual sales. Value is negative prior to achieving goal and positive once achieved.
  |
|
 Variance Percentage
  |
 Number
  |
 The variance percentage between goal and actual sales. Value is negative prior to achieving goal and positive once achieved.
  |
|
 Last Year Variance Gap
  |
 Number
  |
 The variance between goal and actual sales last year. Value is negative if goal was not achieved and positive if it was.
  |
|
 Last Year Variance Percentage
  |
 Number
  |
 The variance percentage between goal and actual sales. last year Value is negative if goal was not achieved and positive if it was.
  |
|
 Timeframe
  |
 String
  |
 Possible options are: Day, Week, Month, Quarter, and Year
  |

Visualize
-----------

Once you've created your DataSets and connected them to the Retail Sales Performance app, you will be able to see the
 **Today**
 and the
 **Past Performance**
 tabs.

###
 Today

The
 **Today**
 tab will include a gauge chart displaying sales vs goal and the gap if any and a rankings chart for all stores in the district for today and rank based on sales and goal percentage.

###
 Past Performance

Under
 **Past Performance**
 , first, select the date range you would like to see. Using the dropdown select one of the following:

 Today
* Week to Date
* Month to Date
* Quarter to Date
* Year to Date

Once the date range is selected, you can view,

 An overview showing store level and the current rank of all stores in the district.
* Sales vs goal comparison showing the total, variance amount, and percentage.
* Rankings with top three performing stores, including your own store if it's not in the top three, as well as the sales and goal percentage for the specified timeframe.
* A clickable drill-down to view the top and bottom performing categories for the timeframe selected.


####
 Top/Bottom Performing Categories

Under
 **Top/Bottom Categories**
 , if you desire to change the timeframe originally selected, use the dropdown to select one of the following options:

 Today
* Week to Date
* Month to Date
* Quarter to Date
* Year to Date

Once the date range is selected, you can view,

 An overview showing the top three and bottom three performing categories along with the sales amount and percentage of sales for each category.
* The total store sales percentage by timeframe.


####
 Message Center

With the
 **Message Center**
 , you have the ability to compose messages and send to direct reports by individual or groups. Messages can be marked with read-receipt to require an acknowledgement by the receiver for auditing purposes. You can also schedule your messages to be sent out at a later date and time. Add up to 8 pre-configured categories to messages to easily sort your inbox. Lastly, a banner will display the three latest incoming messages until they are read or acknowledged.


