

Intro
-------


 Use this connector to pull data files from your Box account into Domo. You can retrieve data files in any of the following file types: CSV, XLS, XLSX, XML, ZIP, and GZIP. To learn more about the Box API, visit their website. (

https://developers.box.com/

)


 This connector is especially useful when you need to glean data from Excel and CSV reports sent via email. You can upload the reports to a Box folder via email and then use Domo's Box connector to pull the desired reports from the folder.

The Box connector is a "File" connector, meaning it retrieves files from third-party tools and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking


**File**


 in the toolbar at the top of the window.

You connect to your Box account in the Data Center. This topic discusses the fields and menus that are specific to the Box connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling data files from Box into Domo
  |
|
**Average Implementation Time**
 |
 After the file is uploaded to Box, it should take only a few minutes to configure.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |


 Prerequisites
----------------


 To connect to your Box account and create a DataSet, you must have the following:


* The email address you use to log into your Box account.
* The password you use to log into your Box account.


 Connecting to Your Box Account
---------------------------------


 This section enumerates the options in the
 **Credentials**


 and


**Details**


 panes in the Box Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
-------------------


 The Domo Box connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select
 **Add Account**


 if you have existing Box accounts in Domo) to open the Box OAuth screen where you can enter the email address and password associated with your Box account. Once you have entered valid Box credentials, you can use the same account any time you go to create a new Box DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


 Details Pane
---------------


 This pane includes the following fields and menus:


|

*Menu**

|

*Description**

|
| --- | --- |
|

File Name

|

Enter the name (or a portion of the name) of the Box file to retrieve.

|
|

File Type

|

Select the file type for the data file you want to retrieve.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Validate that the file was not corrupted when uploaded to Box by downloading from Box and opening in Excel or the proper application for the file type.
* Box is a worldwide application, and after you upload a file, the servers sync those changes globally. Therefore the file may be available immediately, or it may take up to 30 minutes for Domo to be able to download the file.
* Rate limiting may be enforced by Box. The Domo Box connector is aware of this situation and will attempt to recover from any rate limiting situations, but if there are too many DataSets that run at the same time, the connector may not be able to recover and will fail. In that case, stagger the DataSets to run at different times.

FAQ
-----


#####
 What kind of credentials do I need to power up the Box connector?

You need your Box username and password

####
 What do I do if I just uploaded a file to

box.com

, but the Box connector says the file does not exist when I try to pull in the file?

Make sure all your connector settings match your file and free of typos. Files may not be available via the Box API up to 30 minutes after the file was uploaded. Ensure the file has been in Box for at least 30 minutes, and then attempt to run the DataSet again.


 Many users have also reported that they still cannot find a file using the search field in Box even after the file has been in Box for 30 minutes. This issue stems from a problem with Box's Search API. It means that your account has not yet been synced with the most recent files and is not available through the API.

####
 What do I do if I can’t connect to

box.com

with valid credentials?

This problem might stem from an issue with your option settings in Box. Domo is an unpublished application in

box.com

terminology, and one of the options Box gives to its users is to disable unpublished applications by default. Therefore, if a customer is using this option, Domo users may not be able to authenticate or connect to Box to import data from Box to Domo.


 Box gives customers the option to allow any unpublished application to use a customer's Box instance, which appears to be what most customers have enabled in their Box account settings.  Some customers do not want to enable all unpublished applications but would like to enable Domo to use Box. In this case, there is also an option Box provides to allow exceptions. To enable an exception for Domo, Domo's public API key for Box needs to be added to the exception list.


 If you have the option to disallow unpublished applications, you will need to whitelist the API key of p8zmzltrnjrkwqywbs18z3lqekzbq1jh.

####
 What is the difference between the Box connector and the Box Advanced connector?

The Box connector allows you to specify the name and type of the file to pull the data from. The Box Advanced connector offers an additional advanced section to specify the data formatting details, along with the name and type of the file.

####
 Can I use the same Box account for multiple DataSets?

Yes.

####
 How frequently will my data update?

As often as required.

####
 Are there any API limits that I need to be aware of?

No.

