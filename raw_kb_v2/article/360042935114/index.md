

Cards in pre-installed Business-in-a-Box dashboards are initially powered with sample data, allowing you to get a sense of how the cards would look when connected to your own live data.  Cards with sample data appear with a "Sample Data" watermark

to indicate they are not yet live. The following screenshot shows an example of a card with sample data:

The process for powering up Business-in-a-Box dashboards with live data is similar to that of deploying apps from the Appstore. You select a DataSet containing all of the columns (fields) required to power up the cards in this dashboard. Then you drag columns from your DataSet onto the matching columns in the dashboard. (If the columns have the same name, they are matched automatically.) You must do this for all individual DataSets required to power up the dashboard. This process is described in greater detail below. For information about deploying Appstore apps, see

Deploying Apps from the Appstore

.


**Notes:**

 If you do not have an "Admin" or "Privileged" security role in Domo (or a custom role with "Use Appstore" enabled), you cannot power up cards in a Business-in-a-Box dashboard; however, you can send a request that cards in the dashboard be powered up. For more information about default security roles in Domo, see

Managing Roles

.
* Any user granted access to a Business-in-a-Box dashboard will also be granted access to the DataSet used to power it..

*To power a Business-in-a-Box dashboard,**

. Navigate to the Business-in-a-Box dashboard with cards you want to power up.


 For more information about navigating to a dashboard, see

Accessing Business-in-a-Box Dashboards

.
2. Click
 **Connect Data**
 at the top of the window.

A bar appears displaying the number of DataSets required to power up the cards in the dashboard, an
 **Assign**
 button, and tiles for connecting to each required DataSet.
3. Do one of the following:

* To assign another user to power up these cards...

	1. Click
		 **Assign**
		 .


		 The
		 **Assign**
		 dialog appears.
		2. In the
		 **Select data specialist**
		 field, select the user you want to assign to power these cards.
		3. (Optional) Change the email message to be sent to the assignees if you want.
		4. Click
		 **Send**
		 .


		 The person or group members are assigned the task to power the cards.
	* To power up the cards yourself...

	1. Click the
		 **Connect**
		 button for any one of the required DataSets in the blue bar.


		 Two panes appear on your screen, one (marked as "1") asking you to select your DataSet and the other (marked as "2") showing the fields you'll need to match columns from your DataSet to.
		2. In pane 1, select the DataSet you want to use to power the dashboard.


		 You can use the
		 **Filter**
		 option to filter by data type (text, number, or date) or search for a particular DataSet by name using the search tool. You can also show a preview of the DataSet by clicking
		 **Data Preview**
		 at the bottom of the screen.


		 Optionally, you can click
		 **Download Example**
		 to download a CSV file that includes the columns to match along with sample data for each column. You can use this file as a template for filling in the data in the columns,

	 upload it to Domo

	 , then select it here as your DataSet.


		 Once you select a DataSet, if there are any columns with names that match any column names in pane 2, those columns are matched automatically. Matched columns are indicated using green checkmarks. You do not need to match these columns manually.
		3. (Conditional) If there are any columns from your DataSet whose matching columns in pane 2 have different names, you will need to match these manually, by dragging and dropping columns from pane 1 to their matching columns in pane 2.
		4. Once all your columns are matched, click
		 **Connect**
		 .
		5. Click
		 **Okay**
		 .


		 All cards in the Business-in-a-Box dashboard that are connected to this DataSet should now be powered with your own live data.
		6. Repeat the above instructions for all DataSets shown in the blue bar to power all cards in the dashboard.

If at any time you want to change the matched columns for a given DataSet, you can do so by clicking
 **Change**
 for that DataSet then making the desired changes.


