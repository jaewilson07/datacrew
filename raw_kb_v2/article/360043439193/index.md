


 Intro
--------


 In the Admin Settings, you can access options for enabling multi-factor authentication for the employees in your company. When multi-factor authentication is enabled, users who log into

Domo

are sent an authentication code via text message. They must then enter this code to access

Domo

. If they have not entered mobile numbers into Domo, they will receive an email instead. They will not receive a separate prompt.

The mobile app does not currently act as the second factor for authentication. Users on mobile will need to receive the SMS message the first time they log in.


 If enabling multi-factor authentication outside the US, please note that your valid mobile phone number MUST start with a country code. For instance, if receiving SMS notifications in Japan, enter your number as "+81 80-1234-5678" where 81 is the Japan country code. If you are unsure what your country code is, see

https://countrycode.org/

*Important:**
 Multi-Factor Authentication settings are not enforced when users log in through SSO. If you require multi-factor authentication for SSO users, this needs to be configured with the identity provider. Direct Sign-On users will still have multi-factor authentication applied to their logins. For more information, see

Understanding and Configuring Domo Single Sign-On

.

In
 **More >**

*Admin**

*> Authentication > Authentication**
 , you have access to the following multi-factor authentication options:


* You can set a requirement that users redo their multi-factor authentication after a given number of days.
* You can set a requirement that codes expire after a given number of failed attempts.


 You can also set multi-factor authentication for yourself, as opposed to turning it on for your entire company. You do this in your user
 **Settings**
 screen.


**Video - Multi-Factor Authentication**


 Enabling Multi-Factor Authentication for Your Company
--------------------------------------------------------


 You can only change the authentication settings if you have an Admin default security role or a custom role with the Manage All Company Settings grant enabled. For more information about default security roles, see

Managing Custom Roles

.


 1. In the navigation header, go to
 **More > Admin**
 .


 The


 Admin Settings


 displays.

2. In the
 **Authentication**
 panel, locate
 **Multi-factor Authentication**
 .

a. (Optional) To require that users redo their multi-factor authentication after a given number of days, do the following:


* Check the
 **Require users to periodically redo Multi-factor authentication**
 box.
* Enter the number of days before multi-factoring expires.


 b. To set that codes expire after a given number of failed attempts, do the following:


* Enter the number of accepted invalid attempts before code expiration.
* Select
 **Save**
 .


 Your authentication preferences are complete.

FAQs
-------

*Can I require Multi-Factor Authentication for my users?**

Yes. Please contact your customer service team to have this capability added to your instance. You'll then have access to a new setting on the Authentication screen that will allow you to require MFA for your users.

*Is multi-factor verification supported by Workbench, Excel Plugin, or PowerPoint Plugin?**


 Not at this time.


**Why can't I receive my verification code?**


 Your valid mobile phone number MUST start with a country code. If your

phone number in Japan is 080-1234-5678, enter it as "+81 80-1234-5678" w

here 81 is the Japan country code. If you are unsure what your country code is, see

https://countrycode.org/

*What will happen if multi-factor authentication is enabled before users have entered their mobile numbers?**

Those users will receive an email with the code instead of a text message.


