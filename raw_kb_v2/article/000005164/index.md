

Intro
-------

You can use attributes to drive dynamic groups and dynamic personalized data permissions (PDP). This can significantly reduce the overhead of managing group and data access. Depending on your needs, attributes can be managed by your identity provider, your Domo admins, or your users.

##
 Why attributes?

These are examples of two of the most common problems that attributes can solve:

###
 Department-Based Access

The Sales and Marketing departments should have access to customer performance dashboards. However, team members in these departments change frequently, and managing group membership manually is a challenge.


**Solution**

Use dynamic groups to automatically populate group membership based on the department attribute in a user profile.

###
 Org Structure-Based Access

BI department team members should have access to instance monitoring dashboards. The department attribute is not properly maintained in our identity provider, but


 only BI team members contribute to the BI team cost center. This assignment is tracked in the user's profile as a list of "Contributing Cost Centers".


**Solution**


 Use dynamic groups to populate group membership based on whether this attribute contains the BI team cost center.

--

This article provides more information about attributes in the following topics:

 Add attribute
* Manage attributes
* Manage attribute values
* Usage
* Security
* FAQ


---

Add Attribute
-----------------

Follow these steps to add an attribute:

. In the Domo navigation header, select
 **More**
 >
 **Admin**
 .


 The Admin Settings display.
2. In the
 **Governance**
 menu, select
 **Attributes**
 .


 The
 **Attributes**
 section displays.
3. Select
 **+**
**New Attribute**
 .


 The
 **Create new attribute**
 modal displays.
4. In the modal, fill in the following fields:
	* **Name —**
	 A descriptive name shown within Domo. This does not need to be unique, although we recommend unique names to avoid confusion.
	* **(Optional) Description —**
	 Details to help users understand what this attribute represents.
	* **Key —**
	 A unique, case-sensitive name for the attribute. If the attribute is sourced from your IdP, this must exactly match the name used in your IdP configuration. After it is set, this value cannot be changed.
	* **Visibility —**
	 Selecting
	 **Limited visibility**
	 indicates that this attribute's value is not directly visible to non-admin users. However, this attribute can potentially be used to identify users. For example, if the attribute is trusted, it can be used to populate group membership, which in turn can


	 identify users with a given value.
	* **Value Source —**
	 Indicates allowable sources of values for this attribute:

	+ **IdP —**
		 If enabled, values are sourced from your IdP each time a user signs in


		 to Domo. Note that this also requires your SSO configuration to allow attribute population via the Enable custom attribute ingestion option.


		 See the

	 SSO articles

	 for more information.
		+ **Grant: Edit Users —**
		 If enabled, users with the Edit Users grant can edit values for this attribute. If the
		 **IdP**
		 source is also enabled and your IdP contains values for this attribute, those values overwrite any user-entered values the next time the user signs in.
		+ **Managed —**
		 If enabled, this attribute is managed and users cannot edit their own values. This permits using the attribute in security policies.
5. Select
 **Save**
 .

Manage Attributes
---------------------

You can edit and remove certain existing attributes. System attributes are not removable. Other attributes can be removed and edited, but only if they are not used in dynamic groups or PDP policies. This ensures the original intent of the attribute is not changed while it's in use.

The
 **Attribute management**
 table shows properties of your defined attributes:

 **System —**
 System attributes are defined by Domo and cannot be removed. However,


 certain properties of system attributes are editable.
* **Managed —**
 Managed attributes are not editable by the user themselves;  the value source is Managed. These attributes can be used to drive dynamic group membership and dynamic PDP policies.
* **Data type —**
 For system attributes, the data type is defined by Domo. For user-defined attributes, data types are inferred from the values received/entered. Data types follow the Java definition for that type.


 For more details, see

Java's documentation

. Attributes can also be multi-valued (list/array).
* **PDP policies —**
 Indicates the number of dynamic PDP policies that use this attribute. Select the number to view a list of those policies.
* **Groups —**
 Indicates the dynamic groups that use this attribute.
* **Actions —**
 Non-system attributes that are not being used as part of a PDP policy or group can be edited or deleted. System attributes cannot be removed.

Manage Attribute Values
---------------------------

You can edit attribute values in the
 **People**
 section of the
 **Governance**
 settings. You can only edit unmanaged attributes with the
 **Grant: Edit Users**
 value source from this page.

*Note:**
 If the attribute is also sourced from your IdP, any manually changed values reset to the IdP-sourced value the next time the user signs in.

Usage
---------

Managed attributes (both system and custom) can be used to populate dynamic groups based on values in a user's profile. See our

Creating and Managing User Groups

article


 for more detail.


 Managed attributes (both system and custom) can also be used to create dynamic PDP policies. See

Creating and Deleting PDP Policies

for more information.


 Security
------------

Users with the Manage all company settings grant can manage attributes.


 FAQ
-------

*Can I use custom attributes in dynamic groups and dynamic PDP?**


 Custom (non-system) attributes can be used in both dynamic groups and dynamic PDP policies as long as they're managed. See the details above for how to configure an attribute as

managed

.

*Can I export my attribute configuration?**

Not at this time.

*I'm renaming an attribute key in my IdP. How do I change the key in Domo?**

Attribute keys cannot be changed. Instead, create a new attribute.

*Why can't I edit an attribute?**

Attributes are only editable when they are not being used to drive group membership and PDP rules. See

Manage Attributes

above for more information.

*How do I edit attribute values in bulk?**

Bulk user import does not currently support editing custom attribute values, but we are exploring options to allow that.

