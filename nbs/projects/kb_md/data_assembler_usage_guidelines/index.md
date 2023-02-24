---
<<<<<<< HEAD
    title: Data Assembler Usage Guidelines
    url: https://domo-support.domo.com/s/article/360043437753
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360043437753](https://domo-support.domo.com/s/article/360043437753)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003157
    views: 2,266
    created_date: 2022-10-24 21:10:00
    last updated: 2022-10-24 22:41:00
    ---
=======
title: Data Assembler Usage Guidelines
url: https://domo-support.domo.com/s/article/360043437753
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360043437753](https://domo-support.domo.com/s/article/360043437753)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003157
views: 2,265
created_date: 2022-10-24 21:10:00
last updated: 2022-10-24 22:41:00
---
>>>>>>> fe496b1d734bfbc1f7998509d0072e99b55e6786



Intro
-----


For each Data Assembler job, there are six key criteria to consider. If the job does not meet these criteria, the stability of the job and validity of the data may be compromised.


To download the guidelines in this page as a PDF, click here: [Data Assembler Use Guildines.pdf](https://domosoftware.sharepoint.com/:w:/s/CS-Edu-PublicFiles/ERBO89_2i6pGlbOHTqks8BgBIoFUb64nZLpUudBzPkiybA?e=PrEArK "Data Assembler Use Guildines.pdf")


To download this content as a Word doc, click here: [Data Assembler Guidelines.docx](https://domosoftware.sharepoint.com/:b:/s/CS-Edu-PublicFiles/EZKF17ais5lEo7jum1wiMpUB_jidsg1X0GvDChLwxjggwg?e=vSiDWs "Data Assembler Guidelines.docx")


Usage guidelines
----------------


### Average partition size


* This can be calculated by taking the total row count and dividing by the number of partitions.
* The partition key chosen should result in an average partition size as large as possible.
* An ideal average partition size is over 100k rows, but we recommend a minimum of 50k rows per partition.


### Input ratio


* This is the ratio of the input DataSets to the output DataSets. This represents the amount of data that will be updated during the execution and should be as small as possible.
* We recommend targeting 1% or less, but this percentage should be no larger than 10%.
* Limit to only one input when using the upsert option.


### Update frequency


* The Data Assembler is intended to be used to update data once per day.
* We strongly recommend not exceeding four executions per day.
* The Data Assembler should not be used to update data more frequently than once per hour.


### Number of partitions updating on each execution


* The Data Assembler should not be used if a large number of partitions will be updated during each execution.
* Jobs executing daily should not update more than 100 partitions.
* Jobs executing more frequently than daily should not exceed 10 partitions.


### Schema changes


* The schemas of the input and output DataSets should not change. The Data Assembler can handle certain schema changes, but we do not recommend using the tool to make these changes as the data may become corrupted.


### Overall data size


* In data sizes less than 10 million rows, we generally recommend using the standard DataFlow options due to the additional flexibility afforded in those Domo features.


### Other tips


* When creating a new job, start with a “manual” schedule. Once the job is confirmed ready for production, change the schedule as needed.
* Use triggers only when necessary. We recommend using the scheduling options first.
* Periodically review jobs. Deactivate or delete jobs that are no longer necessary.
* When processing large historical fill jobs (over 100 million rows), consider splitting the history into smaller sets of data. If the event of an error, you will be able to restart the job on the portion of data where the job failure occurred.
