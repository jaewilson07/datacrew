

Intro
-------

Microsoft Azure Data Lake Store is an enterprise-wide hyper-scale repository for big data analytic workloads. Use this connector to export your data from a Domo DataSet into an Azure Data Lake Store. For more information about Azure's API, see

https://docs.microsoft.com/en-us/azu...ta-lake-store/

.


 You export data to a Azure Data Lake Store in the Data Center. This topic discusses the fields and menus that are specific to the Azure Data Lake Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret.
* Your Microsoft Azure Data Lake Store tenant ID.
* Your Microsoft Azure Data Lake Store client ID.
* Your Microsoft Azure Data Lake Store client secret.

To obtain Azure credentials, please reach out to your Microsoft account representative.


 To create a
 **Client ID**
 and
 **Client secret**
 , do the following:

. Generate and add a new client secret in Partner Center to associate with that particular add-in client ID. For specific steps, see


**To generate additional client secrets**


 in

Update the client secret associated with your client ID

later in this article.
2. Update your remote web application to use the new client secret. For information about how to do this using Microsoft Office Developer Tools for Visual Studio, see


**Update the remote web application in Visual Studio to use the new secret**


 in

Replace an expiring client secret in a SharePoint Add-in

.

To create a new
 **Tenant ID**
 please do the following:

. Sign in to your organization's

Azure portal

.
2. From the Azure portal menu, select


**Azure Active Directory**
 .
3. On the overview page, select


**Manage tenants**
4. Select


**Create**
 .
5. On the Basics tab, select the type of tenant you want to create, either


**Azure Active Directory**


 or


**Azure Active Directory (B2C)**
 .
6. Select


**Next: Configuration**


 to move on to the Configuration tab.
7. On the Configuration tab, enter the following information:


	* Type


	*Contoso Organization*


	 into the


	**Organization name**


	 box.
	* Type


	*Contosoorg*


	 into the


	**Initial domain name**


	 box.
	* Leave the


	*United States*


	 option in the


	**Country or region**


	 box.
8. Select


**Next: Review + Create**
 . Review the information you entered and if the information is correct, select


**create**
 .

Your new tenant is created with the domain contoso.onmicrosoft.com.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Azure Data Lake Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your Azure Data Lake Store. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Paste your Domo client ID. For more information, see "Prerequisites," above.
  |
|
 Domo Client Secret
  |
 Paste your Domo client secret. For more information, see "Prerequisites," above.
  |
|
 Tenant ID
  |
 Enter your Microsoft Azure Data Lake Store tenant ID.
  |
|
 Client ID
  |
 Enter your Microsoft Azure Data Lake Store client ID.
  |
|
 Client Secret
  |
 Enter your Microsoft Azure Data Lake Store client secret.
  |
|
 Account FQDN
  |
 Enter the fully-qualified domain name of your Azure Data Lake Store account. For example:

mycompany.azuredatalakestore.net

|


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Azure Data Lake connection. You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to your Azure Data Lake Store. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 ****Input DataSet ID****
 or an output file name.
  |
|
 Filename
  |
 Enter the output file name for your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

