

Intro
-------

If you have been using Google Analytics to track user data produced by CourseBuilder training apps, and if the data you’re tracking includes personally identifiable information (PII), such as user name and/or email, you will need to take the following steps to both remove PII data from Google Analytics and also avoid breaking cards using PII data that you’ve already created in Domo using the Google Analytics connector reports associated with your CourseBuilder training apps.


 Part 1: Delete Training Apps in Your Instance That Are Using the Google Analytics Tracking ID Pulling PII
-----------------------------------------------------------------------------------------------------------

The purpose of Part 1 is to help make sure that there are no gaps in the data you’re tracking for your training app(s). Here’s why you need to take the following steps. Because the existing Google Analytics app ID(s) attached to your app(s) may be tracking PII, you will want to stop that from happening as soon as possible. Later on in this article/tutorial, you’ll be asked to (1) create a new Google Analytics tracking ID for your CourseBuilder app(s) that does not track PII, (2) add this new ID to your app(s) in CourseBuilder, and then (3) republish and replace any app(s) in your instance that were using the old ID with the apps that are using the new ID.


 Before you do this, however, you need make sure you don’t lose data on users taking your training app. In each case where you have a training app live in your Domo instance, you have a couple of options on what to do to ensure there are no gaps in your user data. Whichever option you choose, it is essential that you remove users’ ability to access the CourseBuilder app(s) until you have uploaded a new version of the app(s) that include an updated Google Analytics tracking ID:


**Option 1**
 : Pick a time of day when users are least likely to be engaging with your training apps and simply delete the app card(s) and then replace it with a Notebook card that says something like “Training app updates are in progress. Stay tuned for updates.”


**Option 2**
 : Temporarily rescind access rights for all users except yourself to the CourseBuilder app(s) or the pages where they reside in your instance, and then delete and replace the app(s) later after you’ve completed all of the following instructions in this article.


 Part 2: Use the DomoStats Connector to Create “PeopleStats” DataSet
---------------------------------------------------------------------

The purpose of Part 2 is to create a DataSet that contains User IDs aligned with Name, Title, Email, and other Domo user info. Creating this DataSet will enable you to create a DataFlow with your Google Analytics DataSet that will provide you with User ID, User Name, Email, etc.

*Note:**

You will need to have an Admin security profile in your Domo instance if you plan to create the PeopleStats DataSet yourself from the DomoStats Connector. Otherwise, you will need to ask your MajorDomo or Domo administrator to create this DataSet and then gain their permission to access it.


 You will need this DataSet and, eventually, a DataFlow because your Google Analytics DataSets/reports will no longer include User Name and User Email dimensions. Here are the steps for creating the “PeopleStats” DataSet that you’ll need:

. Go to the Data Center, select Cloud Data Connectors, then find and select the DomoStats Connector, and then select
 **Get the data**
 .
2. In the connector set-up page, do the following:

* Under Details, select
	 **People**
	 .
	* Under Scheduling, choose your own schedule. If you are not adding people very often, consier extending the time between updates. Not that you may only have the option to select "every day."
	* Under Name & Describe Your Dataset, choose a descriptive DataSet name such as "PeopleStats\_[Your Initials]". Don't forget to add a description, for example "DataSet connecting User ID to User Name, Email, etc"
	* Select
	 **Save**
	 .
3. If your DataSet does not automatically run based on the Schedule you chose, run it manually by clicking the settings menu and selecting
 **Run Now**
 .

Part 3: Export Historic Google Analytics DataSet(s)
-----------------------------------------------------

The purpose of Part 3 is to create a backup of all data you are currently using to power cards based on Google Analytics data or data you wish to keep for future use that include PII data. As for why this is needed, if a Google Analytics tracking ID (also called a Property) has already been tracking PII, the only way to remove this PII from Google Analytics is to delete the Google Analytics tracking ID/Property (at least, this is the only option for deleting this information if you are using a free Google Analytics account).


 Thus, to both remove PII Google Analytics and avoid losing the data you’ve been collecting in association with that Google Analytics ID, you will need to create a static backup DataSet that retains all of the information you’ve been tracking with that ID. Then, after you create a new Google Analytics tracking ID or property number for your app(s) that doesn’t include PII, you can join any new DataSets or reports pulling from the new Google Analytics tracking ID with your historical Google Analytics data as well as the PeopleStats DataSet.


 To create this historic Google Analytics DataSet, you must take the following steps for every existing Google Analytics ID and Google Analytics report that you’ve created in association with training apps that track PII:

