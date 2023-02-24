---
title: Understanding Form Response Data
url: https://domo-support.domo.com/s/article/9485049422103
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042933614](https://domo-support.domo.com/s/article/360042933614)', '[https://domo-support.domo.com/s/article/9485049422103](https://domo-support.domo.com/s/article/9485049422103)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004122
views: 1,257
created_date: 2022-10-24 21:22:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


When a form is used in [Form Viewer,](/s/article/360042933614) a DataSet is created with the responses. The owner of that DataSet is the user who first created that instance of the Form Builder or Form Viewer app. This is because in the AppDB system, where collections are stored, the collection owner and the DataSet owner must match for successful exporting.


The data is exported every 15 minutes based on AppDB's default.


The table below provides a reference for the response data.


Response Data Reference
-----------------------




|   | Column | Description |
| --- | --- | --- |
| Form-level Attributes | Form ID | Unique identifier (GUID) of the form |
| Form Name | Form name as defined in the form editor |
| Description | Form description as defined in the form editor |
| Tags | Tags as defined in the form editor |
| Response Type | Response type mode (Ex: Single response, Multiple response) |
| User Attributes | User ID | Domo user ID of the user who entered form responses |
| User Name | User name of the user who entered form responses |
| Section-level Attributes | Section ID | Unique identifier (GUID) of the section. A form can contain one or more sections. |
| Section Name | Section name as defined in the form editor |
| Item-level Attributes | Item ID | Unique identifier (GUID) of the item, or the form entry field. A form section can contain one or more items. |
| Type | The item type (Ex: text, dropdown) |
| Label | Item label (question text) as defined in the form editor |
| Response Options | For dropdown questions, this field contains the various options presented to the user |
| Required | Indicates whether a response is required for a particular item (TRUE or FALSE) |
| Input Column | Only applicable to table sections.
The name of the column as presented in the form data entry grid. |
| Submission Attributes | Session ID | Unique identifier (GUID) of a user session. This is per user and per device. |
| Submission ID | Unique identifier (GUID) of the submission |
| Submitted | A flag that indicates whether or not all the required fields in teh form were completed. (TRUE or FALSE) |
| Submission Time | Timestamp of the submission (NULL if not submitted) |
| Last Modified | Timestamp of the last time the item was modified |
| Created | Timestamp of when the item response was first created |
| Responses | Value | The actual user response to the form question |
| Response Number | The number of the response to a particular question.
This is populated for all question types but only meaningful for multi-select questions, for which each response has its own response number. |
| Active Page Filters | Page filters that were in place when the form was completed |
| Response Archived | Whether or not the specific response record is archived (TRUE or FALSE).
You can consider archived responses deprecated and ignore them. |
| UserComment | For dropdown questions, the user entry in “Explain your response”. |
| Pseudo Identifier | Applicable only in table sections.
This field contains a JSON string of *key:value* pairs representing the unique identifier columns and their values. These unique identifiers are defined when the table section is configured. The data in this field are used to map a specific response to a single record in the form data entry grid |
| App Database Metadata | \_\_documentId\_\_ | Unique identifier (GUID) of a single record in the response dataset.
Created when the response data is written to the application database. |
| \_\_createdBy\_\_ | Domo user ID of the user who created the form response |
| \_\_created\_\_ | Timestamp for when the response record was written to the application database |
| \_\_modifiedBy\_\_ | Domo user ID of the user who last modified the form response |
| \_\_modified\_\_ | Timestamp of the most recent modification to the response record in the application database |

