---
    title: Amazon S3 AssumeRole Advanced Connector
    url: https://domo-support.domo.com/s/article/1500000216821
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500000216821](https://domo-support.domo.com/s/article/1500000216821)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003268
    views: 2,219
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Amazon S3 is built to store and retrieve any amount of data from anywhere. Like Amazon S3, Domo is built to scale with your business. Our customers collectively upload new data into their Domo environments millions of times each week. Have datasets that exceed 50 billion rows? No problem, Domo is built to handle huge amounts of data with speed. Domo’s S3 connector will allow you to leverage all of your S3 data anytime, anywhere.  
Domo connects directly to S3 and delivers the information you need in real-time visualizations that make analysis easier. Plus, you can see your S3 data alongside metrics from any other system, all in a single platform, and get instant notifications when your metrics hit thresholds that you determine.  
If your Amazon S3 bucket contains multiple files that begin with the prefix string you provide in the Details section of the connector, the Amazon S3 AssumeRole Advanced connector will import all files with the provided prefix, assuming they all have the same schema. Use Domo's Amazon S3 AssumeRole Advanced Connector to connect your S3 bucket data with the Amazon S3 AssumeRole Advanced integration that imports all files with the same prefix. To learn more about the Amazon S3 API, visit their page ([http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html](http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html "http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html")).


The Amazon S3 AssumeRole Advanced connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking ****File**** in the toolbar at the top of the window.


You connect to your Amazon S3 account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 AssumeRole Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Best Practices
--------------


Understanding the data stored in S3 and its relation to other S3 databases will be a huge asset in using this connector.


Prerequisites
-------------


To connect to your Amazon S3 account and create a DataSet, you must have the following:


* The Amazon Resource Name (ARN) of the role to assume.
* The identifier for the assumed role session. You will need to set up a trust policy. This is described in continuation.
* The unique identifier used by third parties when assuming roles in their customers' accounts.
* The name of the Amazon S3 bucket you want to pull data from.
* Your Amazon S3 Region.


### Trust policy configuration


The trust policy for the role session identifier should look as follows:


`{  
"Effect": "Allow",  
"Principal": {  
"AWS": "arn:aws:iam::*accountId*:root"  
},  
"Action": "sts:AssumeRole",  
"Condition": {  
"StringEquals": {  
"sts:ExternalId": "*customer externalID*"  
}  
}  
}`


Account IDs for Domo environments are as follows:


* US: 339405024189
* AU: 010251424122
* EMEA (IE): 687132894031
* JP: 622384692065
* CA: 710710207408


### FAQs


Q: What is ARN? Can it be a user or a role?  
A: ARN is Amazon Resource Name (ARN). It must be a role.


Q: What is the Role Session Name? Do I need to establish it on the trust policy or within the AWS environment first?  
A: The Role Session Name is the identifier for the assumed role session. It can be any name you choose.


Q: Can I get a detailed example of a principal trust policy and connector config?  
A: Below is what the trust policy should look like for a customer in us-east-1.


****Note****: You need to replace the EXTERNAL\_ID with the ID generated by DOMO on the Connector Credentials section UI.


{  
"Effect": "Allow",  
"Principal":


{ "AWS": "arn:aws:iam::339405024189:root" }


,  
"Action": "sts:AssumeRole",  
"Condition": {  
"StringEquals":


{ "sts:ExternalId": "EXTERNAL\_ID" }


}  
}


##### Description for the fields in the connector configuration:


****Role ARN****  
This is the ARN of the role that the customer created and added the trust policy to.


****Role Session Name****  
This can be left as the default - "Domo".


****External ID****  
This is the external ID that DOMO generated in the credentials section pane and put into their trust policy for the role.


****Bucket****  
This is the S3 bucket the customer wants to get data out of.


****Region****  
This is the AWS region in which their S3 bucket resides.


Connecting to an Amazon S3 Bucket
---------------------------------


This section enumerates the options in the  ****Credentials**** and ****Details**** panes in the Amazon S3 AssumedRole Advanced Connector page. The components of the other panes in this page, ****Scheduling**** and ****Name & Describe Your DataSet****, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to an Amazon S3 bucket. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Role ARN | Enter the Amazon Resource Name (ARN) of the role you want to assume. |
| Role Session Name | Enter the identifier for the assumed role session. |
| External ID | Enter the unique identifier used by third parties when assuming roles in their customers' accounts. |
| Bucket | Enter the Amazon S3 Bucket you want to pull files from. |
| Region | Select the S3 Bucket Region where your file is located. |


Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 AssumedRole Advanced DataSet. You can manage connector accounts in the ****Accounts****tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| What File Type would you like to import? | Select the file type that you would like to parse and import, either CSV, JSON, TSV, TXT, XML, XLS, or XLSX. |
| Prefix | Enter a prefix to filter results by. A prefix limits the results to only those keys that begin with the specified prefix. |
| File Name | Enter the name of the Amazon S3 Object(file) that you would like to import. |
| File Name Match Type | Specify whether the file you want to retrieve starts with or contains the text you entered under ****File Name****. |
| File Compression Type | Select the compression type of your file, either Gzip, zip, or none. |
| Subfile Name | Enter the name or a portion of the name of the subfiles that you would like to import. |
| Add Filename Column | Specify if the ****\_BATCH\_FILE\_NAME\_**** column should be added to the final output or not. |
| Select the Delimiting Character | Select the delimiting character used in your file. If your delimiter is not listed select 'Other.' |
| Specify your Delimiter | Enter the character used to delimit your character separated values (CSV) text. |
| Quote Character | Select the desired quote character for parsing CSV files. Double quote is the default quote character for CSV standard. |
| Custom Quote Character | Enter the desired CSV Quote character. |
| Escape Character | Select the desired escape character for parsing CSV files. |
| Custom Escape Character | Enter the desired CSV escape character. |
| Are Headers present in CSV file? | Select YES if the file contains headers, else select NO. |
| Date Columns and Formats | Enter the desired date column names and their respective formats as specified below, in the same order they exist in the file.Example: columnName1:dateFormat1,columnName2:dateFormat2columnName1:dd-MM-yyyy,columnName2:MM-dd-yyyy |
| Enable parsing for large JSON files? | Select Yes to enable parsing large JSON files. |
| Does your JSON text require a line reader? | Select Yes if your JSON text includes multiple lines that should be read. |
| Should the backslash be escaped? | Select Yes if your JSON text has backslash characters that need to be escaped. |
| Enter your data tag | Enter the tag for the data in your file. |
| Enter your sub list to flatten | Enter the comma-separated lists that you would like to flatten out in your data. |
| Enter fields to exclude | Provide a comma-separated list of fields you want to exclude from the import. |
| Enter your header tag | Enter the tag for the header in your JSON text. |
| Header Start Row | Enter the header start row number in the file. |
| Data Start Row | Enter the data start row number in the file. |
| Footer Rows to Skip | Enter the number of rows at the end of the file to skip. For example, to skip the last two rows you would enter 2. |
| Sheet Name | Enter the sheet name you want to retrieve from the specified spreadsheet be sure to check sheet name for accidental spaces, first sheet of the workbook will be used if the field is left blank. |
| Enter XPath Expression | Enter your XPath expression. |
| Do you require Attributes in Data? | Select 'Yes' if you require attributes values as a part of data. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

