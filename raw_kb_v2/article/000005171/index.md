

Intro
-------

Domo Forms allows you to create and manage reusable forms that can be integrated into Domo systems. This is an essential part of the User Task system in

Workflows

, which powers the task management system in

Queues

. You can also use Forms as a standalone feature by integrating Forms with App Studio.


 This article describes how to access, configure, and manage Forms in the following topics:

 Required grants
* Navigation
* Form permissions
* Home page
* Create a new form
* Form editor
* Header
* Canvas
* Validation

Required Grants
-------------------

There are two grants that give user-specific rights to forms in your Domo environment:

 **Manage Forms**
 — Allows you to perform any action on any form in the instance. This should be granted to superusers, admins, or anyone who helps manage forms.
* **Create Forms**
 — Allows you to create a net new form. This should be granted to any user who needs the ability to create and add new forms to the form repository in the instance.


**Note:**
 Contact your Customer Success Manager (CSM) or Account Executive (AE) to receive either of these grants for your instance. For information about the available permissions for non-instance admin users, see the

Form Permissions

section of this article.

Navigation
--------------

Follow these steps to access Forms:

. From the navigation header, select
 **More**
 >
 **Workflows**
 .


 The Workflows landing page displays.

*Note:**
 If

*Workflows**
 does not display in the
 **More**
 menu, it needs to be enabled in your Domo instance. Contact

Domo Support

or your CSM/AE for assistance.
2. In the left sidebar, select

Forms.


 The Forms home page displays.

Form Permissions
--------------------

You can grant permissions inside Forms for other users or groups to perform specific actions for a specific form. To grant permissions, follow the steps below.

. Select the

action menu for the form in the Forms Repository List on the Forms home page.


 The action menu displays.
2. Select
 **Manage Permissions.**


 The permissions modal displays. The title of the modal is
 **Share access with the Form**
 .


 The permissions modal contains a search bar, a list of
 **People With Access**
 to the form, and a list of
 **People Without Access**
 to the form. By default, the owner of the form always has Admin permission to the form.
3. In the search bar, enter the name of a person or group.


 If the user or group is found in the instance, they display at the top of the list of
 **People Without Access**
 . A menu displays next to the user or group name. This menu determines the permissions for the user or group; the default permission is No Access.
4. Select the menu for the user or group and select the permission you want to grant them. The following list describes the level of access to the form each permission determines:

* **Admin**
	 — Allows the user/group to perform any action for


	 the form.
	* **Delete**
	 — Allows the user/group to delete the form.
	* **Read**
	 — Allows the user/group to view the form.
	* **Write**
	 — Allows the user/group to edit the form.
	* **Share**
	 — Allows the user/group to share the form with others, but they can only grant permissions that they themselves have.

Home Page
-------------

The Forms home page displays all available forms based on your permissions, options for creating new forms, a menu of actions for existing forms, and more. The home page components are described below.


###
 Forms Repository List

The Forms Repository List is the main feature of the home page. Each row in the list represents an individual form. This list of column headers describes the information contained in each column:

 **Title**
 — Displays the title of the form.
* **Last Modified**
 — Provides the date when the form was last updated.
* **Last Published**
 — Provides the date when the form was last published. If the form has not yet been published, a dash (–) displays.
* **Created By**
 — Displays the name of the person who created the form.


####
 Action Menu

Each row in the Forms Repository List includes an

action menu after the
 **Created By**
 column that contains available actions for that form. The following actions display in the menu:

 **Manage Permissions**
 — Opens the permissions modal. To learn about permissions, see the

Form Permissions

heading.
* **Duplicate**
 — Creates a duplicate form that immediately displays at the top of the Repository List.
* **View version list**
 — Opens a page that displays the form's version list. You can view historically published versions of the form and select an older version to make it the latest version.
* **View inputs/outputs**
 — Opens a modal that describes the form's contract. The contract is the definition of which fields accept input, which provide output, which are optional, and which are read only.

Create a New Form
---------------------


**Note:**
 You must have the Create Forms grant to create a new form. See the

