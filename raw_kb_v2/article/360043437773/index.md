

Intro
-------

Using Domo's Scheduled Reports, you can schedule reports to be sent to users and/or groups at specified intervals. You can set a report schedule for a dashboard or for an individual card on a dashboard. You can send reports to users inside or outside your organization; however, users outside your organization must be in your list of authorized domains. For more information, see

Specifying Authorized Domains for Invited Users

.


 Users receive scheduled reports via email. Reports for a card include an image of that card; reports for a dashboard include images of all cards on that dashboard. You can select a card image to open the card Details view directly in Domo, or a dashboard image to open that dashboard. The image used for a given card is the same as the "Large" view of the card in a dashboard; therefore, any information in a card that does not appear in the dashboard view will likewise not appear in the report version (such as the "Total" value that appears in the Details for a Pie graph).

*Note:**
 Card descriptions are not supported in scheduled reports. If a description for a card is enabled, that description does not display in a report for the card or for a dashboard that contains the card.

You can access the Scheduled Reports if you have a default security role of Participant or higher or a custom role with the Export from Domo grant enabled. Participant-level users can only create scheduled reports at the dashboard level; they cannot send single cards as reports. For more information about default security roles, see

Managing Custom Roles

.

*Note:**
 Domo recommends that you do not schedule reports on cards found on the Overview Page, as this can cause issues when the cards are sent automatically. A best practice is to move the cards from the Overview Page before using them in scheduled reports.


**Video - Scheduled Reports Overview**

Caveats
---------


* There is a 10 MB limit on email size for standard Pages and a 5 MB limit on Domo dashboards.
* The following email clients are supported (use of any other email client may or may not result in successful rendering or viewing of Scheduled Reports):

+ Any web-based email client (i.e. Gmail, Outlook Web App, etc.)
	+ Microsoft Outlook
	+ Apple Mail

*Important:**
 Domo only supports the two most recent non-beta versions of email clients.


 Parts of the Scheduled Reports edit dialog
--------------------------------------------

In the Scheduled Reports edit dialog, you can schedule reports and specify who receives the report emails. You can also edit settings for a report that has already been scheduled.


 The following screenshot shows options in this dialog:

You can use the following table to learn more about these options:


 Option
  |
 Description
  |
| --- | --- |
|
 Schedule controls
  |
 Let you set up an interval at which this report is sent to the users and/or groups you specify. You can choose the frequency for the report (daily, weekly, or monthly), the report start and end date, and other options depending on the frequency.


 If you select
 **Daily**
 , you can specify the time when the report is sent out and can also indicate whether weekends are to be included. Daily times are available only in 15-minute increments (for examples, 9:00, 9:15, 9:30, etc.).


 If you select
 **Weekly**
 , you can choose the days of the week and the daily time on those days when the report is sent out. Daily times are available only in 15-minute increments (for examples, 9:00, 9:15, 9:30, etc.).


 If you select
 **Monthly**
 , you can choose from several different options: the first or last day of the month, specific days of the week, or specific dates during the month. For all options, you can choose the daily time when the report is sent out. Daily times are available only in 15-minute increments (for examples, 9:00, 9:15, 9:30, etc.).


 The time zone for reports is UTC-based. For more information about time zones, see

Time Zone Issues FAQ

.
  |
|
 Send list
  |
 Shows all users and groups who receive this report on the specified schedule. You can remove a user or group by clicking the "x" to the right of the name.
  |
|
 People/group search
  |
 Lets you add individuals and/or groups to the list of people who receive this report on the specified schedule. By default you can add user email addresses from any domain. If you want to limit the domains from which email addresses can be selected, you can specify those domains in the Admin Settings. For more information, see

Specifying Authorized Domains for Invited Users

.
  |
|

Attachment control (appears for Cards only)
  |
 Lets you attach a spreadsheet of the underlying data for a card in CSV format. Note the following when using this option:
 * This option is available
 *only*
 for individual cards, not dashboards.
* Only the actual data used in the card is packaged in the CSV file,
 *not*
 all of the data in the underlying DataSet.
* The attachment has a file size limit of 5MB.
 |
|
 Enable control
  |
 Lets you enable or disable this report. You can also disable a report in the
 **Scheduled Reports**
 Page clicking the ellipsis (...) next to the report and selecting
 **Disable**
 .
  |

Scheduling reports
--------------------

Follow the steps below to schedule reports for cards or dashboards in Domo.


 1. Navigate to the card or dashboard you want to schedule a report for.


 2. Do the following depending on the type of report:

  |  |
| --- | --- |
|
 Card report
  |
 a) Hover over the card until

*Card options**
 displays.

b) Select
 **Card options**
 .

The card options menu displays.

