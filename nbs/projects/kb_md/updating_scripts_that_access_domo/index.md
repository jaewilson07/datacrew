---
title: Updating Scripts That Access Domo
url: https://domo-support.domo.com/s/article/360043439213
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC)', '[https://domo-support.domo.com/s/article/360043439213](https://domo-support.domo.com/s/article/360043439213)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options](https://domo-support.domo.com/s/topic/0TO5w000000ZandGAC/domo-security-options)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003017
views: 1,104
created_date: 2022-10-24 20:59:00
last updated: 2022-10-24 22:39:00
---



To ensure legitimate client requests are not rejected, all script requests must comply with the request header validation requirements of Domo.


Domo will review:


1. Inclusion of an origin header (URL with  https ) that matches your host header (which only includes the domain portion). If the origin is there and does not match the host header, it will be blocked. The match is case-sensitive. If not included, the next rule will ensure success.
2. Inclusion of a custom header that cross-origin sites can't include, such as X-Requested-With: XMLHttpRequest
