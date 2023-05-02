

Intro
-------

Label Traxx is a software company that services the narrow web flexo and digital label print industry with an end-to-end print ERP/MIS solution. Label Traxx is cross-platform, running on both Macintosh and Windows operating systems. It is one of several successful, growing businesses. The client/server database features a graphical user interface design that makes the system easy to install and operate. Use Domo’s Label Traxx Writeback connector to export your data from a Domo dataset to your Label Traxx account. To learn more about the Label Traxx API, visit

https://labeltraxx.com/software/integration/api/

.


 You export Domo data to Label Traxx in the Data Center. This topic discusses the fields and menus that are specific to the Label Traxx Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector you must have the following:

 The Domain URL
* Your Label Traxx username and password

Configuring the connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Label Traxx Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to configure the connection. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain URL
  |
 Enter you Domain URL.
  |
|
 Username
  |
 Enter your Label Traxx username.
  |
|
 Password
  |
 Enter your Label Traxx password.
  |


 Once you have entered valid Label Traxx credentials, you can use the same account any time you go to create a new Domo-Label Traxx connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Eloqua Fields
  |
 Select an Eloqua Object.
  |
|
 LabelTraxx Fields
  |

  |  |
| --- | --- |
|
 Required Fields
  |
 Select the required LabelTraxx and dataset fields.
  |
|
 Optional Fields
  |
 Select the optional LabelTraxx and dataset fields.
  |

|
|
 Enter the DataSet ID
  |
 Enter the id of your Domo dataset containing data to write to LabelTraxx. The ID is located in the dataset URL.


 Example:

https://customer.domo.com/datasources

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings
  |
|
 Identifier FieldName
  |
 Setup the LabelTraxx object and dataset to map the fields here.
  |
|
 Map dataset fields and LabelTraxx fields
  |
 - Select the required Field Name. It should match one of the field names as defined in the below fields Mapping. Choose a field that is likely to be unique to avoid updating the wrong record.


 - Select the dataset column for each required LabelTraxx field.


 - Match the desired LabelTraxx fields and dataset columns for optional fields.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