c) Select
 **Schedule as Report**
 .


 The schedule report modal displays.

|
|
 Dashboard report
  |
 a) Select

*Sharing**
 in the dashboard app bar.


 The sharing menu displays.

b) Select
 **Schedule as Report**

.

The schedule report modal displays.

|


 3. (Optional) Enter a subject for the report in the
 **Subject**
 field. This text is the subject line for the report email. The default subject is
 *Card Title*
 Report.


 4. Select a frequency from the
 **Send report**
 list. The options are daily, weekly, and monthly.


 5. Configure the options for your frequency. In this example, after selecting daily, enter the daily send time and check the box if you want to include weekends.


 6. Enter the desired start and end dates in the appropriate fields.

7. In the
 **Send to people and groups**
 field, enter the name of a user or group to receive the report. The top results for your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.

8. Select the name of the user or group from the list.


**Note:**
 You must select at least one user or group.


 The name of the user or group appears in the field.


 9. (Optional) Add additional users or groups to the send list for this report by repeating the previous two steps.


 10. (Optional) Remove a user or group from the field by clicking
 **X**
 beside the name.

11. Select
 **Add.**


 All users and groups whose names appear in the field display in the send list.

12. (Optional) If you are scheduling a report for a card and you would like to send the underlying data for the card as a CSV attachment, check the box for
 **Include a spreadsheet of your data as an attachment (5MB limit)**
 .


**Note:**
 This option is not available for reports for dashboards.

For a list of caveats when using this feature, please see the entry for

Attachment control

in the table earlier in this article.


 13. Select
 **Schedule**
 .


 The modal closes.

*Note:**
 You can schedule multiple reports for a given card or dashboard. If you schedule more than one such report, all of the versions of your report are available when you select
 **Card options**
 >
 **Edit Scheduled Reports**
 for a card or
 **Dashboard options**
 >
 **Edit Scheduled Reports**
 for a dashboard.

Unsubscribing from a report
-----------------------------

When you are included in the send list for a scheduled report, you receive emails for that report on the specified schedule until the expiration date for the report is passed. You can unsubscribe from any report that you receive to stop receiving the emails.


 Follow these steps to unsubscribe from a scheduled report:


 1. Open any report email you have received.


 2. Scroll to the "Why am I getting this report?" panel at the bottom of the email.

3. Select the linked portion of
 **Click to unsubscribe from this report**
 .


 A dialog displays confirming that you want to unsubscribe from the report.


 4. Select
 **Confirm**
 in the dialog.

A message displays confirming that you are unsubscribed from the report. You will no longer receive emails for this report.

Managing your scheduled reports
---------------------------------

In the Scheduled Reports Page you can see all of the reports you've scheduled and those you receive, along with a history of reports that have been sent, both successfully and unsuccessfully. For any report in the Page, a number of options are available, including viewing the send history; editing the report; or unsubscribing from, disabling, or deleting the report. You can also choose to send the report to everyone in its "Send" list now, instead of having to wait for the scheduled time.


 The Scheduled Reports Page allows you to manage only those reports you send and receive. In the
 **Admin Settings**
**> Scheduled Reports**
 tab you can manage all scheduled reports for your company. You must have an "Admin" default security role or a custom role of "Manage All Company Settings" to access this tab. For more information about managing reports for your company, see

Managing all scheduled reports for your company

. For more information about default security roles, see

Managing Custom Roles

.

##
 Viewing the report history

You can see the send history for an individual scheduled report or for all scheduled reports in your Domo. In this history you can see all reports that have been sent, or you can filter to show reports that have been sent successfully or unsuccessfully. You can view the history for an individual scheduled report only if you are the report owner or you have an "Admin" default security role or a custom role of "Manage All Cards and Pages." For more information about default security roles, see

Security Role Reference

.


**To see the history for your reports,**

. Select
 **Scheduled Reports**
 in the
 **More**
 menu at the top of the screen.
2. Do one of the following:

* To see the history for all reports, click
	 **History**
	 .
	* To see the history for an individual report, select

**> View History.**


	 The

 menu only appears if you are the report owner or a custom role of "Manage All Cards and Pages."


###
 Editing a scheduled report

You can open an existing scheduled report for editing in a number of different ways. You can choose to edit either the report schedule or the actual content of the report.


 You can edit the settings for the report if you are the owner of the report or you have an "Admin" default security role or a custom role with "Manage All Cards and Pages" enabled. For more information about default security roles, see

Managing Custom Roles

.

###
 Editing the schedule for a report

When you choose to edit the schedule for a report, the edit dialog for the report opens. You can then make changes to the name, schedule, and recipients as described in

Scheduling a report

, above.


**To edit the schedule for a report,**

. Do one of the following:

