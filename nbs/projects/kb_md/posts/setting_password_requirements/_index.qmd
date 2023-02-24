---
title: Setting Password Requirements
url: https://domo-support.domo.com/s/article/360042934474
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360042934474](https://domo-support.domo.com/s/article/360042934474)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003022
views: 2,356
created_date: 2022-10-24 21:00:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


You can set password requirements for Domo to enforce when users create or change passwords. You can only do this if you have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled.


For more information about default security roles, see [Managing Custom Roles](/s/article/360043438973 "Security Role Reference").


To set user password requirements, do the following:


1. In the navigation header, select **More** **> Admin**.  
The **Admin Settings** displays.


2. Select **Authentication** > **Authentication**.


3. Set the password requirements you want when users create or change passwords.







**Tip:** Set reasonable password requirements, keeping in mind that users accessing Domo on a mobile device sign in using a keypad.



4. Select **Save**.


Password requirements you can set include the following:




| Name | Description |
| --- | --- |
| Enable password length check | Sets whether Domo checks password length. When enabled, the **Minimum Password Length** field displays, which sets the minimum number of characters that passwords must contain. |
| Must contain UPPERCASE characters (A-Z) | Sets whether passwords must contain uppercase characters. |
| Must contain lowercase characters (a-z) | Sets whether passwords must contain lowercase characters. |
| Must contain digits (0-9) | Sets whether passwords must contain numbers. |
| Must contain non-alphanumeric characters (!,@,#,&) | Sets whether passwords must contain characters besides alphabet and number characters. |
| Enable account lock | Sets whether Domo allows account locking. When enabled, the **Accounts lock after *#* invalid login attempts** field displays, which sets the number of invalid attempts to sign in before the account is locked. |
| Enable password expiration | Sets whether Domo allows account locking. When enabled, the **Passwords expire in *#* days** field displays, which sets the number of days after passwords are created or changed when users must change their password.Users are prompted to change their password before it expires (daily, 14 days before expiration). |


 


Password Blocklist (Beta)
-------------------------


Enterprise customers can restrict their users from using specific passwords by creating a blocklist. This can be valuable if you've had unauthorized credential usage and to limit use of passwords commonly assigned within your organization. Entries in the blocklist include passwords that do not meet the requirements you set, as mentioned above, and a growing list of the most commonly used global passwords. Entries within the blocklist are not permitted when a user creates or changes their password, but they do not impact passwords currently in use.


These settings only apply to Domo accounts passwords and do not impact your IdP account.


If you are interested in this feature, please contact your Customer Success Manager (CSM). 

