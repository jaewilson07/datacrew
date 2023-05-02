


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

This topic describes the options available in the
 **Security**
 menu in Workbench. You can open this menu by selecting
 **Settings > Security**
 .

The settings in this menu are as follows:


**Only run locally managed jobs**
 . When this box is checked, changes to jobs can be made
 *only*
 on this machine. They cannot be made through the API or any other sources. This prevents hacking of your Workbench API.


**Require impersonation credentials for all jobs**
 . When this box is checked, Workbench requests non-default credentials for all DataSet jobs (i.e. no jobs can be run as the local system). Because users are forced to enter non-default credentials, jobs are run at the proper security level. This option is only available if you have administrator privileges.

