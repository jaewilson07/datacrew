

In the
 **Network s

ecurity**
 tab of the

Admin Settings, you can specify the domains from which new users can be invited. For example, if you only want users with your company's email domain added to Domo, preventing personal email domains such as gmail, yahoo, etc. then you would add your company's email domain to the list. You can only access this tab if you have an "Admin" default security role or a custom role with "Manage All Company Settings" enabled. For more information about default security roles, see

Managing Custom Roles

.


 If no domains are specified:

 Domo places no restrictions on sending invitations to people whose email address does not contain an authorized domain.
* Users can invite anyone to join Domo.

If any domains are specified:

 Domo restricts sending invitations to people whose email address contains an authorized domain.
* Users can only invite people whose email address contains an authorized domain.


 When inviting someone to join Domo, an error message appears if the domain in the email address is not authorized (and the email address is properly formed).

*To create or update a list of authorized domains,**

. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
2. Under
 **Network S**

*ecurity**
 , click
 **Authorized domains (for invites)**
 .
3. In the
 **Domain name**
 box, do one of the following:

* To not restrict any domains and allow anyone to be invited, delete all domains from the box.
	* To restrict domains and who can be invited, enter all authorized domains, separated by commas. For example:


	`domain1.com

 ,

 domain2.com`
4. Click
 **Add**
 .