Required Grants

section of this article for more information.

To create a new form, select
 **+**
**New Form**
 on the home page. If this option is disabled, contact your Domo admin or CSM/AE.


 The form editor opens. See the next section for information about the form editor.

Form Editor
---------------

The form editor is where you build and configure forms with fields, labels, and parameters. You can add as many fields and sections to a form as you want. There are two areas in the editor: the header and the canvas. These sections are described below.


###


 Header


 The header at the top of the editor contains the following items:

 **Name and Description fields**
 — Select

*Edit**
 by either field to add a name for the form or an optional description. After you add either a name or description, you can edit it


 by selecting the name or description until the field displays as editable.
* **Form Owner and sharing**
 — The form owner's name and avatar display beside the

*Share**
 option. Select

*Share**
 to open the permissions modal. See

Form Permissions

for information about this modal.
* **Preview Mode**
 — The
 **Preview Mode**
 toggle lets you see how the form looks and behaves at runtime. While previewing, you can enter data into the form and try out the different field options you have configured. Enabling the mode displays


 a preview of the form in the canvas area of the editor.
* **Form Settings**
 — In
 **Form Settings**
 , you can control the labels and descriptions for your form. You can also choose to hide the name of the form.
* **View inputs/outputs**
 — Selecting

*View inputs/outputs**
 opens the
 **Inputs/Outputs Catalo**
**g**
 modal, which displays the form contract. The contract of a form is its designated inputs and outputs. The modal has two tabs:
 **Inputs/Outputs**
 and
 **Uncatalogued**
 .

The
 **Inputs/Outputs**
 tab renders each field in the form as a single line item. The field name and alias display on the left side. The alias name displays as a parameter for the entity that integrates with the form (the entity is either a workflow or a Domo app).

The input/output contract displays on the right side of the tab.

means that the field is a parameter in the form contract, while

means that the field is not a parameter in the form contract. You can change a field's designation by selecting either of these icons.

An input field requires the integrating system to pass a mapping or value to the form. This is so that the field pre-populates with the mapping or value data when it renders to an end user.


 An output field passes the data in the field to the integrating system for use. When you create a form, you must determine what data the form requires as input and what data the form provides as output.
* **View version list**
 — Selecting

*View version list**
 ​​​​​lets you access the version history of a form.


 You can save a form as many times as you want before publishing it. The first version of a form has a Draft status until you publish it, at which point the form has a Published status.


 You cannot change a form's contract after the form has been published. This prevents breaking integrations with other products that use the form. However, after you publish a form, you can change

its

labels, descriptions, and the order of fields and sections.


 When you save a form after publishing it, a new version is created with a Draft status. If you make changes to this version, the changes do not take effect at runtime until you publish it. You can create as many versions as you want, but note that you cannot change the contract from the original published form.


 You can view a previous version of the form, or make a previous version the current version of the form, using the

action menu


 in each version row. ,
* **Save menu**
 — The save menu has three options:
 **Save Draft**
 ,
 **Safe Draft As**
 , and
 **Save & Publish**
 .

You can save your form as many times as you want before you publish it. To save a form, select
 **Save Draft**
 in the page header. The save menu options are as follows:

+ **Save Draft**
	 — Saves the form in a draft state.
	+ **Save Draft As**
	 — Creates a copy of the form as a new form in the repository. This works in the same way as the Duplicate


	 option on the Forms home page.
	+ **Save & Publish**
	 — Saves the form in a published state. This allows you to select the form


	 for integration


	 with other Domo products.


	**Note:**
	 After publishing


	 a


	 form, you cannot


	 change its contract (inputs and outputs). See

 View version list

 for more information about publishing.


###


 Canvas

The canvas area of the editor contains the sections of the form. Each section is a different page in the form and can contain multiple fields. The following paragraphs describe the components


 of each section.


 Each section displays a section count: the number of the section over the total number of sections in the form. In this example, the section is the first of one section.

You can minimize or maximize a section of the form by selecting

*Collapse**
 or

