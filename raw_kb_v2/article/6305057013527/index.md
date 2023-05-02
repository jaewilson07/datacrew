

Intro
-------

User Management is a premium feature that allows a user to configure a DataSet that outlines instance users and their properties. With User Management, you can create, update, and delete users. Each job runs on a schedule and when the configuration DataSet updates.


 This article provides information about the User Management feature in the following topics:

 Access the Toolkit
* Required grants
* Configuration DataSet
* Create a job
* Run a job
* Remote instance configuration

Access the Toolkit
----------------------

To access the Governance Toolkit, do the following:

. In the navigation header, go to
 **More**
 >
 **Admin.**
2. In the
 **Governance**
 menu, select
 **Toolkit.**


**Note:**
 If the
 **Toolkit**
 option does not display in the
 **Governance**
 menu, make sure your user role has the required grants. You may need to enable the Toolkit by reaching out to your Account Executive.

Required Grants
-------------------


 To access the Governance Toolkit, a user will need one of two grants enabled for their role: Create Custom Pipeline Processes or Administer Custom Pipeline Processes. Grants can be added to a custom user role. By default, the Administer Custom Pipeline Process grant is enabled for Admin users.


####

Create Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Only allows the user to view jobs that they created or jobs that have been shared with them.


####

Administer Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Allows the user to see all jobs within the pipeline.


 To learn more about custom roles and grants, see

Managing Custom Roles.


 Configuration DataSet
-------------------------

The configuration DataSet matches the formatting of the Bulk Import feature found under
 **People**
 in the
 **Governance**
 menu. For more information about bulk importing, see the heading for Adding Users in Bulk in our article about

Adding Users to Domo

.


 The table below lists all of the required fields for the configuration DataSet.

 **Column Header**  | **Type**  | **Format**  |
|
 displayName
  |
 String
  |
 John Smith
  |
|
 roleId
  |
 Number
  |
 Valid values include the following:
 * 1 (Admin)
* 2 (Privileged)
* 3 (Editor)
* 4 (Participant)
* 5 (Social)
 |
|
 title
  |
 String
  |
 Software Engineer
  |
|
 department
  |
 String
  |
 Development
  |
|
 email
  |
 Email
  |
 johnsmith@example.com
  |
|
 alternateEmail
  |
 Email
  |
 john\_smith@example.com
  |
|
 phoneNumber
  |
 International phone number
  |
 Example: (800) 899-1000
  |
|
 deskPhoneNumber
  |
 International phone number
  |
 Example: (800) 899-1000
  |
|
 employeeNumber
  |
 Number
  |
 Example: 123

*Important:**
 Employee number is being replaced by Employee ID, but currently both values are required.

|
|
 employeeId
  |
 String
  |
 Example: ABC123

*Note:**
 This attribute is overridden by the employeeNumber value when provided to Domo through an SSO login. This is different from employeeNumber and will not show up in the UI.

|
|
 location
  |
 String
  |
 Utah
  |
|
 timeZone
  |
 String
  |
 Valid values include the following:


 China Time(Asia/Shanghai)


 Pakistan Time(Asia/Karachi)


 Brasilia Time(America/Sao\_Paulo)


 Moscow Time(Europe/Moscow)


 Central Time(America/Mexico\_City)


 Turkey Time(Europe/Istanbul)


 British Time(Europe/London)


 Philippine Time(Asia/Manila)


 Bangladesh Time(Asia/Dhaka)


 Korean Time(Asia/Seoul)


 West Africa Time(Africa/Lagos)


 West Indonesia Time(Asia/Jakarta)


 Japan Time(Asia/Tokyo)


 Eastern Time()America/New\_York)


 Taipei Time(Asia/Taipei)


 West Africa Time(Africa/Kinshasa)


 Peru Time(America/Lima)


 Eastern European Time(Africa/Cairo)


 Colombia Time(America/Bogota)


 Iran Time(Asia/Tehran)


 Hong Kong Time(Asia/Hong\_Kong)


 Arabian Time(Asia/Baghdad)


 Indochina Time(Asia/Bangkok)


 Chile Time(America/Santiago)


 Eastern Australia Time(Australia/Sydney)


 Argentina Time (America/Argentina/Rio\_Gallegos)


 Central Time (America/North\_Dakota/New\_Salem)


 Central Time (America/North\_Dakota/Beulah)


 Eastern Time (America/Kentucky/Monticello)


 Central Time  (America/North\_Dakota/Center)


 Argentina Time (America/Argentina/San\_Luis)


 Argentina Time (America/Argentina/La\_Rioja)


 Argentina Time (America/Argentina/San\_Juan)


 Eastern Time (America/Indiana/Petersburg)


 Dumont-d'Urville Time (Antarctica/DumontDUrville)


 Argentina Time (America/Argentina/Ushuaia)


 Argentina Time (America/Argentina/Tucuman)


 Eastern Time (America/Indiana/Vincennes)


 Central Time (America/Indiana/Tell\_City)


 Argentina Time (America/Argentina/Salta)


 |