. If you haven't already, use the Google Analytics Connector to pull a report or reports on your training app that include all of the dimensions and metrics you've been tracking with the Google Analytics tracking ID or Property.
2. Locate your Google Analytics DataSet(s) or report(s) by going to the Data Center and then searching for it in the DataSets tab. You can add a "Type" filter to your search that will return all DataSets/reports pulled from Google Analytics that you have access to.
3. Go to the Setting menu and select
 **Export**
 . Then choose either
 **Excel**
 or
 **CSV**
 .


**Note**
**:**

You will need to have an Admin security profile in your Domo instance if you plan to create the PeopleStats DataSet yourself from the DomoStats Connector. Otherwise, you will need to ask your MajorDomo or Domo administrator to create this DataSet and then gain their permission to access it.


 Part 4: Import the Historic Google Analytics Data into Domo to Create a Historic Google Analytics DataSet
-----------------------------------------------------------------------------------------------------------

The purpose of Part 4 is to import the historic Google Analytics data into a new Domo DataSet, which will enable you to maintain the history of any data powering cards in connection with the CourseBuilder apps you’ve created and allow you to append new data to that historical data.


 Users must take the following steps for every existing Google Analytics ID they’ve created and every historical report they’ve exported from Google Analytics reports that include PII:

. Go to the Data Center, select
 **File**
 , select the
 **File Upload Connector**
 , and then select
 **Get the Data**
 .
2. In the connector set-up page, do the following:

* Under Details, browse for and add your historic data file that you exported in Part 3.
	* Under Select tables, preview your data and modify options if necessary.
	* Under Preview, double check to see if everything looks right.
	* Under Update Mode, set your update preferences.
	* Under Name & Describe Your DataSet, choose a descriptive DataSet name, such as "HistoricGoogleAnalytics\_[Your Initials]". Don't forget to add a description, for example "DataSet containing all Google Analytics data prior to July 15, 2018."
	* Select
	 **Save**
	 .

Part 5: Make and Apply a New Google Analytics ID
--------------------------------------------------

The purpose of Part 5 is to create a new Google Analytics ID for your training app(s) that will contain no personally identifying information. Note that if you have been using a unique Google Analytics tracking ID or property for each individual training app you’ve created, you can start using one ID for all of your apps, if you would prefer. The reason for this is that CourseBuilder enables you to track the App Name of each app. Thus, if you want to create separate reports/DataSets or cards for individual training apps, you can do so in Domo using filtering options.


 See our


 Setting Up Google Analytics Tracking on a Training App


 article to complete the steps involved in setting up a new Google Analytics tracking ID or property as well as the needed Custom Dimensions that you’ll need to add to that property for each of your CourseBuilder training apps.


 Part 6: Create New Google Analytics Report(s) from Your New Google Analytics Tracking ID(s)
---------------------------------------------------------------------------------------------

The purpose of Part 6 is to create a new report or DataSet in Domo from the new Google Analytics tracking ID associated with your training app data, which you can later join with both the historical GoogleAnalytics DataSet(s) that you were using previously as well as the PeopleStats DataSet that you should have created already. Take the following steps outlined


 in this article


 for each of the Google Analytics reports you’d like pull into Domo that are attached to the new Google Analytics tracking ID(s) for each of your CourseBuilder training apps.


 Part 7: Creating a new DataFlow to Combine Historic and Future Google Analytics Data
--------------------------------------------------------------------------------------

The purpose of Part 7 is to append the new Google Analytics data to the historic Google Analytics data and join the DomoStats user data to the both the new and historic Google Analytics DataSets to create a new DataSet to power your cards related to tracking CourseBuilder app user behaviors in your Domo instance. Complete the following steps to accomplish this task:

. Go to the Data Center and select
 **ETL**
 .
2. Select two Input DataSet icons (or more if you want to join multiple historic and new Google Analytics DataSets into one DataSet).

* Select the first Input DataSet icon, designate the "HistoricGoogleAnalytics\_[Your Initials]" DataSet.
	* For the second Input DataSet icon, designate the "GoogleAnalyticsforTrainingApps\_[Your Initials]" DataSet.
