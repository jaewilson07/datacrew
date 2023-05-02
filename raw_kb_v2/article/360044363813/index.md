

Domo Finance
--------------

Welcome to the Domo Finance App! This guide will help you prepare and connect your data to the app. You may have only purchased one of the apps from the Domo Finance App suite, if this is the case, disregard any steps about the apps not included in your purchase.


 The different parts of the Domo Finance App are derived from a financial general ledger or transactional data. Follow these steps as outlined in this guide to prep your data for the different parts of the app.


**Required fields from the general ledger**


 The app requires the following basic fields from your general ledger or transactional data:

 Date
* Account Number
* Account Name
* Amount
* Budget

Budget data isn't strictly required as the budget section of the app can be hidden. If you don't have any budget data, leave this column empty.

Profit and Loss Data

Each section of the app required two DataSets: one for the main data with the appropriate hierarchy joined to it, and another to adjust display order if necessary.


 First, create the main P&L DataSet:


**Step 1: Create your hierarchy**


 In order for the app to function, the way that each of your base level accounts rolls up into a parent group needs to be joined to the general ledger. For example, you may have an account that rolls up in the following manner: Net Income <- Gross Profit <- Total Revenue <- Retail Sales <- Men's Apparel (Account 40390). This is the account's hierarchy. Note that the app supports up to 7 levels of hierarchy. To make joining the account hierarchy to the general ledger easier, format your data in the following manner:

  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|
 Level 0
  |
 Level 1
  |
 Level 2
  |
 Level 3
  |
 Level 4
  |
 Level 5
  |
 Level 6
  |
|
 Net Income
  |
 Gross Profit
  |
 Total Revenue
  |
 Retail Sales
  |  |  |
 Men's Apparel (Account 4390)
  |

Notice that there is an empty gap between Level 3 and Level 6. If one of your accounts doesn't have a full 7 levels, make sure that the parents are grouped towards the left and that the base level account is always placed at level 6. There can't be more than one gap in your app's data table.


 A simple method for creating this hierarchy would be to start on the left-hand side with the highest-level parents (Level 0) and then sequentially adding the children of each parent in the next column until you get down to base level accounts (Level 6). Make sure that the names of the base level accounts (Level 6) exactly match the accounts names as they appear in your general ledger so that the hierarchy can be joined back onto the general ledger data.


*Note:*
 If you have purchased the Cash Flow app as well, you'll need to make sure that you include all of the financial data that you have. Cash flows calculate your starting cash using a Net Income category from the P&L data and requires all of the data from the beginning in order to be accurate. If having that much data doesn't make sense for you, consider aggregating your historical data up to a certain point first and then including that in your P&L data.


**Step 2: Join the hierarchy to the general ledger**


 After you have prepped your hierarchy, you'll now need to join it to the general ledger. Use your transformation tool of choice, such as Magic ETL or MySQL. You should end up with a result that looks similar to the following:

Make sure to join the hierarchy onto the general ledger, so that all of the rows of the general ledger come through.


 Next, there are a few additional columns that need to be added to make sure that the app creates the roll-up categories correctly and that the app has the required fields to use for filtering by date.


 Each of the Level columns (ex. Level 0-6) needs two companion columns that are to be generated. The columns are called Level\_Type and Level\_Operator, where the blank is the respective level number. (
 *Note:*
 You may find it easier to create these columns when you create your hierarchy. These columns can be created with the hierarchy and then joined instead of creating them after joining the hierarchy. Use whichever approach works best for you.)


 First, the Level\_Type columns need one of two values: 'Expenses' or 'Revenue'. For example, if you consider 'Total Expenses' an expense category and 'Total Expenses' was a value in your Level 2 column, you'd create a Level 2 Type column and assign it the value 'Expenses' anywhere that the value of the Level 2 column was 'Total Expenses'. If you feel that this isn't applicable to a roll-up or account, you can also leave the value blank. Also, if there is no value on a row for the Level column, leave this column blank for that row as well.


 The value in the Level\_Type column determines how the variance calculation is determined in the app. If the value is 'Expenses', the variance calculations will be calculated using budget-actual amounts, and for any other value it will be calculated actual-budget.


 The Level\_Operator column needs one of two values, '+' or '-'. This tells the app how the account needs to be summed up into its parent. For example, if your 'Total Revenue' category was a positive number and your 'Total Expenses' was also a positive number, you would assign '+' to any row that had 'Total Revenue' as a value, and '-' to any row that had 'Total Expenses' as a value. Again, leave any rows blank where the corresponding row is also blank. As a note, you do not need to create a Level 0 Operator column, as Level 0 doesn't get added to any parent category. After creating these columns, your DataSet should look similar to this but for each of the Level columns:

The last step to get the data ready is creating a few date-related columns for the app to use. The columns that are required include a Fiscal Year column a Fiscal Quarter column, and a Month column. Using the date column from your general ledger, generate these three columns. The columns need to be formatted in the following manner:

 **FiscalYear:**
 'FY19'
* **Quarter:**
 'Q1'
* **Month:**
 1

As with above, fiscal year is 'FY' concatenated to the last two digits of the fiscal year, fiscal quarter is a 'Q' concatenated to the fiscal quarter number, and the month is simply the number that corresponds to the month where January = 1. Your generated date columns may look like the following example:

