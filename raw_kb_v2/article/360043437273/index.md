

You can create a JIRA DataSet Job in Workbench 5. When you select JIRA as your DataSet type, you can enter your JIRA credentials and a JQL query to pull JIRA data into Workbench.


**To create a JIRA DataSet Job in Workbench 5,**

. Click the

icon in the left-hand icon bar.
2. Click the "+" button in the top right corner of the jobs listing pane.
3. Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu.


 If you have only one account set up, that account is already chosen for you and the menu is unavailable.
4. In the
 **Name**
 field, enter a name for the DataSet Job.


 This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
5. In the
 **Transport Type**
 menu, select
 **JIRA Connection Provider**
 .
6. In the
 **Reader Type**
 menu, select
 **JIRA**
 .
7. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.


 This is the
 *only*
 setting you can change after saving the new job.
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.
9. Enter a description for the DataSet if desired.


 This is the description of the DataSet as it appears in Domo.
10. Click
 **Create**
 .


 A new JIRA DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."


 A panel opens with fields for connecting to JIRA.
13. In the appropriate fields, enter the username and password you use to connect to your company JIRA instance.

*Note:**
 If you try to execute a JIRA job with incorrect credentials, the JIRA account locks. You cannot fix this just by entering correct credentials—you must manually log into JIRA and pass a CAPTCHA validation.
14. In the
 **Server URL**
 field, enter the URL where your company JIRA server is located.
15. In the
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
16. Click
 **Apply**
 .
17. Click the
 **Edit**
 button under "Processing."
18. (Optional) Add additional attributes to the list by entering them in the
 **Add included attribute**
 field.
19. (Optional) Remove attributes from the list by clearing their checkboxes then clicking
 **Yes**
 to confirm.
20. Click
 **Apply**
 .

You are now ready to execute the DataSet Job, thereby creating a JIRA DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Scheduling a Job in Workbench 5
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns
* Setting impersonation

(which causes Workbench to run the job as an Active Directory user).


