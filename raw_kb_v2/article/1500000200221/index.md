


###
*What is happening?*


 Adobe has deprecated the use of WSSE in its APIs. Although Adobe has not announced a date when WSSE will completely be retired, we are recommending that customers start planning for a migration to the Adobe Connectors that use JWT or OAuth to authenticate. The migration will take place only after customer request.


###
*What is the impact of this change?*


 WSSE authentication was used to access Adobe Analytics API v1.4. Domo has updated all Adobe Analytics connectors that use the API version that require JWT or OAuth credentials when creating new datasets. Existing datasets using WSSE authentication are still running, but need to be updated to use JWT or OAuth authentication instead of WSSE to continue running without interruption.

*Note:**

The Adobe Analytics Connectors are not being retired or deprecated, and the functionality of the Connectors has NOT changed.


###
*How do I know if my DataSets will be affected?*

To determine if an Adobe Analytics DataSet will be affected, do the following:

. Navigate to your Adobe Analytics DataSet in the
 **Data Center**
 .
2. Click on
 **Settings >>**
**Credentials**
 to see which Account is being used.
3. If the credentials say "Adobe Analytics Account," then the dataset uses WSSE authentication and needs to be updated to use JWT or OAuth authentication. If the account name begins with "Adobe Analytics JWT " or "Adobe Analytics OAuth" then the dataset is already using JWT or OAuth authentication and no update is needed. If you still aren't sure, select
 **Add Account**
 from the dropdown to create a new Account for this dataset. If the required credentials are Username:Company and Secret, then the dataset is using  WSSE authentication and will need to be updated. If the credentials are Client ID and Client Secret, then the dataset is not using WSSE and is not impacted.


###
*What do I need to do?*

If you no longer need your Adobe Analytics DataSets to update, you do not need to take any action.


 If you need to continue updating your Adobe Analytics DataSets, you will need to do the following to keep the DataSets running uninterrupted:

. Identify any DataSets that are affected. If you are not sure how to do that based on the description above, please contact Domo Support.
2. Create a Support ticket and request these DataSets be updated to use JWT or OAuth.
3. **After the migration**
 , create a new

Adobe Analytics JWT or

Adobe Analytics OAuth Account and associate it with the appropriate DataSets. Refer to the

Associating a newly created Adobe Analytics JWT or OAuth account with the existing DataSet

section for details.

*Note:**
 JWT and OAuth use client id and secret that are not the same as the WSSE authentication tokens.

##

How do I create a new project with JWT authentication in*
*the Adobe Developer Console?*

To create a new project in Adobe Developer Console, do the following:


 1. Log into

https://console.adobe.io/projects

.


 2. Click
 **Create new project**
 button.

3. Click on
 **Add API**
 to start using the Adobe services.

4. The APIs available to you will be listed in the
 **Add an API**
 window. Select
 **Adobe Analytics**
 .

5. Now, you need to select the authentication type. Select
 **Service Account (JWT)**
 here.

6. Select and click
 **Generate a key pair**
 .

7. A new key pair will be generated and downloaded to your system. The public key will be uploaded to your JWT project. The private key will be downloaded.

8. Unzip the file "config.zip", open the directory "config", and open the file "private.key" with a basic text editor. This is the
 **Private Key**
 you will paste into Domo, in Credentials section.


 9. Now, click
 **Next**
 .


 10. Select the desired product profiles, then click
 **Save Configured API**
 .


 11. This takes you to the
 **Project APIs and Services**
 page. If you scroll down, you will see the
 **Client ID, Client Secret, Technical Account ID**
 and
 **Organization ID**
 that you will use to create the Adobe Analytics JWT account in Domo.

12. (Optional) Rename the project to something you will recognize later. Navigate to the
 **Project Overview**
 page, then click
 **Edit Project**
 .

##

How do I create a new*
*Adobe Analytics*
*JWT*
*Account?*

*To add an Adobe Analytics JWT account to Domo from the Accounts view:**


 1. Navigate to the
 **Accounts**
 section of the Data Center by clicking on the Accounts icon in the left-hand pane in the Data Center.

2. In
 **Accounts**
 , click
 **Add Account**
 .

3. Select the desired Adobe Analytics connector.

4. The Log in window for Adobe Analytics will appear. Enter your Client ID, Client Secret, Technical Account ID, Organization ID, and Private Key for Adobe Analytics, and click


**Connect**
 .

5. An entry for the new Adobe Analytics JWT account will appear in the
 **Accounts**
 view listing.


**To add an Adobe Analytics JWT account to Domo by adding a DataSet and entering new account information:**


 As you add the Adobe Analytics JWT account through the connector, an entry for the new account appears automatically in the
 **Accounts**
 view. While creating a new account, you need to enter the Client ID, Client Secret, Technical Account ID, Organization ID, and Private Key obtained from the

Adobe Developer Console

while creating a new project. To obtain client credentials for an app that accesses services on behalf of an end-user, you'll need to create a


