

Intro
-------

In Domo Sandbox, linked repositories allow you to migrate existing production dashboards and DataFlows to a development instance without making changes in production. Once in place, you can make changes in a controlled development location and then promote the changes to update production. Creating a linked repository is intended to be a one-time process for moving production content into a development environment. After you create a linked repository, we recommend only promoting from development to production.


 For more general information about Sandbox, see

Domo Sandbox.


####
 Key Terms


|
 Term
  |
 Description
  |
| --- | --- |
|
 Production Instance
  |
 The destination instance where the dashboards and/or DataFlows currently exist.
  |
|
 Development Instance
  |
 The source instance where the dashboards and/or DataFlows are populated and used as a source of Sandbox.
  |

Creating a Linked Repository
------------------------------


**Note:**
 Before creating a linked repository, ensure that relationships between instances are established. This is necessary when two instances are involved. To learn how to create instance relationships, see

Domo Sandbox.


 1. Log into your production instance. In the navigation header, select
 **More**
 >
 **Admin**
 .


 The
 **Admin Settings**
 displays.


 2. Under
 **Governance**
 , select
 **Sandbox**
 .


 3. In the
 **My Repositories**
 tab, select
 **+ New Repository.**

4. Configure the repository:

 Name the repository.
* Select the
 **Create as Linked Repository**
 box.
* Select the
 **Object Type**
 being versioned.
* Choose the items you want to include in the repository


**Note:**
 By default,
 **Create initial commit**
 is selected. When the repository is saved, the first version is committed.

5. Select
 **Save Repository**
 .


 The
 **Share Access**
 modal displays. You can share the linked repository with the development instance during this step or later. For more information, see the Instance Sharing heading of

Domo Sandbox

.


 6. In the list of
 **Instances Without Access**
 , find your development instance and change the permissions from
 **No Access**
 to
 **Can Promote.**


**Note:**
 Only instances with pre-configured relationships display. For information on inviting instances, see the Instance Relationships heading of

Domo Sandbox.


 7. Select
 **Close.**


 The repository is stored in Sandbox in the
 **My Repositories**
 tab, and access is shared with the development instance.


 Committing the Linked Repository
----------------------------------

The initial commit occurs if specified while creating the repository.


 If no committed version exists, complete these steps after creating the repository:


 1. Log into your production instance. In the navigation header, select
 **More**
 >
 **Admin**
 .


 The
 **Admin Settings**
 displays.


 2. Under
 **Governance**
 , select
 **Sandbox.**


 3. Go to
 **Repositories > My Repositories.**

4. Locate the repository and select
 **Commit.**


 5. Enter a description for the new version. By default, the new version is promoted. If you don't want the new version to be immediately available for promotion, uncheck the
 **Allow this commit to be promoted**
 box.

6. Select
 **Save**
 .


 The process to capture and store the new version is initiated.


 Promoting and Linking the Repository
--------------------------------------

1. Log into your development instance. In the navigation header, select
 **More**
 >
 **Admin**
 .


 The
 **Admin Settings**
 displays.


 2. Under
 **Governance**
 , select
 **Sandbox**
 .


 3. In the
 **Shared Repositories**
 tab, locate the linked repository. Select
 **Assign Owner**
 .


 The
 **Assign Owner**
 modal displays.

*Note:**
 Linked repositories are indicated with

next to the Repository Name.


 4. Enter the name of the owner. They can promote, delete, and share the repository.


 5. Select
 **Save**
 .


 After an owner has been assigned to the repository in the development instance, the
 **Assign Owner**
 button will be replaced with
 **Promote.**


 6. Locate the linked repository and select
 **Promote.**


 The repository's details display.


 7. (Conditional) Perform any necessary mappings and apply advanced settings, if applicable.


 8. Select
 **Promote and Link.**


 9. Enter a new repository name and review the information in the modal below.

10. Select
 **Promote and Link.**


 This final step does the following:

 Promotes the repository in the development instance. This creates the objects in the development.
* Creates a new repository in the development instance with the name entered in Step 5. The new repository includes the objects created during the promotion and commits this new repository.
* Shares this repository with the production instance and allows production to promote this new repository.
* Maps this new repository to the existing production objects. This step is critical because it causes the production objects to be updated by this new repository.

Verifying Success
-------------------

1. In the development instance, confirm that the newly created repository exists in the
 **My Repositories**
 tab.


 2. Confirm that the objects were promoted successfully. You may need to refresh your browser to load newly created objects.


 3. Ensure that the new repository was committed successfully.

*Important:**
 If there is an error in the process, Sandbox will undo any completed steps from the promotion and link, and you should not see a new repository.

4. (Optional) Delete the original linked repository. Ongoing changes should be made in the development instance and promoted to production.

5. Go back into the production instance and promote the repository that was created in the development instance. This does not create duplicate content as a typical repository would. Instead, it promotes on top of the original content since the content in development is mapped to the content in production.


