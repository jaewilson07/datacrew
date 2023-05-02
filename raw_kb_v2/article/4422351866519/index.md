

Intro
-------


 Amazon Athena is a service that makes it easy to query big data from S3. It is built to retrieve any amount of data from anywhere. Like Amazon Athena, Domo is built to scale with your business. Our customers collectively upload new data into their Domo environments millions of times each week. Domo is built to handle huge amounts of data with speed.


 With the Amazon Athena High Bandwidth Connector, you can get constant access to your data right from your Domo instance. This connector uses the JDBC connection to process the query and then parses the result set.

To learn more about the Amazon Athena API, visit their page (

https://aws.amazon.com/documentation/athena/

).


 You connect to your Amazon Athena account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Athena High Bandwidth Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon Athena account and create a DataSet, you must have the following:

 Your AWS access key
* Your AWS secret key
* The Amazon S3 location to which the query output is written (e.g. s3://aws-athena-query-results-1234-us-west-2/). You can find this by going to
 ****Settings****
 in the Athena web console.
* Your AWS region

For information about obtaining AWS credentials, visit

http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html

.

###
****Required Permission Policies****

To gain the access to AWS services and resources, such as Athena and the Amazon S3 buckets, provide the JDBC driver credentials to your application. If you are using the JDBC driver, ensure that the IAM permissions policy includes all actions listed in
 ****AmazonAthenaFullAccess Managed Policy****
 .


 The
 ****`AmazonAthenaFullAccess`****
 managed policy grants full access to Athena.


 Managed policy contents change, so the policy shown here may be out-of-date. Check the IAM console for the most up-to-date policy.


```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "athena:*"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "glue:CreateDatabase",
                "glue:DeleteDatabase",
                "glue:GetDatabase",
                "glue:GetDatabases",
                "glue:UpdateDatabase",
                "glue:CreateTable",
                "glue:DeleteTable",
                "glue:BatchDeleteTable",
                "glue:UpdateTable",
                "glue:GetTable",
                "glue:GetTables",
                "glue:BatchCreatePartition",
                "glue:CreatePartition",
                "glue:DeletePartition",
                "glue:BatchDeletePartition",
                "glue:UpdatePartition",
                "glue:GetPartition",
                "glue:GetPartitions",
                "glue:BatchGetPartition"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetBucketLocation",
                "s3:GetObject",
                "s3:ListBucket",
                "s3:ListBucketMultipartUploads",
                "s3:ListMultipartUploadParts",
                "s3:AbortMultipartUpload",
                "s3:CreateBucket",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::aws-athena-query-results-*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::athena-examples*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:GetBucketLocation",
                "s3:ListAllMyBuckets"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "sns:ListTopics",
                "sns:GetTopicAttributes"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "cloudwatch:PutMetricAlarm",
                "cloudwatch:DescribeAlarms",
                "cloudwatch:DeleteAlarms"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}

``


 Connecting to Your Amazon Athena Account
------------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Amazon Athena High Bandwidth Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Amazon Athena account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key.
  |
|
 Secret Key
  |
 Enter your AWS secret key.
  |
|
 S3 Staging Directory
  |
 Enter the Amazon S3 location where your query output is written. From the Athena web console, this can be found by going to
 ****Settings****
 . Example: s3://aws-athena-query-results-1234-us-west-2/
  |
|
 Region
  |
 Select your AWS region.
  |

Once you have entered valid Amazon Athena credentials, you can use the same account any time you go to create a new Amazon Athena High Bandwidth DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of options for entering your query and configuring the report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the query type.


|
 Query Type
  |
 Description
  |
| --- | --- |
|
 Custom Query
  |
 Enter your SQL statement directly.
  |
|
 Query Builder
  |
 Build your query from a list of available tables and columns.
  |

|
|

Athena Data Source Catalog Name

|

Select the Athena data catalog name.

|
|
 Database Name
  |
 Select the database you want to query.
  |
|
 Table Name
  |
 Select the table in the database you want to query.
  |
|
 Table Columns
  |
 Select all the columns you want to query.
  |
|
 Query Helper
  |
 Based on the selected database name, table name and column names, the Query Helper will build a sample query for you.
  |
|
 Query
  |
 Enter the SQL query you want to execute (e.g. select \* from table\_name).
  |
|
 Keep unloaded Athena files in S3 bucket
  |
 This Connector unloads data from Amazon Athena to your S3 bucket and then consumes these files. Check this box if you would like to keep these files after they have been ingested; otherwise, they will be deleted by default.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