**JWT**
 connection using the Adobe Developer Console. Refer to the

Creating a new JWT project in the Adobe Developer Console

section to learn how to create a new JWT project.

##
*How do I create a new OAuth project in the Adobe Developer Console?*


####
 Creating a new OAuth project in the Adobe Developer Console


1. Log in to

https://console.adobe.io/projects

.
2. Click the
 **Create new project**
 button.
3. Click on
 **Add API**
 to start using the Adobe services.


 4. The APIs available to you will be listed in the
 **Add an API**
 window. Select
 **Adobe Analytics**
 .

5. Now, you need to select the authentication type. Select
 **OAuth**
 here.

6. Select
 **Web**
 platform to configure the API. Enter the redirect URI as -

https://oauth.domo.com/api/data/v2/oauth/providers/adobe-analytics-oauth/exchange


 7. Click
 **Save configured API**
 .

##
*How do I create a new*
*Adobe Analytics*
*OAuth*
*Account?*

*To add an Adobe Analytics OAuth account to Domo from the Accounts view:**


 1. Navigate to the
 **Accounts**
 section of the Data Center by clicking on the Accounts icon in the left-hand pane in the Data Center.

2. In
 **Accounts**
 , click
 **Add Account**
 .

3. Select the desired Adobe Analytics Connector.

4. The Log in window for Adobe Analytics will appear. Enter your Client ID and Client Secret for Adobe Analytics, and click
 **Connect**
 .

5. An entry for the new Adobe Analytics OAuth account will appear in the
 **Accounts**
 view listing.


**To add an Adobe Analytics OAuth account to Domo by adding a DataSet and entering new account information:**


 As you add the Adobe Analytics OAuth account through the Connector, an entry for the new account appears automatically in the
 **Accounts**
 view. While creating a new account, you need to enter the client ID and client secret obtained from the

Adobe Developer Console

.  To obtain client credentials for an app that accesses services on behalf of an end-user, you'll need to create an
 **OAuth**
 connection using the Adobe Developer Console. Refer to the

Creating a new OAuth project in the Adobe Developer Console

section to learn how to create a new OAuth project.


**OAuth connection workflow**

. Create a project in Adobe Developer Console
2. Add an API to your project using OAuth authentication and authorization


###
*After I enter the Client ID and Secret and click Create Account, the OAuth popup window that comes up is blank, or the Create Account process never finishes. What should I check?*

Make sure that you followed the instructions to

create a new Adobe Analytics OAuth project

in the Adobe Developer Console, and the Client ID and Client Secret you enter are the same ones that you got during that process.

##
*How do I associate the Adobe Analytics*

JWT or*

OAuth Account with an existing DataSet?*

Associating a newly created Adobe Analytics JWT

or Adobe Analytics OAuth

account with the existing DataSet:

. Visit the
 **DataSets**
 page in the Data Center.


 2. Locate your existing DataSet that you want to associate with a new JWT or OAuth account.

3. The DataSet details will appear.

4. Click the
 **Settings**
 tab. You will be redirected to the Connector's Credentials section.

5. Here, you can select your new JWT or OAuth account if it's already created, or you can create a new account to associate with your selected DataSet.


 6. Click
 **Save**
 .


 FAQs
------


####

Do I need to migrate to JWT or OAuth right away?


 Although Adobe has not announced a date when WSSE will completely be retired, we are recommending that customers start planning for a migration to the Adobe Connectors that use JWT or OAuth to authenticate. However, the migration will take place only after customer request.


####

Which authentication method should I prefer?

Adobe Analytics OAuth has a refresh token that expires after two weeks (see

Adobe documentation

for details.) This causes Adobe OAuth to no longer authenticate after two weeks. Adobe recommends JWT authentication instead. You may use the OAuth authentication but you will need to recreate your account every two weeks.

###
 How long does it take to migrate DataSets?

It usually takes one business day to migrate DataSets.

###
 Will my DataSets continue to run during the migration? Will my Cards and DataFlows I have built on these DataSets continue to run?


 Yes, they will continue to run while they are being migrated. Once they have been migrated to JWT or OAuth, they will stop running until they are associated with the new JWT or OAuth Account.


####

Will the update to JWT or OAuth change the functionality of the connector?

No, the update will neither add nor remove the functionality of the Connector.

###
 Can’t Domo update the Account for me on all my DataSets?

Unfortunately, that is not possible.

###
 What if I don’t migrate my DataSets?

If your DataSets still require WSSE authentication by the time WSSE is retired, they will stop being able to authenticate to Adobe.

###
 I need to use v1.4 of the Adobe Analytics API. If I migrate my DataSet to use JWT or OAuth, will the DataSet now use v2.0 of the Adobe Analytics API?


 No, your dataset will continue to use v1.4 of the Adobe Analytics API. This migration only updates the authentication mechanism from WSSE to JWT or OAuth, and does not change the version of API the dataset is using. No reports or schedule settings will be changed if a dataset is migrated from WSSE authentication to JWT or OAuth.


