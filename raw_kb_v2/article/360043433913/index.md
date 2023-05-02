

Intro
-------

Kissmetrics is a customer analytics platform which provides visualization tools on how users interact with their site, web apps, and mobile products.  To learn about the Kissmetrics API, visit their website (

http://support.kissmetrics.com/article/show/url-api

).


 You connect to your Kissmetrics account in the Data Center. This topic discusses the fields and menus that are specific to the Kissmetrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your Kissmetrics account and create a DataSet, you must have the following:

 An AWS (Amazon Web Services) access key
* An AWS secret key

For information about obtaining AWS credentials, visit

http://docs.aws.amazon.com/general/l...red-types.html

.


 Connecting to Your Kissmetrics Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Kissmetrics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Kissmetrics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 AWS Access Key
  |
 Enter your AWS (Amazon Web Services) access key.
  |
|
 AWS Secret Key
  |
 Enter your AWS secret key.
  |


 Once you have entered valid Kissmetrics credentials, you can use the same account any time you go to create a new Kissmetrics DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu in which you select the AWS bucket containing your Kissmetrics data.


 Menu
  |
 Description
  |
| --- | --- |
|
 AWS Bucket Name
  |
 Select the AWS bucket containing the data you want to pull into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

