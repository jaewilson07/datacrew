


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5.

Intro
-------

If you experience any problems during or following your migration from Workbench 4 to Workbench 5, you can uninstall Workbench 5 and reinstall Workbench 4. Most of the time, you will not experience any problems moving back to Workbench 4. However, if you have added connection parameters to an ODBC job, you will need to reset those connection parameters in Workbench 4 before those jobs will begin working again. In this article, we explain how to uninstall Workbench 5 and reinstall Workbench 4, then reset the connection parameters in your ODBC job.


 Checking Your Connection Parameters
-------------------------------------

Before uninstalling Workbench 5, you should check and record the connection parameters in each ODBC job before moving back to Workbench 4. If you do not have any connection parameters, simply uninstall Workbench 5 and reinstall Workbench 4. If you are not sure, you will need to check each of your ODBC jobs for connection parameters and record those prior to uninstalling Workbench 5.


**To check the connection parameters in your ODBC jobs...**

. Navigate to the configure tab of the job and select
 **Edit**
 under
 **Source**
 .
2. Make a note of any parameters entered into the
 **Connection Parameters**
 field.


 In the following example, the connection parameters read “Pooling=false.”


 Uninstalling Workbench 5
--------------------------

After you have written down the connection parameters for your ODBC jobs, you can uninstall Workbench 5.


**To uninstall Workbench 5...**

. Go to
 **Control Panel > Programs and Features**
 and select
 **Domo Workbench**
 .
2. In the pop-up window, choose
 **Uninstall**
 .

This uninstalls Workbench 5 and gives you the opportunity to reinstall Workbench 4.


 Reinstalling Workbench 4
--------------------------

Once you have uninstalled Workbench 5, follow these instructions to reinstall Workbench 4.


**To reinstall Workbench 4,**

. Navigate to the Data Center in Domo.
2. Click
 **On-Premise**
 in the toolbar at the top of the screen.
3. Select the
 **Install Workbench 4**
 option in the bottom right.

After you reinstall Workbench 4, initially it may appear that all the jobs are working as normal. However, if you check
 **Source >  Connection Parameters,**
 you’ll notice the data was not decrypted during the rollback. Simply clear out the encrypted value and replace it with the original value (in the case of the above example,

Pooling=false

).

After you enter the connection parameters, the job should work as expected.

