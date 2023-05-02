

Intro
-------

Group Management allows you to manage your Domo groups in bulk. You can also set a landing page for members of a group.


 Accessing the Toolkit
-----------------------

To access the Governance Toolkit, do the following:

. In the navigation header, go to
 **More**
 >
 **Admin.**
2. In the
 **Governance**
 menu, select
 **Toolkit.**


**Note:**
 If the
 **Toolkit**
 option does not display in the
 **Governance**
 menu, make sure your user role has the required grants. You may need to enable the Toolkit by reaching out to your Account Executive (AE).

Required Grants
-----------------


 To access the Governance Toolkit, a user will need one of two grants enabled for their role: Create Custom Pipeline Processes or Administer Custom Pipeline Processes. Grants can be added to a custom user role. By default, the Administer Custom Pipeline Process grant is enabled for Admin users.


####

Create Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Only allows the user to view jobs that they created or jobs that have been shared with them.


####

Administer Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Allows the user to see all jobs within the pipeline.


 To learn more about custom roles and grants, see

Managing Custom Roles.


 Configuration DataSet for Adding Members to a Group
-----------------------------------------------------

This section describes the columns in the configuration DataSet for adding members to a group.

 User


 - The users that should be included in the group.


 - Multiple users can be pipe ‘|’ separated.


 - User id and email can be used.
* Group


 - The name or id of the group that users should be added to.

Configuration DataSet for Setting a Group Landing Page
--------------------------------------------------------

This section describes the columns in the configuration DataSet for setting a landing page for a group.

 **priority —**
 If a user is a member of multiple groups, the priority determines which landing page they have.


 - If both a card\_id and page\_id are given, the page is set as the landing page.


 - If a user is a member of multiple groups of equal priority, the landing page is assigned alphabetically based on the group name.
* **group —**
 The name or ID of the group that the landing page is set for.
* **page\_id —**
 The ID of the page set as the landing page.
* **card-id —**
 The ID of the card to be set as the landing page.


 Creating a Job
----------------

Follow these steps to create a job in Group Management:


 1. In the navigation header, go to
 **More**
 >
 **Admin.**


 2. In the
 **Governance**
 menu, select
 **Toolkit.**


 3. In
 **Toolkit**
 , select
 **Group Management**
 .


 4. Select
 **+ New Job**
 .


 The new job creation page displays.

5. Enter a
 **Job name**
 and optional
 **Job description.**


 6. In the
 **Configuration**
 section, check one or both of the boxes for your
 **Job options:**

 **Manage Groups —**
 Use this option to create membership groups as necessary and manage them.
* **Manage Landing Pages —**
 Use this option to assign landing pages or cards to members of existing groups. This option includes assigning landing pages for directory groups inherited from SSO.

7. (Required) Select a Configuration DataSet for each selected job option.

 The
 **Group Management Configuration DataSet**
 defines your groups and users in each group.
* The
 **Landing Page Management Configuration DataSet**
 defines which landing pages are set.

8. (Required for group management) Choose how to handle creating new groups. Select the radio button for
 **Open**
 or
 **Closed**
 .


 9. In
 **Reporting**
 , select where you would like to save run logs.

 **New DataSet —**
 This option creates a new DataSet in your Domo instance and all runs of the job write logging to the new DataSet.
* **Existing DataSet —**
 This option allows you to combine multiple Group Management jobs into a single logging DataSet.


**Important:**
 The DataSet must be a DataSet created by the Group Management tool. The DataSet must also already contain rows of data.

10. In
 **Reporting**
 , enter any email addresses you would like to receive notifications from Domo each time the job runs. The notification outlines what the job did during the run and any failures that occurred.


**Sample Notification Email**

11. After you fill out the new job creation page, select
 **Submit**
 .


 Running a Job
---------------

You can run a job by using the
 **Enabled**
 toggle. The toggle displays on the
 **Group Management**
 page after you create a job.


 When you switch the toggle to
 **Active**
 , the job will execute every six hours and when the configuration DataSet is updated. When the toggle is
 **Disabled**
 , the job only executes when it is manually run.


####
 Example Job Run


* Groups before run:
* Configuration DataSet:
* Groups after run:
* Logging DataSet:


