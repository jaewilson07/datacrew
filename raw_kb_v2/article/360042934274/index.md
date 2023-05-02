

Intro
-------

You can add users to your Domo instance either one at a time or in bulk. You can do this
 *only*
 if you have a default security role of "Admin" or "Privileged" or a custom role with "Add New Users" enabled.


 When you add users to Domo, Domo does the following:

 Sets up a

Profile page

for the user.
* Adds the user's name to the list in the
 **People**
 tab in the Admin Settings.
* Sends an email to the user with a link to

join

Domo.

Depending on settings, Domo may only allow you to add people whose email address contains an authorized domain. For more information, see

Specifying Authorized Domains for Invited Users

.


 For information about inviting users to join Domo, see

Inviting Others to Join Domo

.


 For information about how an added user connects to Domo and finishes setting up an account, see

Joining Domo

.


 For more information about the Profile page, see

Profile Page Layout

.


**Video - Adding New Users to Domo**


 Adding Users One by One
-------------------------

You can add users to Domo one at a time in the
 **Add New Person**
 dialog, which you can access either through the Admin Settings or by clicking

at the top of the screen and selecting
 **People > Person**
 . When you invite a user to Domo in this way, you can fill in his/her personal and contact information, upload a photo, and specify his/her security role.


**To add a single user to Domo,**

. Do one of the following:

1. Click

 in the app toolbar at the top of the screen and select
	 **People > Person**
	 .
	2. Click
	 **More**
	**>**
	**Admin > Governance > People**
	 , then click
	 **Add New Person**
	 .


	 An
	 **Add New Person**
	 dialog appears.
2. In the appropriate fields, enter the user's name and email address.
3. Select a security role for the user from the menu.


 For more information about security roles, see

Security Role Reference

.
4. Click
 **Invite**
 .


 If an error message appears indicating you need to provide a proper email address and the email address you specified is properly formed, then you cannot add that person because the domain in the email address is not authorized. For more information, see

Specifying Authorized Domains for Invited Users

.


 A

Profile page

is set up for the user, and their name and basic information appears in the Admin Settings. In addition, an email is sent to the address you entered for the user, providing instructions on how to join Domo. To finish setting up their accounts, invited users must complete several additional steps.
5. (Optional) Enter a phone number, title, and employee number for the user.

*Notes:**

 Users can edit their name and phone number in their
 **Profile**
 page.
* Users
 *cannot*
 edit their email address and employee number in their
 **Profile**
 page. These settings are only editable in the Admin Settings.
* Enter only numbers (up to 16 digits) in the employee numbers field.

Adding Users in Bulk
------------------------

You can add users or groups to your Domo instance in bulk by uploading a CSV file containing the information for all the users or groups you want to add. You do this by going into
 **More >**
**Admin > Governance > People**
 and choosing
 **Bulk Import**
 . This opens a dialog in which you can select the CSV file with your user information. This dialog also allows you to download a sample CSV file with the columns you will need to fill in with your own data. This method of adding users is much quicker and easier than adding users one at a time or using Domo's API.


 You must have a "Privileged" or "Admin" default security role or a custom role with "Add New Users" enabled to use this feature. For more information about default security roles, see

Managing Custom Roles

.

*Video - Bulk Import Users**

*To bulk add users to Domo,**

. Navigate to
 **More**
**> Admin**
 to open the Admin Settings.


 The Admin Settings opens.
2. Click the
 **Governance**
 tab.
3. The
 **People**
 sub-tab opens.
4. Click
 **Bulk Import**
 in the top right corner of the
 **People**
 tab.


 The
 **Bulk Import**
 dialog opens.
5. Create an import file in CSV format with the following formatting:


 Required columns are indicated by an asterisk \*


| **Column Header**  | **Type**  | **Valid values/format**  |
|
 \*email
  |
 Email
  |
 Example:

johnsmith@domo.com
  |
|
 \*displayName
  |
 String
  |
 Example: John Smith
  |
|
 edit
  |
 Boolean
  |
 Example: TRUE/FALSE

*Note:**
 This column value will override the edit mode provided by the form.

|
|
 newEmail
  |
 String
  |
 Example:

johnsmith@newDomain.com


**Note:**
 This will change the person's identifying email address and login.

|
|
 alternateEmail
  |
 Email
  |
 Example:

johnsmith@domo.com
  |
|
 title
  |
 String
  |
 Example: Software Engineer
  |
|
 roleId
  |
 Number
  |
 Enter a number:

1 (Admin)

2 (Privileged)

3 (Editor)

4 (Participant)

5 (Social)
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
 Employee number is being replaced by Employee ID. Please use Employee ID instead.

|
|
 employeeId
  |
 String
  |
 Example: ABC123

*Note:**
 This attribute is overridden by the employeeNumber value when provided to Domo through an SSO login. This is different from Employee# and will not show up in the UI.

|
|
 locale
  |
 Locale language tag
  |
 Valid values:

de-DE, de-AT, de-CH, en-AU, en-CA, en-150, en-HK, en-IE, en-IL, en-MO, en-NZ, en-SG, en-GB, en-US, en-001, es-ES, es-US, es-419, es-MX, fr-BE, fr-CA, fr-FR, fr-CH, nl-BE, nl-NL, pt-BR, pt-PT, ja-JP, zh-CN, zh-Hans-HK, zh-Hans-MO, zh-Hans-SG
  |
|
 location
  |
 String
  |
 Example: Utah
  |
|
 sendInvite
  |
 Boolean
  |

Example: TRUE/FALSE

*Note:**
 This column will override customer settings for sending an invite email.

|
|
 groups
  |
 String
  |
 Example: groupname1,groupname2

*Note:**
 Separate each group name with a comma.

|


 The easiest way to do this is by clicking
 **Download example**
 to download a template to your computer, then, under the correct column headers, filling in the information for the users you want to bring into Domo. At minimum, you will need to fill in the "displayName" and "email" columns.

*Important:**

If you intend to save your CSV import file using UTF-8 encoding, you cannot simply change the encoding type when saving; otherwise you will get an error telling you to check the names of your column headers. As a workaround to this issue, you can do the following:


	1. Save the file in Excel format.
	2. Open the file in a text application such as Notepad.
	3. Select
	 **Save As**
	 .
	4. Select
	 **UTF-8**
	 in the
	 **Encoding**
	 dropdown menu.
	5. Save the file.

You should now be able to upload the newly saved file without any problems.
6. (Conditional) If you want to add new people and update existing people simultaneously, select
 **Add new people and edit existing profiles**
 .
7. (Conditional) If the import file contains group data for your users, check the
 **Create new group(s)**
 box if you want to bring those groups into Domo.
8. Upload your CSV file by dragging and dropping into the area with dashed lines or clicking
 **Browse**
 and navigating to the desired file on your computer.

All of the users in the spreadsheet are imported into Domo and their information is populated into the correct fields in the Admin Settings and user Profile pages.

