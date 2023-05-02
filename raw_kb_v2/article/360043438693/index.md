

Intro
-------

The Scorecard app is an advanced visualization that is used to show how members of a group compare to each other across metrics: ranking performance of sales associates or retail locations, or tracking important metrics from your call center employees. The app is very versatile and can consume most types of data. The configuration of this app is also dynamic and is done almost entirely right inside the app, so you are able to change your metrics, filters, and groups at any given time.

##
 Prep Your Data

The Scorecard app expects a dataset where each row represents a group member and data relating to that group member at a certain point in time. See the follow example dataset:

In addition to formatting this way, the app also uses Beast Mode calculations from what you have created on your dataset in order to handle more complicated metrics. At this point, make any Beast modes you may need and make sure that these are saved to the dataset. If you need help with creating Beast Modes, read

Adding a Beast Mode Calculation to Your Chart

.

##
 Installation

To install the Scorecard app, click the + button in your Domo instance to create a new card then select the Custom App option.


 Select the Scorecard app that you have downloaded from the Appstore from the asset library and click the orange "New Card" button. From there you will be prompted to name the application that is located at the top of the page and then connect it to your dataset at the bottom. Select the "DATA" tab at the bottom of the app and then click the "SELECT DATASET" button to choose the dataset that you've prepared for the Scorecard app.


 Once you have selected your dataset, click the "SAVE & FINISH" button located in the top right corner of your screen.

##
 Enable Configuration

In order to allow users to see the configuration elements of the Scorecard app, you'll need to create a group in Domo and then add users to that group. Users that are not a member of that group will not be able to add or delete metrics, filters, or groups in the app.


 Have a Domo admin navigate to the Admin Setting in Domo by selecting the "MORE" icon at the top, then clicking the "ADMIN" icon. Once you are in Admin, click on the "Groups" option from the list on the left. Click "NEW GROUP" and name the new group "\_Scorecard\_Config", paying attention to the underscores and spacing. The groups needs to have the exact name in order for the app to work properly. After the group is created, add any users to the group that you would like to have configuration access in the app.

##
 Configuring in the App


#####
**Setting your Groups**

After you have completed those first few steps, you should now be able to add metrics, filters, and group to your Scorecard app. First navigate to the Scorecard app in your instance and add at least one group to the app. Click on the "Select Group" button on the left side of the app. You'll see a pop-up that prompts you to add a new group, click that button to configure your added groups.

You'll see the following modal:*


 This modal populates with any field from your data that is a type: text field. Click the checkbox next to any column that you'd like to see as a group in the app and click "Add". After the groups have been added, select the "Select Group" button and you'll see the options you chose as selectable options for that column dropdown. Choose one of your newly added options.

####
**Set a Date Range**

To select a date range click the "Set Date Range" button at the top of the app. A modal will open that has you select a column to use as your date column in the app. The modal looks like this:


 Click the column dropdown and you'll be able to pick from a list of columns from your dataset that include a date type to use as your date filter. You can pick from a handful of options under date range, including
 **Current**
 ,
 **Previous**
 ,
 **Last**
 , and
 **Between**
 . Depending upon your selection, you'll see another dropdown or options related to your selection. Make your selections and hit "Save". Additionally, the app also supports a basic fiscal calendar setting, you can click the checkbox for "Use Fiscal Calendar" and then enter a Q1 fiscal start date to enable the fiscal year setting.

####
**Set the Filters**

To set filters, click the blue + button located at the top of the app to configure your filters. You can set as many filters as you would like in the app. The first three filters that you set will always be visible and any additional filters will go into an overflow section of the app, so you may want to consider which filters you will use the most and configure those first.


 The Column dropdown will again be pre-populated with any text columns that exist in your dataset. Pick the column that you'd like to use, then under the Filter Types dropdown choose either
 **Multiselect**
 or
 **Single Select**
 as the type. Multiselect means that you can choose as many or as few values for the filter at any single time, while the Single Select means that only one value can be chosen for that filter at any single time. Repeat this process to add as many filters to the app as you'd like, each filter will appear as a new blue button at the top of the app, or will be put into a blue overflow button at the top of the app that appears after the first three filter buttons.


 To select values for the filters, select any of the filter buttons to open a modal where you can select values for all of the filters at the same time.


 Click the dropdown for an individual filter to select a value for your selected filter, the click save when you are finished editing. Filters can also be left blank.

