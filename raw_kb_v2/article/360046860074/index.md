


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can create a JIRA DataSet Job in Workbench 4. When you select JIRA as your DataSet type, you can enter your JIRA credentials and a JQL query to pull JIRA data into Workbench.


**To create a JIRA DataSet Job in Workbench 4,**

. Click
 **Add New**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


 This opens the
 **Workbench DataSet Job Creation Wizard**
 .
2. (Conditional) If requested, select the desired Domo server. (This screen only appears if you have more than one server set up in Workbench.)
3. In the
 **DataSet Job Name**
 field, enter a name for the DataSet Job. This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
4. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.
5. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.
6. In the
 **Transport Method**
 menu, select
 **JIRA Connection Provider**
 .
7. Click
 **Next**
 .
8. (Optional) Enter a description in the
 **DataSet Description**
 field.

*Note:**
 You can change any of the settings you made in the above steps in the
 **Source**
 panel for the DataSet Job after you complete all of the steps in the Wizard
 *except*
 the transport method.
9. Click
 **Next**
 .


 A new JIRA DataSet Job is added to the list of jobs for the currently authenticated server in the
 **Accounts**
 pane.
10. Under the JIRA DataSet Job that was just added to the jobs list, select
 **Source**
 .


 This opens a panel with options for connecting to your JIRA data source.
11. Click the + button to the right of the words "JIRA Connection."
12. In the appropriate fields, enter the username and password you use to connect to your company JIRA instance.

*Note:**
 If you try to execute a JIRA job with incorrect credentials, the JIRA account locks. You cannot fix this just by entering correct credentials—you must manually log into JIRA and pass a CAPTCHA validation.
13. In the
 **Server URL**
 field, enter the URL where your company JIRA server is located.
14. In the
 **JIRA Query**
 field, enter the query for the JIRA data you want to pull into your DataSet.

*Tip:**
 You can create a JQL query in Jira, then copy and paste it in Workbench.


**Example JQL query**

project not in (ARCHIVE, CPD, DC, DCV, DP, QA, ODD) AND issuetype in (Epic) AND fixVersion in (2015-02-17) ORDER BY status DESC, resolved DESC, issuetype DESC, key ASC`


**Important:**
 If your JIRA query is set up without specific ordering, an error may be caused during the upload to Domo. In most cases you can get around this problem by ordering your results by

created ASC

in your query.


 For example:


`Reporter is not null order by created ASC`
15. Click
 **Validate Configuration**
 .


 If your credentials and query are valid, a list of attributes for your JIRA data source appear in the
 **Data Source Properties**
 panel.
16. (Optional) Add additional attributes to the list by entering them in the
 **Add included attribute**
 field.
17. (Optional) Remove attributes from the list by clearing their checkboxes then clicking
 **Yes**
 to confirm.

You are now ready to execute the DataSet Job, thereby creating a JIRA DataSet in Domo. However, there are many other actions you can take on the DataSet job before you send it to Domo. These include the following:

 Setting an update schedule for the job
* Adding the job to a group of jobs with an advanced schedule set in Windows Task Scheduler
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns


