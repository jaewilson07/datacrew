

Intro
-------

There are a variety of ways in which you can maximize the use of different chart types in Domo. Because people are familiar with the Excel spreadsheet reporting their organization has been using, one of the first chart types new users select is a Table chart or Table card. Often people will see the Table card and want to replicate the same Excel reports in Domo, but there are a number of different options that may work better to visualize your data and the story you are telling.

##
 Different chart or card options for visualizing your data


####
 Heat Maps

Heat Maps allow you to visualize relationships between data categories and draw attention to "hot spots" of activity and trends.


 See

Heat Maps

for more information.


####
 Bullet charts

If you have data you want to show pacing or progress to a goal, you can use a bullet card, which allow you to see clearly how the pacing is trending.


 See

Bullet Graph

for more information.


####
 Gauge charts

If you have visualizations, for example, that show pacing towards goal or budgets, you could also choose to use a gauge chart. For the department details or broken out tasks and activities, you can create filters or drill paths on the card.


 See

Gauge Charts

for more information.


####
 Gantt charts

Gantt charts can be used to illustrate project schedules, for example, in campaign scheduling systems or project management scheduling. Each task in a project or campaign is represented by a horizontal bar and tasks are represented along the vertical axis, and dates are represented along the horizontal axis.


 See

Gantt Chart

for more information.

###
 Vertical bar plus symbol chart and other bar graphs

If you are looking to show a comparison, from y our Excel spreadhseet data, like what is the different between these two numbers? Is there a trend between numbers? You could utilize a vertical bar plus symbol chart.


 See

Bar Charts

for more information.


####
 Slicer cards

You can use the slicer cards if you want to be able to look through different sections of your Excel data and create cards that allow you to click on a quick filter that immediately pull up a specific segment of your data. You are able to filter on multiple values at once in the Slicer card to show data filtered for various fields.


 See

Slicer Card

for more information.


####
 Period-Over-Period charts

Period-over-period charts allow you to see data for a specified date range compared with data for the same range for another period. If you want to identify week to week or other period over period trends from your data, you could look through the Period over Period chart types and determine which would be best for your data.


 See

Period-over-Period charts

for more information.


####
 Create a custom card app

Using the Domo Developer Portal, you can create custom card apps that will specifically tell your data story. One company created their own Stoplight card app-using the green, yellow, red iconic symbol to indicate changes in their data.


 See the

Developer Portal

for more information.


###
 Take advantage of Domo Chart Properties and tools


1. Create Custom Alerts for your cards


 When you set an alert on a card, you are notified whenever certain conditions (which you specify) are met (a value going above or below a certain threshold, for example). You can select the alert conditions and frequency, as well as share out alerts to others.


 See

Create Alerts

for more information.
2. Use annotation features to make notes in your cards


 To replace the 'Notes' column that is often used in Excel spreadsheets, you can take advantage of the annotating features in Domo


**Date annotation**


 You can add annotations (explanatory notes) to data points in the graph to provide context for your viewers. Each annotation appears in an Annotations sidebar with a colored flag that allows users to quickly match the annotation with its associated data point.


 See

Date Annotations

for more information.


**Note:**
 This functionality is available only for charts containing date/time data. You must have a security role of Editor or above to add date annotations.


**Snapshot annotation**


 You can take a snapshot of a card in Domo and add annotations and share it with other users. One of the most useful features of the Snapshot tool is the ability to add annotations such as text, arrows, and simple shapes. This allows you to call out aspects of the card you want to draw attention to.


 See

Snapshot Annotations

for more information.
3. Use Personalized Data Permissions to get the right data to the right people


 You can use Personalized Data Permissions on cards so that people are only seeing the data that they are responsible for. In on example, a marketing division that is responsible for a number of categories and campaigns could be permissioned to only see the number of campaigns or categories they are in charge of using PDP on a map card representing sales across regions.


 See

PDP Alerts

for more information.
4. Use Drill Paths to provide specific views of your data


 Add layers of drill path by setting filters on specific columns in your data so when a user clicks a graph element in the chart, they drill to another view that represents the underlying data for that column.


 See

Adding A Drill Path

for more information.


###
 Table card best practices


1. Understand row limits in Table Cards


 The maximum number of rows visible in a Table card depends on how many columns are selected. To minimize scrolling, the best practice is to limit data to six columns wide or fewer, and similar in # of columns high - if your data is so wide or so tall/long that it falls off the side or bottom of the table card, then it's not consumable at the page level. You don't want viewers to have to scroll in order to see all of the information that the Table card contains.


 See

Table Cards

for more information.
2. Use Domo color rules


 To color-coordinate various elements of your data, that were previously managed in Excel cells with different patterns or colors on cells, you can take advantage of Domo's color rules and set up customized colors for your data similar to the Excel shadings.


 See

Color Rules

for more information.
3. Customize tables by:


 - Adding Total and Subtotal Rows to Tables


 - Applying formatting to Tables (text font color, text wrap, column widths, header row fill or font color, bold or italic font style, row fill or font color and style, labeling, and so forth)


 - Create a hyperlink within your table card to ease the end user's navigation


 See

Table Cards

for more information on Table customizations.
4. Table cards can be useful when writing and validating a Beast Mode that you intend to then use in a non-table graphic. For example, you can pull in the columns used in a Beat Mode into a table card and then the result of the Beast Mode at the far right or left. You can spot check your math or logic statements, showing the result side-by-side with the inputs. This helps you gain confidence in your Beast Mode results and lets you switch your card away from a table and to a different style of visualization where you can use the Beast Mode.


