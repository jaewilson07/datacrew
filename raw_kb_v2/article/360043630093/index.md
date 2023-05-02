

Intro
-------

Allowlisting IP addresses is usually required for database Connectors and standard (cloud-based) federated adapters. These Connectors must also have SSL enabled on their database server in order to authenticate.

*Note:**
 The federated agent (on-premise deployment) does not require incoming IP allowlisting. See this article for more details on the federated agent architecture:

Using the Federated Data Solution

.

Affected Connectors
---------------------

All of the following Connectors require allowlisting:

 Amazon QuickSight SPICE
* Amazon Redshift
* Amazon Redshift Advanced
* Amazon Redshift SSH
* Apache Kafka
* Apache Kafka REST
* CSV Advanced
* CSV SFTP Pull
* Cvent
* GitHub Enterprise
* Hive
* Jira
* JSON Advanced
* IBM DB2
* IBM Informix
* IBM Informix SSH
* Microsoft Excel SFTP
* Microsoft SQL Server
* MongoDB
* MySQL
* MySQL SSH
* Oracle Database
* Oracle Database SSH
* PostgreSQL
* PostgreSQL SSH
* SAP Adaptive Server Enterprise
* SAP Adaptive Server Enterprise SSH
* ServiceNow
* Splunk
* Vertica

IP Addresses to Allowlist
---------------------------

*Important:**
 The IPs listed below must be allowlisted on your database server. You should
 *not*
 add these IPs to the allowlist in your Domo instance. Doing so will simply lock everyone out of the instance who is not coming from the IP addresses listed below. If you add these IPs to the allowlist in your Domo instance rather than on your server, incoming users will receive an error upon trying to log in that says "We're sorry but the system is not performing right now."


 If a Domo Connector or federated adapter need access to your servers, you will need to allowlist all of the following IPs in the section below corresponding to where your Domo instance is hosted. IPs are given using CIDR notation for convenience when working with AWS Security Groups and other network security systems.


 If you are unsure where your Domo instance is hosted, it's most likely US East (AWS).

*Tip:**
 A /32 after an IP address is CIDR notation for a single address. Smaller numbers, such as /27, indicate a range of IP addresses.


 Ex: 3.214.145.64/27 means the range of IPs from 3.214.145.64 to 3.214.145.95 inclusive.


######
 US East (AWS):

3.214.145.64/27`
 (Includes all IPs from 3.214.145.64 through 3.214.145.95 inclusive.)


`54.208.87.122/32`


`54.208.94.194/32`


`54.208.95.167/32`


`54.208.95.237/32`


`34.198.214.100`


`34.202.52.248`

#####
 US East (Azure):

13.92.125.193/32`


`40.76.8.174/32`

#####
 US West (AWS):

35.82.136.240/28`
 (Includes all IPs from 35.82.136.240 through 35.82.136.255 inclusive.)

#####
 Australia (Sydney):

52.62.103.83/32`

#####
 Canada:

15.222.16.24/29`
 (Includes all IPs from 15.222.16.24 through 15.222.16.31 inclusive.)

#####
 Ireland (Dublin):

52.18.90.222/32`

#####

Japan (Tokyo):

54.168.46.79/32`


 For information about controlling access to Domo based on IP address, see

Whitelisting IP Addresses in Domo

.

*Note:**
 For the JSON Advanced connector, you need to allowlist the IP 34.198.214.100

S3 Bucket policy for the Amazon S3 Connectors
-----------------------------------------------

You only need to use these endpoints if all of the following conditions are met:

 You are using any of Domo's S3 connectors
* Your Domo instance is in the same region as your S3 bucket
* You are restricting network access via a bucket policy

If your S3 bucket is in a different region than your Domo instance, you should use the standard Connector IPs posted in the documentation.

 us-east-1 (N. Virginia) vpce-3857b651: prod1, prod2, prod3, prod4, prod5, prod6, prod7, prod9
* ap-southeast-2 (Sydney) vpce-bf4fa1d6: prod8
* eu-west-1 (Ireland) vpce-c4788cad: prod10
* ap-northeast-1 (Tokyo) vpce-0055e53d26f729c54: prod12
* ca-central-1 (Canada Central) vpce-058575bcc0a0034ae: prod14