* In the Card Page, select the
	 **Schedule as a Report**
	 option for the Card or Page.


	 Because a scheduled report has already been created for the Card or Page, the edit dialog appears with all of the information already entered in, ready for editing. If no scheduled report had been created, the dialog would appear as a "blank slate," with all of the default options selected. If you select
	 **Schedule as a Report**
	 for a Card or Page you do not own, and you do not have an "Admin" default security profile or a custom role with "Manage All Cards and Pages" enabled, the dialog appears with the default options selected.
	* In the Scheduled Reports Page (which you access by selecting
	 **Scheduled Reports**
	 in the
	 **More**
	 menu at the top of the screen), click the ellipsis (...) for the report you want to edit then select
	 **Edit Schedule**
	 .
2. Make your desired edits.


 For more information about report scheduling options, see

Scheduling a report

.
3. Click
 **Schedule**
 when finished.


####
 Editing the content for a report

When you choose to edit the content for a report, a special view of the Card Page or Card Details view appears (depending on whether the report is for a Page or Card). In this view you can apply Filters to the Page or Card, just as you could normally. You can then save these changes right to the report. All recipients of the report will then see the content with your Filters applied. However, since the Filters were applied only to the report itself and not to the actual Page or Card, other users viewing the Page or Card cannot see the changes.


 The following screenshot shows an example of this special Filter view for a Card called "Customer Satisfaction." Two buttons are unique to this view—
 **Save Filters to Report**
 and
 **Close Report**
 . The first button saves Filter changes you have made to this report. The second button closes this view, returning to the regular Details view for the Card.

For information about applying Filters to a Page, see

Filtering Data in a Card Details View

.


**To edit the content for a report,**

. In the Scheduled Reports Page (which you access by selecting
 **Scheduled Reports**
 in the
 **More**
 menu at the top of the screen), click the ellipsis (...) for the report you want to edit then select
 **Edit Report**
 .
2. Apply Filters to the Page or Card as desired.
3. Click
 **Save Filters to Report**
 when finished.
4. Click
 **Close Report**
 to close this view.


###
 Unsubscribing from a scheduled report

When you unsubscribe from a report, you no longer receive emails for that report. However, this does not disable the report for other users; any other subscribed users will continue to receive the report. You can also re-subscribe to a report from which you have unsubscribed.


**To unsubscribe from a report,**

. Select
 **More**
**> Scheduled Reports.**
2. Click
 **Subscribed**
 .
3. (Optional) To re-subscribe to the report, click
 **Subscribe**
 .

You can also unsubscribe from a report in the edit dialog by clicking the
 **Enabled**
 button at the bottom of the dialog.

##
 Disabling a scheduled report

When you disable a report, that report is disabled for all users in the recipient list. This action does
 *not*
 remove the scheduled report from Domo. You can disable a report
 *only*
 if you are the owner of the report or you have an "Admin" default security role or a custom role with "Manage All Cards and Pages" enabled. For more information about default security roles, see

Managing Custom Roles

.


**To disable a report,**

. Select
 **More**
**> Scheduled Reports.**
2. Select

*> Disable**
 .


 The

menu only appears if you are the report owner or you have an "Admin" security profile or a custom role with "Manage All Cards and Pages" enabled.


###
 Deleting a scheduled report

Deleting a report removes it from Domo entirely. You can delete a report
 *only*
 if you are the owner of the report or you have an "Admin" security role or a custom role with "Manage All Cards and Pages" enabled. For more information about default security roles, see

Managing Custom Roles

.


**To delete a report,**

. Select
 **More**
**> Scheduled Reports..**
2. Select

*> Delete**
 .


 The

menu only appears if you are the report owner or you have an "Admin" security profile or a custom role with "Manage All Cards and Pages" enabled.


###
 Sending a scheduled report immediately

You can send a scheduled report to the users in the recipient list immediately instead of having to wait for the scheduled time. You do this in the
 **Scheduled Reports**
 Page. This option is available
 *only*
 if you are the owner of the report or you have an "Admin" security role or a custom role with "Manage All Cards and Pages" enabled. For more information about default security roles, see

Managing Custom Roles

.


**To send a scheduled report immediately,**

. Select
 **More**
**> Scheduled Reports.**
2. Select

*> Send Now**
 .


 The

menu only appears if you are the report owner or you have an "Admin" security profile or a custom role with "Manage All Cards and Pages" enabled.

Managing all scheduled reports for your company
-------------------------------------------------

In the
 **Admin Settings**
**> Scheduled Reports**
 tab you can manage all scheduled reports for your company. You can edit, disable, or delete any schedule version for any report. You can also see the send history for all reports. You can enable or disable the sending of all reports in your company in the
 **Settings**
 tab using the
 **Enable scheduled reports**
 toggle. You can also choose to block Scheduled Reports from being sent to external email addresses by disabling the
 **Allow scheduled reports for people outside your instance**
 toggle.

