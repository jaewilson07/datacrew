

Intro
-------

Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. You can use Amazon DynamoDB to create a database table that can store and retrieve any amount of data and serve any level of request traffic. Use this connector to access your DynamoDB tables for the region associated with an AWS (Amazon Web Services) account.


 You connect to your AWS account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon DynamoDB connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to AWS and create an Amazon DynamoDB DataSet, you must have the following:

 An AWS access key
* An AWS secret key


####
 To find your Access Key and Secret Access Key:


1. Log in to your AWS Management Console.
2. Click on your username at the top right of the page.
3. Select
 **Security Credentials**
 in the dropdown menu.
4. In the
 **Access Credentials**
 section, copy the latest Access Key ID.
5. Click on the
 **Show link**
 in the same row, and copy the Secret Access Key.

Connecting to Your Amazon DynamoDB Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon DynamoDB Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Amazon DynamoDB account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 AWS Access Key
  |
 Enter your AWS access key.
  |
|
 AWS Secret Key
  |
 Enter your AWS secret key.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid Amazon DynamoDB credentials, you can use the same account any time you go to create a new Amazon DynamoDB DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors.

##
 Details Pane

This pane contains two dropdown menus in which you select the desired region name and table.


 Menu
  |
 Description
  |
| --- | --- |
|
 Region Name
  |
 Select the Amazon DynamoDB region that includes the table you want to import into Domo.
  |
|
 How would you like to fetch your data?
  |

Select whether you want to fetch your data by attribute names or by providing a query.

|
|
 Query
  |

Enter the SQL query to execute.


 Example: select \* from table\_name.


**Note**
 : Provide all column names in double quotes, if any.

|
|
 Table Name
  |
 Select the Amazon DynamoDB table you want to pull into Domo.
  |
|
 How would you like to provide attribute names?
  |
 Choose whether you want to provide attribute names through discovery or manually.
  |
|
 Attribute Names (Maximum selection allowed is 1498)
  |

Select the attribute names to pull. If you want to pull all attributes, then do not select any attribute from the list. Maximum selection allowed is 1498.


**Note:**
 If you do not select any attributes then this Connector will bring in all fields by default.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

