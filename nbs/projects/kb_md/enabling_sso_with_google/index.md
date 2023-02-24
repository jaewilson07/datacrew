---
title: Enabling SSO with Google
url: https://domo-support.domo.com/s/article/360043438053
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360043438053](https://domo-support.domo.com/s/article/360043438053)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso](https://domo-support.domo.com/s/topic/0TO5w000000ZanoGAC/implementing-sso)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003050
views: 2,377
created_date: 2022-10-24 21:08:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Follow the steps in this article to configure Google as a SAML identity provider for Domo. Once you do this, users will be able to sign into Domo using their Google credentials. To do this, you must be signed in as a [super administrator](https://support.google.com/a/answer/33325?hl=en "Enabling SSO with Google") in Google. You must also have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SSO. For more information about default roles, see [Managing Custom Roles](/s/article/360043438973 "Default Security Role Reference").  


Part 1: Setting up Google as a SAML Provider
--------------------------------------------


1. [Sign in](https://admin.google.com/) to your [Google Admin console](https://support.google.com/a/answer/182076).


You must sign in using a Google *administrator account.*
2. From the Admin console Home page, go to ****Apps >********SAML Apps****.


To see Apps on the Home page, you might have to click ****More controls**** at the bottom.
3. Click the plus (+) icon at bottom right.
4. Locate and click ****Domo**** in the application list.
5. On the ****Google IDP Information**** page:


	1. Copy and save the SSO URL.
	2. Copy and save the Entity ID.
	3. Download the certificate.
6. Click ****Next****.


The ****Basic information**** window shows the ****Application name**** and ****Description**** seen by users.
7. Click ****Next****.
8. Edit the ****Service Provider Details**** as follows:


	* ****ACS URL****:  Replace {your‑domain} with your domain name.
	* ****Entity ID****:  Paste the "Entity ID" copied in step 5.
	* Set ****Name ID Format**** to "Email."
9. Click ****Finish****.


Part 2: Configuring the Google IDP in Domo
------------------------------------------


1. Open a new incognito browser window.
2. Sign into your Domo instance.  
  
You *must* have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled to set up SSO. For more information about default roles, see [Managing Custom Roles](/s/article/360043438973 "Default Security Role Reference").
3. Click **More**, then navigate to **Admin > Authentication > SAML (SSO)**.
4. Click ****Enable Single Sign-on****.
5. Enter the Google identity provider information you obtained from Part 1 in this article. 


	* ****Identity Provider endpoint URL****: The SSO URL you copied in step 5a in Part 1.
	* ****Entity ID****: The Entity ID you copied in step 5b in Part 1.
	* ****X.509 certificate****: The certificate you downloaded in step 5c in Part 1.
6. Click ****Save****.


Part 3: Enabling Domo in the Google Admin Console
-------------------------------------------------


1. Sign in to your Google Admin console.


You must sign in using a Google *administrator account.*
2. From the Admin console Home page, go to ****Apps >********SAML Apps****.


To see Apps on the Home page, you might have to click ****More controls**** at the bottom.
3. Select ****Domo****.
4. At the top right of the gray box, click **Edit Service**.
5. (Conditional) To apply settings to all organizations, click ****On for everyone**** or ****Off for everyone****, and then click ****Save****. To apply settings to individual organizational units, do the following: 


	1. At the left, select the organizational unit that contains the users whose settings you want to change.
	2. To change the setting, select ****On**** or ****Off****. To keep the setting the same, even if the parent setting changes, click ****Override****.
	3. (Conditional) If the organization's status is already ****Overridden****, choose an option:
	
	
	****Inherit****—Reverts to the same setting as its parent.
	
	
	****Save****—Saves your new setting (even if the parent setting changes).
6. Ensure that your Domo user account email IDs match those in the domain for your Google service.


Part 4: Verify that the SSO is Working
--------------------------------------


1. Close all browser windows.
2. Attempt to sign in to your Domo instance.  
You should be automatically redirected to the Google sign-in page.
3. Enter your sign-in credentials.
4. After your sign-in credentials are authenticated, you are automatically redirected back to Domo.