####
**Adding Metrics**

For adding metrics, click either the large + button in the middle of the app, or the small + button on the right side of the app. The middle button will take you directly to the Create Metric modal, while selecting the smaller + button to the right will take you to the metric toggle modal. From the metric toggle modal you'll need to click "Create New Metric" to open the Create Metric modal.


 The Column dropdown box for this modal is populated from any column in your dataset that is number, as well as any numeric Beastmodes that you have created on the dataset. Beastmodes are used here for any complicated calculations you may need to run on your data to create a metric. If you need help with creating Beast Modes, read

Adding a Beast Mode Calculation to Your Chart

.


 Use the Column dropdown to choose a column or Beastmode, then name your metric under Title. If you choose a Beastmode column, both the Aggregation and Spark Line Metric options will be automatically set to "Beastmode" for you. If your column is not a Beastmode column, you can choose either basic
 `SUM`
 or an
 `AVERAGE`
 for your calculation. After setting the Aggregation, set the Unit to "Percent", "Number", or "Currency" and set the decimals to either 0,1, or 2. These settings can change how your number is displayed in the app.


 Finally, the Spark Line Metric setting controls how the spark line for each metric is calculated. The spark line measures your metric over your entire dataset and not by individual group members. You can set this to either a sum over time or an average over time.


 Repeat this process for any of your metrics that you'd like to see in the Scorecard app. You can create as many metrics as you'd like!


 After creating your metrics, you can select the + icon on the right side of the app again to open the metric toggle modal. Click the eye icon next to a metric to add it to the current view.

##
 Viewing Your Data and Saving Your Views

If you have a group select, a date range set, and at least one metric toggled on, then you'll see data populated to the charts in the app (as long as you have valid data for the settings you chose). You can add up to 8 metrics at once and have as many active filters at any time as well.


 Views in the app can be saved as bookmarks. A view consists of your selected group, date range setting, active filters, and displayed metrics. When you have your desired view in the app, click the Bookmarks icon in the top left of the app.


 Click the Save icon in the upper right corner of the modal to save your current view as a bookmark. This will then open a modal where you can review your currently selected view and name your bookmark. If you type in the name of an existing bookmark, the button at the bottom will change to "Save" instead of "Save as New", and if you click the Save button it will override the existing bookmark with that same name. As soon as you've saved your first bookmark, the app will automatically populate based upon your most recently saved bookmark.


 If you click the Bookmarks button again, you will see all of the bookmarks that you've created. Clicking the arrow icon on the bookmark will apply that bookmark to you current view.


 If you delete a metric, filter, or group that is used in a bookmark, the associated bookmark will be deleted as well. Bookmarks can be created and deleted by any users and not just the configuration users.


###
 Rearranging Metrics

After you have selected more than one metric to view in the app, the display order of the metrics can be changed as well. The rearrange experience can be accessed from one of two places:
 *see screenshots below.*


 The menu at the top of the app is the
 **global menu**
 , where you are able to select or create metrics, and open the rearrange experience. The three-dotted menu at the top of each metric is the
 **metric menu,**
 where you can edit metric settings, change the sort order of the metric, select and hide metrics, and open the rearrange experience.


 The rearrange experience looks like this:

Click, or tap and drag to change a metric's position. As soon as the metrics are in your desired order, click or tap "Done" to save your changes.

##
 Member List Features

The Member List on the left side of the app can be searched for by using the search bar above the list of group items. The list can also be sorted either alphabetically or by the order of performance of a specific metric that is currently displayed in the app. To do this, click the Sort dropdown below the search bar and choose which option you'd like to sort by.


 When you click either the bar chart or the arrow next to a group member's name, it will open the comparison view for that selected group member. It will look like this:


 The comparison view will highlight the group member's position in each of the bar charts, as well as will show what that group member's individual metric value is instead of the summary number at the bottom of the app. In the left panel, you will see a comparison for each individual metric in the app. You will see a current value of the metric, a growth (or decrease) percentage according to which comparison option is selected in the comparison dropdown (i.e. year over year or previous period), and a radial showing what percentile rank the member is in as compared to the other group members for the metric.

####