|
 locale
  |
 Locale language tag
  |
 Valid values include the following:


 de-DE, de-AT, de-CH, en-AU, en-CA, en-150, en-HK, en-IE, en-IL, en-MO, en-NZ, en-SG, en-GB, en-US, en-001, es-ES, es-US, es-419, es-MX, fr-BE, fr-CA, fr-FR, fr-CH, nl-BE, nl-NL, pt-BR, pt-PT, ja-JP, zh-CN, zh-Hans-HK, zh-Hans-MO, zh-Hans-SG
  |

Create a Job
----------------

To create a job, you need to navigate to the Governance Toolkit, as follows.

. Go to
 **More**
 >
 **Admin**
 .
2. In the
 **Governance**
 menu, go to
 **Toolkit**
 >
 **User Management**
 .
3. Click
 **+ New Job**
 .
4. Provide the following information:


**Note:**

The fields marked with an asterisk (
 **\***
 ) are required.


* + Job name
	 **\***
	+ Job description
	+ Configuration
		- Configuration DataSet
		 **\***


		 This is the DataSet that defines what you wish to update or create.
		- Delete orphaned users


		**Important:**
		 If this is selected, any user not included in the configuration file will be deleted.
	+ Reporting


	 Each job will keep track of executions of the job and surrounding information. You can select either a new DataSet or an existing DataSet to save run logs.
		- New Dataset


		 If this is selected, a new DataSet is created in your Domo instance and all runs of the job write logging to the new DataSet.
		- Existing DataSet


		 If this is selected, an existing DataSet allows you to combine multiple User Management jobs into a single logging DataSet.


		 The DataSet must be created by the User Management tool.


		 The DataSet must also already contain rows of data.
	+ Email(s) to receive notifications


	 You can add user emails to this field. Each recipient receives an email notification from Domo each time the job runs. The notification outlines what the job did during the run and documents any failures.

Run a Job
-------------

Each job has an Enabled toggle that controls how the job is run.

 When the toggle is Disabled, the job only executes when the job is run manually.
* When the toggle is Enabled, the job executes every six hours and every time the configuration DataSet is updated.

Remote Instance Configuration
---------------------------------

Remote instance configuration allows you to be in one Domo instance and manage users in other instances to which you have access. To manage users remotely, you need a

configuration DataSet

, which is described previously in this article. You also need a

Domo Access Token account

configured with either a

Domo Access token

or with a username and password for the remote instance.

##
 Configure User Management for Remote Instance


1. While creating or editing a job, under
 **Configuration**
 , select a configuration DataSet populated with valid values for the remote instance according to User Management guidelines given in this article. See

Configuration DataSet

.
2. Still in the
 **Configuration**
 section, choose
 **Remote Instance**
 when asked where to run the job. The
 **Instance Settings
 **display.****
3. In the
 **Instance:**
 field, enter the domain for the remote instance you want to manage PDP for.
4. From the
 **Select the account for your instance:**
 list, select a valid Domo Access Account. To learn how to configure a Domo Access Account, see the next section.
5. Fill in the details for the
 **Reporting**
 section.


**Note:**
 The notification emails and metric logs are written to the instance the policy is running from, not to the remote instance.
6. Select
 **Submit**
 to save your changes.


###


 Configure Domo Access Token Account

Follow these steps to configure a Domo Access Token account:

. In the Domo navigation header, select
 **Data**
 .


 The
 **Data Center**
 opens.
2. In the sidebar, select

*Accounts**
 .
3. Select
 **Add New**
 >
 **Account**
 .


 The
 **Add Account**
 modal displays.
4. In the modal, complete one of the following options:
	* **Access Token —**
	 Enter an access token in the
	 **Remote Instance Access Token**
	 field.
	* **Username and password —**
	 Enter your credentials in the
	 **Remote Instance Username**
	 and
	 **Remote Instance Password**
	 fields.
5. Select
 **Connect**
 .


###


 Generate Access Token

Follow these steps to generate an access token:

. In the Domo navigation header, select
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Authentication**
 menu of the Admin Settings, select
 **Access tokens**
 .
3. On the
 **Access tokens**
 page, select
 **+ Generate access token**
 . ¶
4. Enter a description in the
 **Access token description**
 field.
5. Search for and select a user for whom you are generating the access token.
6. Select an expiration interval in the
 **Expire after**
 list.
7. Select
 **Generate**
 .
8. Copy the code to use.


