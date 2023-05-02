

Intro
-------

With Cloud Amplifier, you can power your Domo instance using Dremio. You can register both Dremio Cloud and Dremio Software with Domo, and this process is described below. To learn more about Cloud Amplifier, see the

overview

.


 This article assumes you are familiar with Dremio and provides information for how to register Dremio with Cloud Amplifier in the following topics:

 Prerequisites
* Setup
* Dremio Cloud registration
* Dremio Software registration

Prerequisites
-----------------

Before setting up the Dremio connection, we strongly recommend that you complete the following:

 **(Recommended) ​Create a Dremio service account —**
 We recommend creating a new Dremio account specifically for this integration. You can use any account with Read


 access in Dremio, but


 it is best practice to use a service account. This account must have read access to your default Dremio environment in order to create virtual Dremio tables in Domo.
* **(Recommended) Create a Domo service account —**
 We recommend creating a new Domo account specifically for this integration. The account role must have the Manage Cloud Accounts and Manage DataSet grants enabled.

For more information about roles and grants, see our article about

Managing Custom Roles.

Setup
---------

The process to register either Dremio Cloud or Dremio Software begins with the same steps, described below. When the process branches, the steps for each product appear under their own headings:

Dremio Cloud Registration

and

Dremio Software Registration

.

*Note:**
 After you register Dremio with Domo, all Dremio content in Domo updates every 15 minutes.


1. Log in to your Domo service account.
2. In the navigation header, select
 **Data**
 .


 The Data Center displays.
3. If you are not already there, go to the

*Data Warehouse**
 in the left side rail.
4. In the warehouse area of the screen, select the molecule shown below.


 Selecting the molecule brings it into focus.
5. Select

*Add New Cloud**
 .


 The Amplify modal displays.
6. In the modal under
 **Native integration**
 , select
 **Dremio**
 .


 The Cloud integrations modal displays.
7. Select
 **+**
**Add New Integration**
 .


 The
 **Enter account information**
 tab of the Connect a Dremio cloud integration page of the modal displays.
8. Enter a name and optional description in the
 **Integration name**
 and
 **Integration description**
 fields.
9. Select the radio button for the correct Dremio product:
 **Dremio Cloud**
 or
 **Dremio Software**
 .


 At this point in the setup, the steps vary depending on the product you select. Go to the correct process for your product:

Dremio Cloud Registration

or

Dremio Software Registration

.

Dremio Cloud Registration
-----------------------------


1. After you select the radio button for
 **Dremio Cloud**
 , select
 **Next**
 .
2. Enter a URL in

to

the
 **Dremio connection URL**
 field. You can find this URL in the settings of your Dremio Cloud account.
3. Create a personal access token in your Dremio Cloud account. Copy the token for your records, because you cannot recover the token after you leave the page.
4. Paste the token into the
 **Personal Access Token**
 field in the configuration modal in Domo.
5. Select
 **Next**
 .
6. Browse for and select the schemas and tables you want to use to create DataSets in Domo.
7. Select
 **Create DataSets**
 .


 You have successfully registered Dremio Cloud.

Dremio Software Registration
--------------------------------


1. After you select the radio button for
 **Dremio Software**
 , select
 **Next**
 .
2. Enter a URL in the
 **Dremio connection URL**


 field.
3. Enter your Dremio Software credentials in the
 **Username**
 and
 **Password**
 fields.
4. Select
 **Next**
 .
5. Browse for and select the schemas and tables you want to use to create DataSets in Domo.

You have successfully registered Dremio Software.

