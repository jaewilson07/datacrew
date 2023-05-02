

Intro
-------

When you set an Alert on a Visualization Card, you are notified whenever certain conditions (which you specify) are met (a value going above or below a certain threshold, for example). You set Alerts in the
 **Create New Alert**
 dialog.

*Note:**
 You can set Alerts only for PDP (Personalized Data Permissions) policies you are a member of. For example, if you are a member of a policy with permissions to view data for western states only, any Alert you created would apply only to those states. For more information, see

PDP and Alerts

.

You can specify whether you receive Alerts via email or text. For more information, see

Configuring Notification and Alert Settings

.

*Video - Alerts Overview**

Creating an Alert
-------------------

You can access the
 **Alerts**
 tab to create an Alert in either of the following ways:

 Selecting
 **Alert Me**
 from the Card's

menu in the Card Page.
* Opening the Card
 **Details**
 view, then clicking

to open the
 **Alerts**
 tab.

After you have opened the
 **Alerts**
 tab in the Details view, you can create an Alert by clicking
 **New Alert**
 . You are then taken to a three-step "New Alert" wizard in which you can create your Alert. The steps in the wizard are as follows:

. **Set up your Alert rule.**
 Here you specify the conditions that trigger your Alert. You can also specify how often Domo checks to see if the Alert conditions have been met.
2. **Compose a Notification message**
 . Here you can customize the message for the Alert using a variety of different macros to indicate available metrics.
3. **Share this Alert**
 . Here you specify the users, groups, and Buzz conversations that receive Notifications when the Alert is triggered.

All of these steps are described in more detail in continuation.

##
 Setting up your Alert rule

In Step 1 of the wizard, you specify the conditions that cause your Alert to trigger. You can also set the frequency at which Domo checks to see if the Alert has triggered.


 If PDP policies have been set on the DataSet for the Card, you can specify how PDP is applied to Alerts in Step 1 of the wizard. For more information, see

PDP and Alerts

.


 If the data in the Card is filtered via either Page or Card Filters, you are given the option to specify whether the Alert is applied to the filtered or unfiltered version of the Card.

###
 Specifying the Alert conditions

Alerts are made up of the following parts:

 The item being measured (the "metric"). This could be a specific category or series in your chart, the current value of the chart, or the total of all items in the chart. It could also be a calculation applied to a specific category or series. For example, you could apply an "Average" calculation to a given category, then configure your Alert to trigger whenever that value fell below a specified threshold. Domo provides a number of such calculations, from simple arithmetic operations like "Sum of" to advanced statistical operations such as "Skewness of" and "Kurtosis of."
* A conditional statement that connects the measure to the value or percentage and determines when your Alert is sent. Domo provides a variety of condition statements to choose from, including greater than, less than, and equal statements and combinations of these. You can also specify a particular degree of change using the
 **changes by**
 ,
 **increases by**
 , and
 **decreases by**
 condition statements.
* The numerical value or percentage used as the threshold in your Alert.

You can build an Alert by specifying these components in the three fields in Step 1 ("Rule") of the Alert wizard.

In the preceding screenshot, the user has selected
 **Poor Customer Service (Most recent month)**
 as the measure and
 **Increases by (+ %)**
 as the conditional statement, and has entered

5

as the numerical value. This Alert triggers when the "Poor Customer Service (Most recent month)" percentage increases by 5%.

###
 Specifying the Alert frequency

Also in this tab, you can specify how often Domo checks checks to see if the Alert is in a triggered state. You do this by clicking the arrow at the bottom right of the configuration options and selecting the desired option.

Options include
 **Every time the data updates**
 ,
 **Hourly**
 ,
 **Daily**
 ,
 **Weekly**
 , and
 **Monthly**
 .

 If you select
 **Every time the data updates**
 , Domo checks the Alert any time the data in the Card is refreshed.
* If you select
 **Hourly**
 or
 **Daily**
 , you can choose whether to include weekends in your evaluation. You can also set the specific time of day when you choose
 **Daily**
 .
* If you select
 **Weekly**
 , you can select the specific day of the week along with the time of day.
* If you select
 **Monthly**
 , you can select a specific date or the first/last day of the month, along with the time of day.

