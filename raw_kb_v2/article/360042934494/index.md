

Access tokens are used to import data in or export data from Domo. If you have an "Admin" default security role or a custom role with either "Manage All Company Settings" or "Manage All Access Tokens" enabled, you can generate access tokens; otherwise, you need to request an access token from your Domo Admin. For more information about default security roles, see

Managing Custom Roles

.


**Important:**

Access tokens are associated with specific user accounts and have the same access as the user. If the user's permissions change, the access token reflects that. Users should not share their access tokens with others.


**To generate an access token,**

. Click
 **More**
**> Admin**
 .
2. Select
 **Authentication**
**>**
**Access tokens**
 .
3. In the
 **Manage Access Tokens**
 pane, click
 **Generate access token**
 .
4. Specify the token information:

1. In the
	 **Access token description**
	 field, enter a name for the token.
	2. In the
	 **Search users**
	 field, select the user the token is for.

**Important:**
	 The access token is associated with a specific user account. Users should
	 *not*
	 share the access token with others.
	3. In the
	 **Expire after**
	 menu, select the number in days before the token expires.
	4. Click
	 **Generate**
	 .
5. Copy the access token, pasting it where you can use it later.


 You
 *cannot*
 see the token after you leave the
 **Access tokens**
 screen.

*To revoke an access token,**

. Click
 **More**
**>**
**Admin**
 .


 The Admin Settings appears.
2. Select
 **Authentication**
**>**
**Access tokens**
 .
3. In the
 **Manage access tokens**
 pane, locate the access token by name and user, then click the associated
 **Revoke**
 link.


