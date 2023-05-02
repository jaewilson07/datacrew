

Intro
-------

You set up an HTML table connection in the Data Center. This topic discusses the fields and menus that are specific to the HTML Table connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To set up a connection to a website in Domo and pull HTML table data, you must have the URL to the website with the table. The URL
 *must*
 include the

https

protocol for the connection to work (e.g.

https://www.domo.com

). If the connection requires a username and password, you will need to enter these as well.


 Connecting to Your an HTML Table
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the HTML Table Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to the website with the desired table. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for the website with your HTML table data. Required only if credentials are needed to access the website.
  |
|
 Password
  |
 Enter the password for the website with your HTML table data. Required only if credentials are needed to access the website.
  |
|
 Web Page URL
  |
 Enter the URL for the web page containing your HTML table data. The URL
 *must*
 include the

https

protocol for the connection to work (e.g.

https://www.domo.com

).
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new HTML Table DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains single field in which you specify the desired table.


 Menu
  |
 Description
  |
| --- | --- |
|
 Table Number
  |
 Enter the sequential number of the table you want to pull from the indicated web page. For example, if the table you wanted was the second table in the web page, you would enter

2

here.
  |
|
 Header Location
  |
 Select whether you want a column header or a row header for your table.


 Column Headings


|
 Header 1
  |
 Header 2
  |
| --- | --- |
|
 abcd
  |
 efgh
  |
|
 ijkl
  |
 mnop
  |


 Row Headings


|  |  |  |
| --- | --- | --- |
|
 Header 1
  |
 abcd
  |
 efgh
  |
|
 Header 2
  |
 ijkl
  |
 mnop
  |

|


**Important:**
 The HTML rowspan attribute is not currently supported in this connector.


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

