

Intro
-------


 Workbench provides a platform that generally allows users to continue running their Workbench systems on outdated versions. Users can manually upgrade to the latest, most feature-rich version of Workbench. This article addresses the most common issues users have experienced when upgrading from Workbench 4 to the latest version of Workbench (5.1 or newer).

Common Migration Issues
-------------------------


 There are two primary issues users encounter when upgrading to the latest version of Workbench:


1. Users try to upgrade to the latest version of Workbench while simultaneously moving their Workbench to a different machine. Domo does NOT support simultaneous migration and upgrading. Complete these tasks separately.
2. Existing jobs on the "older" version of Workbench have encryption errors go unnoticed until the time of migration.


**Note:**

Jobs with encryption errors will prevent your existing Workbench jobs from successfully executing. These errors typically occur during the upgrade process as the system is attempting to migrate all existing Workbench jobs to the latest version.

To successfully upgrade, all jobs would ideally be in an error-free state. It is possible that jobs in a bad state have gone unnoticed. Reasons include...


* A job hasn't updated or run recently.
* A job was set up without a schedule.
* A job was set to run manually.
* A job came from a previous machine migration.


 Below is a walk-through to help you be successful in upgrading to the latest version of Workbench.

Identifying and Resolving Encryption Errors
---------------------------------------------


 To ensure a successful migration, Domo recommends auditing the overall health of your existing Workbench machine.


 Review the steps below:


**Step 1:**
 Review all jobs that have not run in that last month. For any jobs that are not in a healthy state or haven’t run recently, ask yourself, “Is this job still needed?” If the answer is no, consider deleting the job and moving on.


**Step 2:**
 For any jobs that haven’t run successfully, navigate to that job’s
 **Overview**
 screen, and run a preview. If the preview is successful and pulls up data, the job is in a good state. If it is unsuccessful, then action is needed to address the error. If the job is unneeded, delete from your machine.


**Step 3:**
 Fix the jobs in an error state. Typically, this will mean navigating to the
 **Configuration**
 tab and updating fields per the identified error. If there is an encryption error, then you will likely need to update any password, keys, or login information, then save the job. Saving the job will encrypt any sensitive data with the right encryption key on the Workbench machine.


**Step 4:**
 Repeat steps 2 and 3 for any older jobs that haven’t run recently.


 Upgrading to a newer version of Workbench is a perfect opportunity to audit and clean up your data pipeline. Domo highly recommends performing a general audit and review of all Workbench jobs to ensure they are still relevant and applicable to your business needs—not only the jobs that are in an error state.


 Reviewing and removing irrelevant jobs will he

lp overall machine performance, reduce clutter in your Domo instance, and ensure a successful migration to Workbench 5

. The ideal candidate eligible for migration from a Workbench 4 version to a Workbench 5 version will have all jobs able to run in a successful state.


