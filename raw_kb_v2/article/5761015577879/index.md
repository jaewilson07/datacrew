

Intro
-------

data.world is the modern catalog for data and analysis. It activates the hidden data workforce within your enterprise, multiplies your data value, and creates a faster data-driven culture. The modern, intuitive user experience brings together employees of all roles, backgrounds, and skills to collaborate while keeping the data connected to everything people need to find, understand, and use. As a result, your data, analysis, and expertise become more discoverable, trustworthy, and reusable.


 With the data.world Writeback connector export your data from a Domo dataset to your specified file securely and enhance your data performance.. To learn more about the data.world API, visit their page

https://apidocs.data.world/


 .

You configure your Domo-data.world connection in the Data Center. This topic discusses the fields and menus that are specific to the data.world Writeback Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have your data.world account API token.

You can find your API token under

*User Setting >> Advanced Tab**

.

Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the data.world Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane


 This pane contains fields for entering credentials to connect to your data.world account where you want your data to be copied to. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Token
  |
 Enter the API Token. You can find your API token under

*User Setting >> Advanced Tab**

.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new data.world Writeback DataSet. You can manage connector accounts in the
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
 Input DataSet ID
  |

Enter your Domo dataset ID(GUID) located in the dataset URL. Example:

https://customer.domo.com/datasources/


**aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**

/details/settings

|
|
 Select data.world DataSet Method
  |
 Specify whether you want to select your data.world dataset or enter the dataset ID manually.
  |
|
 data.world DataSet
  |
 Select the location to copy your data.world dataset from.
  |
|
 data.world DataSet
  |
 Enter the data.world dataset id.
  |
|
 Select File Name Method
  |
 Specify whether you want to select your output file or enter the filename manually.
  |
|
 File Name
  |
 Enter the output file name without the file extension. If the provided file name collides with an existing file, the connector will overwrite that file.
  |
|
 Files
  |
 Select the file name you want to write to. Files will have the `.csv` extension.
  |
|
 Append Date or Number to Filename
  |


 Operation
  |
 Description
  |
| --- | --- |
|
 None
  |
 Doesn't append anything to the file name. This means that the file will always be overwritten on every run instead of creating new files.
  |
|
 Append date
  |
 Appends date of current run to the file name (e.g., FileName\_MM-DD-YYYY.csv). This means that if there are multiple runs on the same day, the previous run will be overwritten. Runs on new days will create new files.
  |
|
 Append number
  |
 Appends run number (starting from 1) to file name (e.g., FileName\_1.csv). This means that a new file will be created on every run.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need the API token associated with your data.world account.

###
 Where can I find my API token?

You can find your API token under User Setting >> Advanced Tab.

###
 Are there any API limits that I need to be aware of?

No

###
 How often can the data be updated?

As often as needed.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


####
 What is the File Name?

The File Name is the name of the output file where you would like to save your data. Provide the output file name without the file extension. If the provided file name collides with an existing file, the Connector will overwrite that file.

