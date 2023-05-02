

Intro
-------

Box is a cloud content management and file sharing service for businesses. Use this connector to export data from a Domo DataSet into your Box account. To learn more about the Box API, visit their website. (

https://developers.box.com/

)


 You export Domo data to Box in the Data Center. This topic discusses the fields and menus that are specific to the Box Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have a Domo Client ID and Client Secret. To obtain these credentials, do the following:

. Log into your Domo developer account at

https://developer.domo.com/login

.
2. Create a new client

.
3. Select the desired data and user application scope.
4. Click
 ****Create****
 .

You must also have the email address and password for your Box account.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Box Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Domo developer account.

The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |

For information about obtaining these credentials, see "Prerequisites," above.


 After you connect, you are taken to the Box OAuth screen where you are prompted to enter your Box email address and password.


 You can use the same account any time you go to set up a new Domo-Box connection.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Upload Criteria
  |
 Select the Box directory in which you want to upload your file.
  |
|
 Folder
  |
 Select the Box folder in which you want to store your file.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Box. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.
  |
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 ****Input DataSet ID****
 or an output file name.
  |
|
 Filename
  |
 Enter the output file name for your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 What do I do if I just uploaded a file to

box.com

, but the Box connector says the file does not exist when I try to pull in the file?

Make sure all your connector settings match your file and free of typos. Files may not be available via the Box API up to 30 minutes after the file was uploaded. Ensure the file has been in Box for at least 30 minutes, and then attempt to run the DataSet again.


 Many users have also reported that they still cannot find a file using the search field in Box even after the file has been in Box for 30 minutes. This issue stems from a problem with Box's Search API. It means that your account has not yet been synced with the most recent files and is not available through the API.

###
 What do I do if I can’t connect to

box.com

with valid credentials?

This problem might stem from an issue with your option settings in Box. Domo is an unpublished application in

box.com

terminology, and one of the options Box gives to its users is to disable unpublished applications by default. Therefore, if a customer is using this option, Domo users may not be able to authenticate or connect to Box to import data from Box to Domo.


 Box gives customers the option to allow any unpublished application to use a customer's Box instance, which appears to be what most customers have enabled in their Box account settings. Some customers do not want to enable all unpublished applications but would like to enable Domo to use Box. In this case, there is also an option Box provides to allow exceptions. To enable an exception for Domo, Domo's public API key for Box needs to be added to the exception list.


 The public API key for Domo at Box is: wmiawbgvombfafa0jj4dgvmvq5ivq83m.

###
 What is the difference between the Box connector and the Box Advanced connector?

The Box connector allows you to specify the name and type of the file to pull the data from. The Box Advanced connector offers an additional advanced section to specify the data formatting details, along with the name and type of the file.

###
 Can I use the same Box account for multiple DataSets?

Yes.

###
 How frequently will my data update?

As often as required.

###
 Are there any API limits that I need to be aware of?

No.