Depending on the Alert condition you've selected, a checkbox may also appear reading
 **Keep sending Notifications while in a triggered state**
 . When this box is checked, instead of sending out a single Notification as soon as the Alert enters a triggered state (which is the default functionality), Domo sends out Notifications based on the selected frequency
 *until the Alert conditions are no longer met*
 . For example, let's user Gus creates the Alert rule "Summary number is greater than 500," selects
 **Weekly**
 as the frequency, then checks this box. As soon as the summary number surpasses 500, a Notification is sent. Then, as long as the summary number remains above 500, new Notifications are sent on the specified weekday at the specified time. If the number drops below 500, Notifications will stop being sent. If, on the other hand, Gus doesn't check this box, only an initial Notification is sent when the Alert is triggered.


 The
 **Keep sending Notifications while in a triggered state**
 checkbox appears only for threshold-based Alerts, as opposed to those one-time Alerts that trigger when a certain degree of change is met. For example, for an "Is greater than" Alert (e.g. an Alert that triggers when its value surpasses 1000), this box would be available because the Alert still applies as long as the value remains above the threshold. But for a "Changes by" Alert, the box is not available because once the given value is reached, only a single Notification needs be sent—the Alert's work is then done.

###
 Determining whether to honor Filters

If filters have been set on this Card on either the Page or Card level, an option appears allowing you to toggle whether those filters are honored in the Alert. If you uncheck the box, the Alert will be applied to the unfiltered version of the Card. You can click the
 **Show filters**
 option to see the currently applied filters.

##
 Customizing your Alert message

In Step 2 of the wizard, you can customize the Notification message that is sent whenever the Alert is triggered. You can choose from a wide variety of macros to include in the message. Macros are used to reference different variables related to your Alert, such as Alert name, previous or current value, Alert owner, change in Alert value, and so on. For example, in the default Notification message that appears when you enter Step 2, macros are used to indicate the Alert rule as configured in Step 1 of the wizard, the name of the Card in which the Alert is found, the previous Alert value, and the current Alert value.

In the left panel of the wizard, under "Message," you can see the Notification message with the variables switched in for the macros. So for the default Notification message shown above, this message might read as follows:

In this example, [Full rule] has been replaced by "Sum of 1-Very Dissatisfied is greater than or equal to 50"; [Card Name] has been replaced by "Customer Satisfaction"; [Previous Alert value] has been replaced by "empty" (because there is no previous value for this Alert); and [Current Alert value] has been replaced by "653."


 You can see a list of macros by clicking the
 **Metric**
 button above the template. For each macro, the list shows you the name of the corresponding variable in your Alert so you know if you are pulling over the right information.

If you edit the custom message then decide you want to revert it back to the default, you can do so by clicking the

in the top right corner of the Alert message field.

##
 Attaching an action

Alert Actions drive powerful action for your business by triggering events such as Webhook integration with third-party systems and Projects & Tasks integrations in Domo. You can attach an action to an Alert by clicking the
 **Attach Action**
 button below the message preview pane, choosing the action type (either a Webhook or Task), then configuring the action.

###
 Webhook actions

By attaching Webhook actions to Alerts, you can cause events to be triggered in third-party systems when your Alert threshold is attained. For example, as a CFO,  you might create a Webhook that causes a celebratory message to be posted to your company Facebook page when your stock value reaches a certain price.


 To create a Webhook action, all you need to do is input the Webhook URL, choose the HTTP API method (POST, DELETE, PATCH, GET, and PUT are available), then enter a secret authorization key if required. You cannot edit the Webhook body aside from the customized Alert message, which was discussed previously.


 After you have configured your action, you can test it by clicking
 **Send Test**
 .


**Video - Alert Actions Overview**


**To configure a Webhook action,**

. Click the
 **Attach Action**
 button, which is located under the
 **Message**
 pane in the Alert Wizard.
2. Select
 **Domo Webhook**
 .
3. Enter the URL for the desired Webhook.
4. Select the desired HTTP method in the
 **Method**
 menu (
 **POST**
 is the default).
5. (Conditional) Enter an authorization key in the
 **Secret**
 field if necessary to authenticate.
6. (Conditional) If you didn't customize your Alert message previously, you can do this by clicking the arrow next to
 **Webhook body**
 , scrolling down to the bottom of the body content, then clicking the pencil to open the message editor. For more information about the options here, see

Customizing your Alert message

.
7. (Optional) Click
 **Send Test**
 if you want to test your configuration.
8. Click
 **Next**
 to move onto the next step in the wizard.


####
 Task creation action

You can cause a Task to be created when an Alert is triggered. You can choose the Project in which the new Task will be added, edit the customized Alert message if you haven't already, and select an owner for the new Task. As soon as the Alert threshold is reached, this new Task will be added to Domo and assigned to the owner you have selected. For more information about Projects and Tasks, see

Projects and Tasks

.


**To configure a Task action,**