*Expand**
 . If you try to collapse a section without completing


 all the fields in the section, the form errors and you receive an alert that the
 **Add Name**
 field must have a value.


 Select the

action menu to view the possible actions for the section:
 **Duplicate section**
 ,
 **Move section**
 , and
 **Delete section**
 . You cannot move or delete a section if there is only one section in the form, because a form must have at least one section. This list describes each possible action:

 **Duplicate Section**
 — Copies the section and places it directly below itself.
* **Move Section**
 — Allows you to move the section using drag-and-drop functionality.
* **Delete Section**
 — Removes the section from the form.


 Fill in the
 **Add Name**
 field and enter an optional description of the form in the
 **Description**
 field by selecting

*Edit**
 by either field.


 Select
 **+ Add Section**
 to create a new section of the form. Each section represents a different page of the form when the form renders at runtime, so if you want one page, you only need one section.

For each item in a section, there are
 **Label**
 ,
 **Field Type**
 , and
 **Data Type**
 fields.

###
 Field Label and Description

Enter text in the
 **Label**
 field to identify the name of the


 field that displays in the published form. In this example, the name of the field is InputOrderNum.

###

To add an optional description for the field, select
 **+ Description (Optional)**
 .

###
 Field Type

For each item, you must specify the field type. Each type changes how the field displays in the system it's integrated with and how the form user populates the field. For example,
 **Short Answer**
 provides a simple text field, while
 **Date/Time**
 provides a calendar and time picker.


 The possible field types are listed below:

 Multiple Choice
* Single Choice
* Short Answer
* Date/Time
* Duration
* Attachment
* Photo
* Title/Description
* List Response
* Paragraph

###
 Data Type

For each item, you must specify the data type. It's important to note that different types of fields contain different data. The
 **Data Type**
 menu filters the accepted data types for your selected
 **Field Type**
 , as described in the previous section.


 The possible data types are listed below:

 Text
* Date
* Time
* Date/Time
* Number
* Decimal
* Duration

###
 Optional Toggle

The
 **Optional**
 toggle allows you to make an item required or optional for users of the form. By default, this toggle is off, making the item required. Required fields force users to enter a value before submitting the form.


####
 Duplicate a Field

Selecting

*Duplicate**
 copies the item and places the copy directly below the original item in the same section. This is useful if you want to create an item with similar configurations to an existing item.


####
 Item Action Menu

Each item has an

action menu with different configuration options. When you select this menu, the following options display:

 **Accepts Default Input**
 — Makes the item an input parameter of the form. The integrating system must provide a data value or values to populate the field when it renders. This method of marking a field as input is in addition to the method described in the explanation of

View inputs/outputs

.
* **Provides Output**
 — Makes the item an output parameter of the form. The integrating system receives the data value or values that are entered into the field after it is submitted. This method of marking a field as output is in addition to the method described in the explanation of

View inputs/outputs

.
* **Read Only**
 — Disables the item from accepting data entered by the form user. You should use this option if you do not want a data value displayed in the field to change.
* **Move Field**
 — Allows you to reorder the field using drag-and-drop functionality.
* **Delete**
 — Removes the field from the form.


####
 Add Item

Select
 **Add Item**
 to create a new item in the section/page. You can add as many items to a section/page as you want.


####
 Use External Values

Single-choice and multiple-choice field types allow second input mapping. When you select one of these field types, the
 **Use External Values**
 checkbox displays.

By default, this is deselected, requiring the form user to enter values in the field. Selecting this checkbox indicates that you are mapping the options from an external source.


 If you select this checkbox, the contract modal also displays external values as an additional parameter for the field. For information about this modal, see the explanation of

View inputs/outputs

.

When you enable
 **Accept Default Input**
 for these field types, a mapping is required to have one or more values (depending on the field type) pre-selected when the form renders to an end user.


 You can also preview how the field behaves at runtime.


 Validation
--------------

As you create forms, required configurations are highlighted in red to help you identify missing details. You cannot publish a form until you have completed all required configurations.