You must have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to access the Scheduled Reports

tab in the Admin Settings. For more information about security roles, see

Security Role Reference

.


 You can manage your own reports (i.e. those you send as well as those you receive) in the
 **Scheduled Reports**
 Page in Domo. You do not need Admin-level privileges to access this Page.


 For information about the Admin Settings interface, see the

Admin Settings Overview

.

*Video - Scheduled Reports Admin Features**


###
 Editing a scheduled version of a report

In the
 **Admin Settings > Scheduled Reports > Reports**
 tab, you can open any schedule version of a report in your company's Domo for editing. You can edit the schedule or recipients, or enable or disable the report version.


**To edit a scheduled version for a report,**

. Click
 **More**
**>**
**Admin**
 .


 The Admin Settings appears.
2. Click Scheduled Reports.


 The Scheduled Reports panel appears.
3. In the list of scheduled reports in the middle pane, locate the report you want to edit and click on it.


 You can do this by scrolling through the list or entering a report name to filter in the
 **Search Scheduled Reports**
 box.
4. In the rightmost pane, locate the schedule version of the report you want to edit.
5. In the ellipsis (...) menu, select
 **Edit Schedule**
 .


 You can also select
 **Edit Report**
 to open the special Filters view for the report (as described in

Editing the content for a report

above).
6. Make your desired edits.


 For more information about report scheduling options, see

Scheduling a report

.
7. Click
 **Schedule**
 (or
 **Save Filters to Report/Close Report**
 if you chosen to edit the report content).

Your changes to the schedule version of the report are saved.

##
 Disabling a scheduled version of a report

In the
 **Admin Settings >**
 Scheduled Reports
 **> Reports**
 tab, you can disable a schedule version of a report. When you disable a schedule version of a report, that report version is disabled for all users in the recipient list. This action does
 *not*
 remove the report version from Domo.


**To disable a scheduled version of a report,**

. Click
 **More**
**>**
**Admin**
 .


 The Admin Settings appears.
2. Click Scheduled Reports.


 The Scheduled Reports panel appears.
3. In the list of scheduled reports in the middle pane, locate the report you want to disable and click on it.


 You can do this by scrolling through the list or entering a report name to filter in the
 **Search Scheduled Reports**
 box.
4. In the rightmost pane, locate the schedule version of the report you want to disable.
5. Click the ellipsis (...) and select
 **Disable**
 .

The schedule version of the report is disabled for all users in the recipient list.

##
 Deleting a scheduled version of a report

In the
 **Admin Settings >**
 Scheduled Reports
 **> Reports**
 tab, you can delete a schedule version of a report. Deleting a version of a report removes it from Domo entirely.


**To delete a scheduled version of a report,**

. Select
 **More**
**>**
**Admin**
 .


 The Admin Settings appears.
2. Click Scheduled Reports.


 The Scheduled Reports panel appears.
3. In the list of scheduled reports in the middle pane, locate the report you want to delete and click on it.


 You can do this by scrolling through the list or entering a report name to filter in the
 **Search Scheduled Reports**
 box.
4. In the rightmost pane, locate the schedule version of the report you want to delete.
5. Click the ellipsis (...) and select
 **Delete**
 .

The schedule version of the report is deleted from Domo.

##
 Viewing the history for all scheduled reports

In the
 **Admin Settings >**
 Scheduled Reports
 **> History**
 tab, you can see the send history for all scheduled reports in your Domo. In this history you can see all reports that have been sent, or you can filter to show reports that have been sent successfully or unsuccessfully.


**To see the history for your reports,**

. Select
 **More**
**>**
**Admin.**


 The Admin Settings appears.
2. Click Scheduled Reports.


 The Scheduled Reports

panel appears.
3. Click the
 **History**
 tab.


 The send history list appears for all scheduled reports in your Domo. You can filter to show successfully or unsuccessfully sent reports by clicking the
 **Successful**
 or
 **Unsuccessful**
 subtab.


###
 Enabling or disabling all scheduled reports

In the
 **Admin Settings >**
 Scheduled Reports
 **> Settings**
 tab, you can enable or disable all scheduled reports in your Domo just by clicking a toggle switch.


**To enable or disable all scheduled reports in Domo,**

. Select
 **More**
**>**
**Admin.**


 The Admin Settings appears.
2. Click Scheduled Reports.


 The Scheduled Reports

panel appears.
3. Click the
 **Settings**
 tab.
4. Click the toggle switch in the upper left corner of the right panel.

All reports in your Domo are enabled or disabled.

