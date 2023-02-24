---
    title: Trello Dashboard App
    url: https://domo-support.domo.com/s/article/360042934194
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042934194](https://domo-support.domo.com/s/article/360042934194)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004164
    views: 1,100
    created_date: 2022-10-24 21:26:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Trello is visual organization and task completion tool designed for teams.


Usage
-----


Business questions that can be answered:


* What are the contents within each badge?
* What still needs to be done?
* What is the status of each badge?
* How are members using the boards?


Metrics included in the app:


* Attachments
* Badges in Lists
* Badges on Each Board
* Badges on Each List
* Checklists
* Checklists
* Comment on Badges
* Comments
* Due Date of Badges
* Due Dates
* Due in the Next 7 Days
* Labeled Badges
* Labels
* List Pipeline
* Member Activity
* Member Activity
* Member Documentation
* Members' Badges
* Members' Badges in Lists


Authentication
--------------


A Trello username and password is required to authenticate.


Dashboard Reports
-----------------


For report descriptions, see Trello Connector.


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as followed:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| All Cards |   | Filter | Select all cards, all cards on a specific board, or all cards with members |
| Member Cards |   | Filter | Select all members in an organization, all members on a specific board, or all members on a specific board |


Dashboard Data
--------------


The Trello Dashboard will provide the following data collections and cards:




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Summary: 5 Metrics to manage Trello. | Badges in Lists | BADGES IN LISTSDisplays the number of badges in each list. Evaluate your list pipeline and focus on moving badges through your lists. | All Cards |
| Executive Summary: 5 Metrics to manage Trello. | Checklists | CHECKLISTSDisplays the number of complete vs incomplete checklists. Determine what can be done to finish out the incomplete checklists. | All Cards |
| Executive Summary: 5 Metrics to manage Trello. | Comment on Badges | COMMENT ON BADGESLists all badges and provides links to email comments directly to badges. Use this to evaluate and comment on badges without having to leave Domo. | All Cards |
| Executive Summary: 5 Metrics to manage Trello. | List Pipeline | LIST PIPELINEShows the number of badges in each list. Evaluate bottlenecks in your process. | All Cards |
| Executive Summary: 5 Metrics to manage Trello. | Member Activity | MEMBER ACTIVITYIllustrates the last time there was activity on a badge by a member. Use this information to evaluate member activity. | Member Cards |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Attachments and Comments: What are the contents within each badge? | Attachments | ATTACHMENTSIllustrates the number of attachments on each badge. If certain documents need to be attached, determine which badges are in compliance. | Member Cards |
| Attachments and Comments: What are the contents within each badge? | Comments | COMMENTSShows the number of comments on each badge. Investigate the badges with the most comments to see if there are problems that can be addressed. | All Cards |
| Attachments and Comments: What are the contents within each badge? | Member Documentation | MEMBER DOCUMENTATIONDisplays the number of attachments and comments for each badge membership set. Evaluate the activity of membership sets. | All Cards |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Checklists and Dates: What still needs to be done? | Checklists | CHECKLISTSShows the number of checklist items and how many of those item have been completed. Consider using this to estimate the workload required to complete the checklists. | Member Cards |
| Checklists and Dates: What still needs to be done? | Due Date of Badges | DUE DATE OF BADGESIllustrates the number of badges with a due date in the given week. Consider this information in planning workloads. | All Cards |
| Checklists and Dates: What still needs to be done? | Due in the Next 7 Days | DUE IN THE NEXT 7 DAYSShows the names of badges that have a due date within the next 7 days. Consider this information when determining workload planning. | All Cards |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Lists, Labels and Boards: What is the status of each badge? | Badges on Each Board | BADGES ON EACH BOARDShows the number of badges on each Trello board. To manage your boards, set an alert to be notified when badges are added or deleted. | All Cards |
| Lists, Labels and Boards: What is the status of each badge? | Badges on Each List | BADGES ON EACH LISTDisplays the number of badges on each list. Set an alert to be notified when badges are added or deleted to manage your Trello lists. | All Cards |
| Lists, Labels and Boards: What is the status of each badge? | Labeled Badges | LABELED BADGESDisplays the number of badges by member and label. Evaluate member focus areas. | Member Cards |
| Lists, Labels and Boards: What is the status of each badge? | Labels | LABELSShows the relative number of badges associated with each label. Evaluate your usage of labels. | All Cards |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Member Usage: How are members using the boards? | Due Dates | DUE DATESShows the number of badges due by each member by date. Use this card to evaluate upcoming workloads. | Member Cards |
| Member Usage: How are members using the boards? | Member Activity | MEMBER ACTIVITYDisplays the date badges were last updated by each member. Determine which members are currently active on Trello. | Member Cards |
| Member Usage: How are members using the boards? | Members' Badges | MEMBERS' BADGESShows the total number of badges each member has. Consider this information in workload planning. | Member Cards |
| Member Usage: How are members using the boards? | Members' Badges in Lists | MEMBERS' BADGES IN LISTSShows the number of badges each member has and the list they are in. Evaluate members' workloads. | Member Cards |


 