. Click the
 **Attach Action**
 button, which is located under the
 **Message**
 pane in the Alert Wizard.
2. Select
 **Task**
 .
3. In the
 **Project**
 menu, select the Project where this Task should live.


 If the desired parent Project doesn't exist yet, you will need to create it. For more information, see

Creating a Project

.
4. (Conditional) If you didn't customize your Alert message previously, you can do this here by updating the fields in the
 **Task name**
 area as necessary. For more information about the options here, see

Customizing your Alert message

.
5. Select the desired Task owner in the
 **Owner**
 menu.
6. Click
 **Next**
 to move onto the next step in the wizard.


###
 Sharing the Alert

In Step 3 of the wizard, you can share Alerts with other users and/or groups in your Domo so they receive Notifications every time that Alert triggers. You can also write a custom message to let users know what is happening as well as and delete users and groups who should no longer be able to see the Alert. You can delete users and groups only if you have an "Admin" default security profile or a custom role with "Manage All Groups" enabled. For more information about default security profiles, see

Managing Custom Roles

.


 You can also share Alerts in Buzz conversations, in which case all users following the conversation receive Notifications. You can search for conversations then select those conversations you want the Alert to be shared in. This search searches keywords from conversation names only; it does
 **not**
 search conversation content.


 Alerts are sent to the email address and telephone number specified in the user profile. For more information, see

Profile Page

.


 For information about configuring Notifications, see

Configuring Notification and Alert Settings

.


 When you share Alerts with other users in your Domo, they automatically gain access to the Cards those Alerts are tied to if they do not already have it.


**To share an Alert with users and/or groups,**

. In the
 **Share this Alert**
 step of the Alert creation wizard, add a person or group to share with by clicking in the
 **Enter users, groups, or emails**
 field and selecting the desired user, group, or email.


**Note:**
 In order to share an alert with a group when the DataSet powering a card has PDP policies applied, there must be a PDP policy set specifically for that group.


 When you select a user or group, that user or group's name appears in the field. You can share with multiple users and/or groups by selecting all of their names and adding them to the field.
2. (Optional) Write a message in the "I thought you might find this interesting" field to let users know what is happening.
3. Click
 **Save**
 .

The Alert is shared with the selected users. If you wrote a Notification message, that message is sent to the users you shared with.


**To remove users or groups from the shared list for this Alert,**

. In the Details view for the Card with the Alert, click the

icon to show the Alerts for this Card.
2. Click the
 **Share**
 button for the Alert you want to remove users from.
3. Expand the section at the bottom of the dialog by clicking the message reading "Already shared with [person]."


 This displays rows for all users and/or groups the Alert is being shared with.
4. Remove a user or group from the shared list by clicking the "x" for that user or group.

The user or group is removed from the shared list and no longer receives Notifications when this Alert is triggered.


**To share an Alert in a Buzz channel,**

. In the
 **Share this Alert**
 step of the Alert creation wizard, click the
 **Buzz**
 tab.
2. (Optional) Use the
 **Filter Buzz channels and chats**
 field to search for conversations you want to share this Alert in.
3. Check the boxes for all conversations you want to share the Alert in.
4. Click
 **Share**
 .

The Alert is shared in the selected conversations. Any users following those conversations will now receive Notifications any time the Alert is triggered.


 Saving your Alert
-------------------

After you've selected the desired Alert components and entered a value, click
 **Save**
 .


 Your new Alert appears in the
 **Alerts**
 tab of the
 **Details**
 view. You can do any of the following with this Alert:

 Open it for editing.
* "Unsubscribe" from it so you do
 *not*
 receive Notifications when it is triggered. By default, when you create an Alert, you are set to follow it.
* See how many times it has been triggered.
* Delete it.
* Set instant, daily, or weekly Notifications on the Alert.
* See a listing of Alert events.
* See a list of followers.

Editing an Alert
------------------

You can open an Alert for editing by doing any of the following:

 Select
 **Alert Me**
 from the Card's

menu in the Card Page, click in the top portion of the Alert Card, then click
 **Edit**
 .
* Click

on the Card in the Card page, click in the top portion of the Alert Card, then click
 **Edit**
 . (This icon
 *only*
 appears if one or more Alerts has been triggered on the Card.)
* Select
 **Alerts**
 in the app toolbar at the top of the screen, locate and click on the Alert you want to edit, then click the
 **Edit**
 button next to "Rule" or "Message Preview" and make your desired changes.
* Open the Card Details view, click

to open the
 **Alerts**
 tab, click in the top portion of the Alert Card, then click
 **Edit**
 .