Finally, order your DataSets using the 'Level' columns, giving priority to the higher levels of the hierarchy. For example, in MySQL, your order by statement should look like this:


 ORDER BY 'Level 0', 'Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5', 'Level 6'


 As soon as all of these columns are present in the data, your DataSet should be ready to go. You may need to filter out any general ledger data that is not used in the P&L report.


**Step 3: Create the ordering DataSet**


 The second DataSet is much simpler than the first. This is the schema for the ordering DataSet:

  |  |  |
| --- | --- | --- |
|
 Account Name
  |
 Parent Account Name
  |
 Order
  |

Initially this DataSet can be blank, but after wiring up your data to the app, you may notice that categories might not display in the order you'd like. If you find that this is the case, you can add rows to this DataSet to enforce an order for your roll-up categories. We recommend using a Domo Webform for this DataSet so that you can easily make changes to it within Domo.


 For example, if my Gross Profit roll-up category has two children, namely Total Revenue and Total Expenses, and they were being displayed with Total Expenses above Total Revenue and I wanted it the other way around, I would add the following DataSet:

  |  |  |
| --- | --- | --- |
|
 Account Name
  |
 Parent Account Name
  |
 Order
  |
|
 Total Revenue
  |
 Gross Profit
  |
 1
  |
|
 Total Expenses
  |
 Gross Profit
  |
 2
  |

After making these changes to the DataSet, make sure that all of the Parent Account names that are the same and also grouped together, are in numerically ascending order and save the DataSet.

##
 Prepping the Balance Sheet Data

Follow the exact same steps for preparing your data for the P&L app for the Balance Sheet app, but use the hierarchy for your balance sheet instead and with the following omissions:


 1. The balance sheet doesn't need a budget column


 2. You do not need to generate 'Level\_Type' columns for the balance sheet


 3. You may need to filter out rows from your general ledger that are not needed for the balance sheet


 4. Balance sheets are cumulative, meaning that they add up all of your previous data to the current period. In order for your number to be accurate, make sure that you include all of your financial data. If having that much data doesn't make sense for you use case, consider aggregating your historical data up to a certain point and adding it to your balance sheet data.


 You will also need to create a separate ordering DataSet for the balance sheet as well.

##
 Prepping the Cash Flows Data

Follow the exact same steps as you did for preparing your P&L app, but instead use the hierarchy of the adjustments portion of your cash flows data, not including cash at start or cash at end of periods. Cash amounts will be calculated in the app— the app does this by taking a sum of a net income category from your P&L data and adjustments from this cash flows hierarchy up to the individual periods being displayed. Take note of the omissions for this data:


 1. The cash flows don't need a budget column


 2. You do not need to generate a 'Level\_Type' column for the cash flows data


 3. You may need to filter out rows from your data that aren't adjustments to cash flow


 4. Cash flows use historical adjustments to calculate cash at the start for any given period. Make sure to include all historical data for you adjustments in order to get accurate numbers. If having that much data doesn't make sense for your use case, consider aggregating your historical data up to a certain point and adding it to your cash flows data.

##
 Wiring Your Data to the App

After the data is ready for the app, you can now deploy the app and connect your data. If you have access to the asset of the app, deploy the asset from the asset library to a page in Domo. If the app has been deployed for you with sample data, navigate to the app, click on the wrench in the top right corner of the app, and click “edit card.”


 On the Edit Card screen that you get to from these two methods, you may re-name the app at the top of the screen if desired. After that, scroll down below the app and you will see a series of tabs that represent each of the DataSets the app needs. You will see tabs related to the apps that you've purchased. If you are wiring up the P&L app, click the tab labeled PNLDATA and use the DataSet picker to pick the main DataSet that you prepared for the P&L part of the app. Map each field to the corresponding field from your DataSet. Repeat this process for the remaining DataSet, using the ordering DataSet you created for the P&L part of the app for PNLORDERING. If you purchased the balance sheet app, use your main balance sheet DataSet for BALANCEDATA, and balance ordering DataSet you created for the BALANCEORDERING tab. If you purchased the cash flows app, use your main cash flows DataSet for CASHFLOWSDATA and cash flows ordering DataSet for the CASHORDERING tab. Scroll up to the top and click Save & Finish and your app should be ready to use.


 If you only purchased one or two of the apps, just leave the sample data connected to the tabs related to the apps that you didn’t purchase. If you have only the cash flows app, you will still need to prepare and connect the P&L data because the cash flows app uses that data to calculate cash at the start.

##
 Using the App

Click the menu in the top left corner of the app to navigate between the apps you've purchased. You can also find the button for exporting your financial reports in this menu. On each of the apps, make sure to check the settings menu by clicking the gear icon at the top of the app. You’ll find various settings here having to do with formatting numbers, toggling sections of the reports on and off, and configuring the ratios and total categories that appear in the apps. These settings carry over to the files that the app exports. Use the date selectors at the top of the apps to choose the date ranges that you would like to see. You can also expand and collapse parent account to see or hide their children. Accounts that are expanded or collapsed also carry over to the files that the app exports.


 Enjoy your automated financial reports!

