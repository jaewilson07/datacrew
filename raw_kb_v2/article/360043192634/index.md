

Intro
=======

Because creating Excel and CSV jobs in Workbench and keeping them up-to-date can be a time-consuming process, let Workbench do the work for you by designating a DataSync folder. In a DataSync folder, you store all of your Excel and CSV files that you want to be uploaded as DataSets to Domo. Workbench monitors this folder and automatically creates jobs for all of the Excel and CSV files within it. When updates are made to the files in the folder, those updates are made to the associated jobs in Workbench.


 In addition to saving you time and effort, DataSync also has the benefit of giving your users the peace of mind of knowing that they are seeing the latest versions of your Excel and CSV data in Domo.


 Things to note
================


* Only .xls, .xlsx, and .csv files can be synced using DataSync.
* You must be an admin on your machine to set up Workbench and DataSync. However, non-admins can still drag and drop items into the sync folder.
* You can toggle DataSync to "off" to continue watching existing files but stop monitoring for new files.
* To sync a nested folder, you will need to add that folder directly as a DataSync folder in Workbench.

Configuration steps
=====================

*To configure a DataSync folder in Workbench,**

. Create a folder on your machine or network.
2. In the folder you created, add all of the Excel and CSV files you want to be synced in Workbench.
3. In Workbench, click on the

icon in the bottom left corner of the screen.
4. Click the ellipsis (...) to the right of the
 **File Path**
 field and locate the folder you just created.
5. Click the + button to add the folder to the list of synced folders.
6. (Optional) To unsync a synced folder, click the blue toggle button to the right of the folder name.
7. (Optional) To resync a folder after having unsynced it, click the gray toggle button to the right of the folder name.
8. (Optional) To delete a folder from the list, unsync it as described in step 6 then click the trash can icon. Here you are presented with two options--delete just the folder OR delete the folder and all of its jobs.

If you choose the first option, no new files will be added but any existing files in the folder will update. If you choose the second option, all existing jobs will stop updating. Once you have made your choice, hold down the Shift key and click
 **Confirm & Delete.**


