

Intro
-------

*Note:**
 If your organization uses single sign-on (SSO), you cannot change your password using the steps described in this article. Instead, contact your internal IT team to change your password. If you have SSO configured, the login screen displays as in this example:

This article describes how to change your Domo password and troubleshoot potential issues in the following topics:

 Change password in user settings
* Change a forgotten or expired password
* Change your password before it expires
* Troubleshooting

Change Your Password in User Settings
-----------------------------------------

If your organization uses direct sign-on, you can change your password by following these steps:

. In the Domo navigation header, select your profile picture to expand the user action menu.
2. Select

*Settings**
 .


 The user
 **Settings**
 page opens with the
 **General**
 tab selected by default.
3. Under
 **Security**
 , select
 **Change your password**
 .


 The
 **Change Password**
 fields display.
4. Enter your current password in the
 **Current Password**
 field.
5. Enter your new password in the
 **New Password**
 box. Your password may need to meet certain criteria, depending on your organization's settings. See

Setting Password Requirements

for more information.
6. Reenter your new password in the
 **Retype New Password**
 field.
7. Select
 **Save**
 to keep your new password or
 **Cancel**
 to return to the settings without changing your password.

Change a Forgotten or Expired Password
------------------------------------------

If you forget your password to sign in to Domo, or if it expires, you can change your password from the login page if you know the email address for your account.


 For information about changing your password in your profile, see

Specifying Your Personal Profile Information

.


 Follow these steps to change your password from the login page:

. In an internet browser, enter your organization's domo URL in this format:

https://
 *mycompany.*

domo.com

.


 The login page displays.
2. Select
 **Forgot password?**


 A dialog displays.
3. Enter your email address, then select
 **Request Reset Link**
 .


 An email is sent to the email address.
4. Log in to your email account and find the email message. The email message has the subject line
 **Forgotten Password**
 . If the email doesn't arrive, contact your Domo admin.
5. Open the email message, then select
 **Reset Your Password**
 .


 A dialog appears where you can change your password.
6. Enter a new password in the first field.
7. Reenter the same password in the second field.
8. Select
 **Reset Your Password**
 . Your password may need to meet certain requirements. See

Setting Password Requirements

to learn more.

*Note:**
 If for any reason you have issues while resetting your password, reach out to an Admin-level user or a user with a custom role for which the Edit Users grant has been enabled. These users have the ability to change a password for a particular user in the Admin Settings in Domo.


 Change Your Password Before It Expires
------------------------------------------

When password expiration is enabled, your password is set to expire after a specified amount of time. You can change your password in Domo before it expires.


 A few days before your password expires, a prompt displays after you sign in.


 Follow these steps to change your password before it expires:

. When prompted, select
 **Change your password**
 .
2. Enter your current password that is expiring, then enter and confirm a new password. Your password may need to meet certain requirements. See

Setting Password Requirements

to learn more.
3. Select
 **Save**
 to save your new password.

Troubleshooting
-------------------

If you try to reset your password and don't receive a password reset email, try the following:

 Look in your email junk folder.
* Verify your organization's authentication method—if your company uses SSO for authentication, no email is sent. Talk to your internal IT team to reset your password.
* Check your Domo instance URL.


**Important:**
 Your Domo instance URL should look like

customername.domo.com

. It is important to note that regardless of what you type in the customer name portion of the URL, a login page displays, however, your credentials do not work. Just because you see a login screen doesn't mean your URL is entered correctly.


 If you still have issues resetting your password, reach out to either an Admin-level user or a user with a custom role with the Edit Users grant enabled within your organization. These users have the ability to change a password for a particular user in the Admin Settings within Domo.

*Important:**
 If another person changes your password, we strongly recommend that you follow the steps to

change your password in user settings

after you regain access to ensure that your password remains secure.

