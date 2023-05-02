

Intro
-------


 The Domo Excel SFTP connector allows you to access Excel files that you have uploaded to a server using SFTP (Secure File Transfer Protocol).

You connect to Excel files in the Data Center. This topic discusses the fields and menus that are specific to the Excel SFTP connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 You must have an SFTP host name, username, password, and port number to authenticate to the SFTP server.

You must also whitelist the following IP addresses:


`54.208.95.237`


`54.208.87.122`


`54.208.95.167`


`54.208.94.194`


`50.207.240.162`


`50.207.241.62`


`52.18.90.222`


`52.62.103.83`


`34.198.214.100`


 Connecting to Your Excel File
-------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Excel SFTP Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to the Excel file on an SFTP server you want to pull into Domo. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username you use to authenticate to the SFTP server.
  |
|
 Password
  |
 Enter the password you use to authenticate to the SFTP server.
  |
|
 Host Name
  |

Enter the name or IP address of the SFTP host you want to connect to.

|
|
 Port Number
  |
 Enter the port number of the SFTP server.
  |


 Once you have entered valid Excel credentials, you can use the same account any time you go to create a new Excel SFTP DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you choose and configure options for the Excel file you want to pull into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Name or Portion of File Name to Search For
  |
 Enter the file name or a portion of the file name of the Excel file you want to pull into Domo. Both

.xls

and

.xlsx

files are supported.
  |
|
 Type of Match to Perform
  |
 Select whether the filename starts with or contains the string you entered in the
 **File Name or Portion of File Name to Search For**
 field.
  |
|
 Is Password Protected?
  |
 Select whether the Excel file you are pulling into Domo is password protected.
  |
|
 File Password
  |
 Enter the password for the Excel file you want to pull into Domo.
  |
|
 Sheet Name (Optional)
  |
 Enter the name of the Excel sheet you want to pull into Domo. If you leave this blank, Domo pulls the first sheet of the file.
  |
|
 Layout
  |
 Select the layout of the Excel file you are pulling into Domo.
  |
|
 Mode
  |
 Select the desired parsing mode. If you select
 **Manual**
 , you are asked to enter a column header range and date range; if you select
 **Automatic**
 , these ranges are determined automatically.
  |
|
 Column Header Range
  |
 Enter the range of header cells in the Excel file, e.g.

A2:F8

.
  |
|
 Data Range
  |
 Enter the range of data cells in the Excel file, e.g.

A3:F20

.
  |

