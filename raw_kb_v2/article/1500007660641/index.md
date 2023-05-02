

Intro
-------

Azure Data Lake Storage Gen2 is the one of the world's most productive Data Lake. It is an enterprise-wide hyper-scale repository for big data analytic workloads. It makes Azure Storage the foundation for building enterprise data lakes on Azure. It allows you to easily manage massive amounts of data and helps to speed up your transition from proof of concept to production. Use Domo's Microsoft Azure Data Lake Store Gen2 using AAD connector to pull data files from your Data Lake Store into Domo. You can retrieve data files in any of the following file types: CSV, TSV, and TXT. For more information about Azure's API, see

https://docs.microsoft.com/en-us/azu...ta-lake-store/

.


 You connect to your Microsoft Azure Data Lake Store Gen2 AAD account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Azure Data Lake Store Gen2 using AAD connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Azure Data Lake Store Gen2 AAD account and create a DataSet, you must have the following:

 Your client ID (GUID) and secret key of the client web app obtained from Azure Active Directory configuration
* Your Microsoft Azure Data Lake Storage account name
* Your Tenant ID


###

Configuring Your Azure App

You must first create a Microsoft Azure Web App to obtain the necessary client ID and secret.


**To configure an Azure App**
 :

. Login into

Azure Portal

.
2. Select
 **Azure Active Directory > App Registrations > New Registration**
 .

3. Fill out the registration form as follows:

 Name: Enter name for your  application.
* Supported account types: Select an option to specify who can use this application or access this API.
* Redirect URI: Enter the redirect URI. The authentication response is sent to this URI after successfully authenticating the user. Providing the URI at this stage is optional and it can be changed later, but a value is required for most of the authentication scenarios.

4. Click
 **Register**
 . An overview of your registered App will appear.


 5. The
 **Application ID**
 that appears here is the
 **Client ID**
 and the he


**Directory ID**


 is the


**Tenant ID**
 that you will enter in the
 **Credentials**
 pane in Domo.


 6. Now, click on
 **Certificates and secrets**
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.


 7. Click
 **+New client secret**
 .


 8. Specify the client secret description and the expiry period for your client secret, and click
 **Add**
 .


 9. Copy the value and paste it into the
 **Client Secret**
 field in the
 **Connector credentials**
 section in Domo.


 Connecting to Your

Microsoft Azure Data Lake Store Gen2 AAD

Account
---------------------------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Microsoft Azure Data Lake Store Gen2 using AAD

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Microsoft Azure Data Lake Store Gen2 AAD

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Azure Application Client ID
  |
 Enter the client ID (GUID) of the client web app obtained from Azure Active Directory configuration. See "Prerequisites" for more information.
  |
|
 Azure Application Client Secret
  |
 Enter the secret key of the client web app. See "Prerequisites" for more information.
  |
|
 Tenant ID
  |
 Enter your Tenant ID. Go to

Portal.azure.com

> Azure Active Directory > Properties. The Directory ID is your Tenant ID.
  |
|
 Account Name
  |
 Enter your Microsoft Azure Data Lake storage account name.
  |


###


 Once you have entered valid


 Microsoft Azure Data Lake Store Gen2 AAD


 credentials, you can use the same account any time you go to create a new


 Microsoft Azure Data Lake Store Gen2 AAD


 DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 What file type would you like to import?
  |
 Select the type of the file that you want to import.
  |
|
 Container Name
  |
 Select the conatiner.
  |
|
 How would you like to choose the directory name?
  |
 Select how would you like to choose the directory name.
  |
|
 Discover Directory Name
  |
 Select the directory name.
  |
|
 Enter Directory Name
  |
 Enter the directory name using the following examples.


|  |  |
| --- | --- |
|
 Example for main or root directory
  |
 test
  |
|
 Example for sub directory
  |
 test/test
  |
|
 Example for sub-sub-directory
  |
 test/test/test
  |

|
|
 How would you like to choose the File name?
  |
 Select how would you like to choose the file name.
  |
|
 Enter File Name
  |
 Enter the file name.
  |
|
 Discover File Name
  |
 Select the File name.
  |
|
 File Encoding
  |
 Select the file encoding. By default,


**UTF-8**
 is selected.
  |
|
 Select the delimiting character
  |
 Select the delimiting character used in your file. If your delimiter is not listed here, select 'Other.'
  |
|
 Specify your delimiter
  |
 Enter the character used to delimit your character separated values (CSV) text.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing CSV files (Double quote is the default quote character for CSV standard.)
  |
|
 Custom Quote Character
  |
 Enter the desired CSV Quote character.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing CSV files.
  |
|
 Custom Escape Character
  |
 Enter the desired CSV escape character.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####

What kind of credentials do I need to power up this Connector?

You need the client ID, client secret, and tenant ID of the client web app obtained from Azure Active Directory configuration, and your storage account name.

###
 Where can I find my client ID, client secret, and tenant ID?

To obtain the Client ID:

 Login to the Azure Portal (

https://protal.azure.com

).
* Navigate to Azure Active Directory >> App registrations.
* Click on the Web App > Application ID.
* The application ID is your client ID.

To obtain the Secret key:

 Login to the Azure Portal (

https://protal.azure.com

).
* Navigate to Azure Active Directory >> App registrations.
* Click on the Certificates and secrets > +New client secret.
* Copy the secret value. Note that the secret is generated only once.

To obtain the Tenant ID:

 Login to the Azure Portal (

https://protal.azure.com

).
* Navigate to Azure Active Directory >> Properties.
* Copy the directory ID. The directory ID is your tenant ID.


####
 Are there any API limits I should be aware of?

No

###
 How often can the data be updated?

As often as needed.

###
 Can I use the same account to create multiple datasets?

Yes


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