3. Under the Combine Data tab, select and drag out an Append Rows icon.
4. Connect all fo the Input DataSets icons to the Append Rows icon.
5. Append rows by doing the following:

* (1) Select the input "Include all columns". You will see that one column will be removed ("Customer Batch ID"), which is okay.
	* Select
	 **Done**
	 .
6. Under the Combine Data tab, select and drag out a Join Data icon onto the canvas.
7. Select an Input DataSet icon and drag it onto the canvas after the Append Rows icon.

* Designate the "PeopleStats" DataSet.
8. Connect the Append Rows icon and the "PeopleStats" DataSet to the Join Data icon.
9. Join the data by doing the following:

* (1) Select input "Append Rows"
	* (1) Select identifying column "User Email"
	* (2) Select input "PeopleStats"
	* (2) Select identifying column "Email"
	* Select
	 **Match Another Column**
	* (1) Select identifying column "User ID"
	* (2) Select identifying column "User ID"
	* With the Join icon, select "Left Outer"
	* Select
	 **Done**
	 .
10. Select an Output DataSet icon and drag it onto the canvas.
11. Connect the Join Data icon to the Output DataSet icon.
12. Choose a descriptive name for the DataSet, such as "GoogleAnalyticswithUserInfo\_[Your Initials]", and copy and paste this DataSet name to the DataFlow name field. Your DataFlow won't run until both of these fields have a name.
13. Add a description as well. For example, you could type something like "Google Analytics data joined with user data. Includes static historic data prior to July 15, 2018 and live data thereafter."
14. Select
 **Save and Run**
 .

Assuming everything has been set up correctly, the DataFlow should run successfully. If it doesn’t, please review the above steps to ensure you’ve followed each of them as best as you can.


 Part 8: Update Existing Cards with the New Output DataSet Produced by the ETL DataFlow
----------------------------------------------------------------------------------------

The purpose of Part 8 is to repair any existing cards that may have been pulling User Name or User Email from Google Analytics reports/DataSets you’d previously created. The goal is to make sure all of the cards you’ve created continue to be powered by live data on CourseBuilder app user behavior in your Domo instance. The difference is that these cards will now be pulling data from the Output DataSet you just created instead of the Google Analytics report you were using previously to power these cards. Take the following steps:

. Open any cards that were or are currently powered by Google Analytics DataSets that included PII data in Analyzer.
2. In the top left corner of the Analyzer view, under Data, select the existing DataSet powering the card and then search for and select the output DataSet (for example, “GoogleAnalyticswithUserInfo\_[Your Initials]”) that you just created in Part 7 above.
3. At this point, your card might show that it’s missing the needed dimensions because the dimension titles used in the Google Analytics DataSet “User Email” and “User Name,” whereas the dimension names in the new DataSet are labeled “Email” and “Display Name”. Simply drag these new dimensions from the Dimensions column over to the appropriate fields for the card, and the card should work again as expected.

Part 9: Deleting all Old Google Analytics IDs
-----------------------------------------------

The purpose of Part 9 is to help you ensure that all Google Analytics tracking IDs you’ve been using that are or were tracking PII (personally identifiable information) in relation to your CourseBuilder training app(s) are  completely removed or deleted from your Google Analytics account.  Please take the following steps to ensure this takes place:

. Log into your Google Analytics account and select the Admin tab in the bottom left corner of the page.
2. Find and select the account and then the property (or Google Analytics tracking ID) that you want to delete) from the dropdown list.
3. Select Property Settings.
4. In the top right corner of this view, select
 **Move to Trash Can**
 .


**Note**

:*

Your property will be permanently deleted after 35 days from the point you put it into the Trash Can.

Repeat the above steps for each tracking ID associated with CourseBuilder training apps that also contain PII.


 Part 10: Confirm That All of the CourseBuilder Apps/Cards in Your Instance Have Been Replaced with the New Apps
-----------------------------------------------------------------------------------------------------------------

This final stage is simply to help you ensure that you’ve found and replaced all CourseBuilder apps/cards in your instance that are or were using Google Analytics tracking IDs associated with PII with apps/cards that are no longer tracking PII. In Part 1 of this tutorial, you were asked to delete or remove access to CourseBuilder apps that were set up to track PII. If you haven’t already, now is the time to publish and place the new apps with new tracking ID(s) in all the relevant locations within your Domo instance.


 Once you’ve completed this step, you should be all set!

