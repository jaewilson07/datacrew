---
    title: Amazon Web Services Billing Connector
    url: https://domo-support.domo.com/s/article/360043432693
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432693](https://domo-support.domo.com/s/article/360043432693)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003630
    views: 2,194
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Amazon Web Services (AWS) is a collection of web services that make up a cloud computing platform by [Amazon.com](http://Amazon.com).  For more information about the AWS API, visit their website. ([http://docs.aws.amazon.com/AmazonS3/...tication2.html](http://docs.aws.amazon.com/AmazonS3/latest/dev/S3_Authentication2.html "http://docs.aws.amazon.com/AmazonS3/latest/dev/S3_Authentication2.html"))


You connect to your AWS account in the Data Center. This topic discusses the fields and menus that are specific to the AWS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your AWS account and create a DataSet, you must have the following:


You must have the access rights to work with the connector


* Your AWS access key
* Your AWS secret key
* You must have the required permission to access the connector.


For information about obtaining these keys, refer to the following article: [http://docs.aws.amazon.com/AWSSimple...edentials.html](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html "http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html"). 


You must also set up an S3 bucket with a scheduled push of ZIP files to use this connector. For more information, consult Amazon's documentation at <http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-reports.html>.


Connecting to Your AWS Account
------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the AWS Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your AWS account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| AWS Access Key | Enter your AWS access key. |
| AWS Secret Key | Enter your AWS secret key. |


Special characters, slashes and any other non-url compliant characters are not allowed as valid bucket names. Dash and Undescore are valid characters in the bucket name path. For more information on setting up the AWS Billing S3 bucket, please see the [API Documentation](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-getting-started.html "https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-getting-started.html").


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid AWS credentials, you can use the same account any time you go to create a new AWS DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the AWS report you want to run. Currently only a single report type is available.

|  |  |
| --- | --- |
| Cost and Usage | Returns Amazon Web Services Billing cost and usage data. |

 |
| Filter | Select a filter for your report data. The following filters are available:

|  |  |
| --- | --- |
| All | Receives data for both invoiced and estimated Billing reports. |
| Invoiced | Receives data for invoiced Billing report data. |
| Estimated | Receives estimated Billing report data. When using this filter, you should only go back 2 months and use **Relative** mode. |

 |
| Bucket Name | Enter the name of the bucket where billing records are redirected. For example: aws-billing-yourcompany |
| Report Prefix | Enter the Cost and Usage report prefix. For more information, consult the AWS Billing  |
| Report Name | Select the AWS Billing Cost and Usage report name. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Trobleshooting
--------------


##### Error message, "Failed to authenticate. Verify the credentials and try again. Domo is ready, but the credentials you entered are invalid. Verify your account credentials and try again." appears while trying to connect to the connector.


This issue is related to authentication. You must have the required permission to use this connector.


FAQ
---


##### My AWS DataSet is returning an error of “Domo is ready, but Redshift returned: ERROR: current transaction is aborted, commands ignored until end of transaction block.” What do I do?


This error is caused by a connection issue between AWS and Domo servers. This is an intermittent error that usually self-resolves. If it does not, you will need to submit a bug report to determine if the connector needs to have autocommit turned on.


##### Are there any API limits that I need to be aware of?


The connector only supports the Cost and Usage report. Amazon AWS is ending support for all other reports at a future date.


##### How often can the data be updated?


Due to large API returns from Amazon AWS, the data should only be updated once per day.

