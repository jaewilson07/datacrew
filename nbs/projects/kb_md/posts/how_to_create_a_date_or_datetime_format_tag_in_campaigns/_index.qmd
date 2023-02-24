---
title: How to Create a Date or DateTime Format Tag in Campaigns
url: https://domo-support.domo.com/s/article/360058792094
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360058792094](https://domo-support.domo.com/s/article/360058792094)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004129
views: 2,408
created_date: 2022-10-24 21:24:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Change the format of your Date or DateTime field directly in Campaigns before delivering to your customers.


Formatting patterns examples
----------------------------


You can use pre-formatted strings to format your Date or DateTime fields however you want.  Some examples of common patterns are:




|  |  |
| --- | --- |
| **PATTERN** | **EXAMPLE** |
| `yyyy-MM-dd` | 2018-07-14 |
| `dd-MMM-yyyy` | 14-Jul-2018 |
| `dd/MM/yyyy` | 14/07/2018 |
| `E, MMM dd yyyy` | Sat, Jul 14 2018 |
| `h:mm a` | 12:08 PM |
| `EEEE, MMM dd, yyyy HH:mm:ss a` | Saturday, Jul 14, 2018 14:31:06 PM |
| `yyyy-MM-dd'T'HH:mm:ssZ` | 2018-07-14T14:31:30+0530 |
| `hh 'o''clock' a, zzzz` | 12 o’clock PM, Pacific Daylight Time |
| `K:mm a, z` | 0:08 PM, PDT |


Patterns for formatting
-----------------------


Here is a complete list of the symbols and meaning that can be used to format your Date and DateTime fields.  Examples are given using the date August 3rd, 2020.




|  |  |  |  |
| --- | --- | --- | --- |
| **SYMBOL** | **MEANING** | **PRESENTATION** | **EXAMPLES** |
| yy, yyyy | The year. | year | 20, 2020 |
| M, MM, MMM, MMMM | The month of the year.   | number/text | 8, 08, Aug, August |
| d, dd | The day of the month. | number | 3, 03 |
| E, EEEE, EEEEE | The day of the week. | text | Thu, Thursday, T |
| D | The day of year.  The number of days since January 1st. | number | 216 |
| G, GGGG, GGGGG | The period or era. | text | AD, Anno Domini, A |
|  |  |  |  |
| h, hh | The hour, using a 12-hour clock from 1 to 12. | number | 6, 06 for single digit numbersOR11, 11 for double digit numbers |
| H, HH | The hour, using a 24-hour clock from 0 to 23. | number | 6, 06 for single digit numbersOR18, 18 for double digit numbers |
| K, KK | The hour, using a 12-hour clock from 0 to 11. | number | 6, 06 for single digit numbersOR11, 11 for double digit numbers |
| k, kk | The hour, using a 24-hour clock from 1 to 24. | number | 6, 06 for single digit numbersOR18, 18 for double digit numbers |
| m, mm | The minute, from 0 through 59. | number | 3, 03 for single digit numbersOR13, 13 for double digit numbers |
| s, ss | The seconds of a minute, from 0 through 59. | number | 4, 04 for single digit numbersOR11, 11 for double digit numbers |
| S, SS, SSS | The fractions of a second, from 0, through 999. | number | 9, 09, 009 |
|  |  |  |  |
| V, VVVV, VVVVV | Time Zone ID | zone-id | America/Los\_Angeles; Z; -08:30 |
| z, zzzz | Time Zone Name | zone-name | Pacific Standard Time; PST |
| O, OOOO, OOOOO | Localized Zone Offset | offset-O | GMT+8; GMT+08:00; UTC-08:00; |
| X, XX, XXX, XXXX, XXXXX | Zone Offset 'Z' for zero | offset - X | Z; -08; -0830; -08:30; -083015; -08:30:15; |
| x, xx, xxx, xxxx, xxxxx | Zone Offset | offset - x | +0000; -08; -0830; -08:30; -083015; -08:30:15; |
| Z, ZZZZ, ZZZZZ | Zone Offset | offset - Z | +0000; -0800; -08:00; |
|  |  |  |  |
| ' | escape for text | delimiter |  |
| '' | single quote (that is 2 single quotes, not a double-quote) | literal | ' |


Local Specific Formats
----------------------


Below are some specific formatting examples based on local.  Feel free to use them as a reference or a starting point when formatting your Date and DateTime fields.


### **ISO 8601 patterns**




| Date and time patterns | Example |
| --- | --- |
| yyyyMMddZ | 19990322+0100 |
| yyyyMMdd | 19990322 |
| yyyy-MM-dd G | 1999-03-22 AD |
| yyyy-MM-ddXXX | 1999-03-22+01:00 |
| yyyy-MM-dd'T'HH:mm:ss.SSS'['VV']' | 1999-03-22T05:06:07.000[Europe/Paris] |
| yyyy-MM-dd'T'HH:mm:ss.SSS | 1999-03-22T05:06:07.000 |
| yyyy-MM-dd'T'HH:mm:ss | 1999-03-22T05:06:07 |
| yyyy-MM-dd'T'HH:mm:ss.SSS'Z' | 1999-03-22T05:06:07.000Z |
| yyyy-MM-dd'T'HH:mm:ss.SSSXXX | 1999-03-22T05:06:07.000+01:00 |
| yyyy-MM-dd'T'HH:mm:ssXXX | 1999-03-22T05:06:07+01:00 |
| yyyy-DDDXXX | 1999-081+01:00 |
| YYYY'W'wc | 1999W132 |
| YYYY-'W'w-c | 1999-W13-2 |
| yyyy-MM-dd'T'HH:mm:ss.SSSXXX'['VV']' | 1999-03-22T05:06:07.000+01:00[Europe/Paris] |
| yyyy-MM-dd'T'HH:mm:ssXXX'['VV']' | 1999-03-22T05:06:07+01:00[Europe/Paris] |


### **Locale be: Belarussian**




| Date and time patterns | Example |
| --- | --- |
| d.M.yy | 22.3.99 |
| d.M.yy [H.mm](http://H.mm) | 22.3.99 5.06 |
| d.M.yyyy H.mm.ss | 22.3.1999 5.06.07 |


### **Locale cs: Czech**




| Date and time patterns | Example |
| --- | --- |
| d.M.yyyy H:mm:ss | 22.3.1999 5:06:07 |


### **Locale da: Danish**




| Date and time patterns | Example |
| --- | --- |
| dd-MM-yy | 22-03-99 |
| dd-MM-yy HH:mm | 22-03-99 05:06 |
| dd-MM-yyyy HH:mm:ss | 22-03-1999 05:06:07 |


### **Locale de\_DE: German, Germany**




| Date and time patterns | Example |
| --- | --- |
| dd.MM.yy | 22.03.99 |
| d. MMMM yyyy | 22. März 1999 |
| EEEE, d. MMMM yyyy | Montag, 22. März 1999 |
| dd.MM.yyyy | 22.03.1999 |
| dd.MM.yy HH:mm | 22.03.99 05:06 |
| d. MMMM yyyy HH:mm:ss z | 22. März 1999 05:06:07 MEZ |
| dd.MM.yyyy HH:mm:ss | 22.03.1999 05:06:07 |
| dd.MM.yy HH:mm:ss | 22.03.99 05:06:07 |
| dd.MM.yyyy HH:mm | 22.03.1999 05:06 |
| EEEE, d. MMMM yyyy HH:mm' Uhr 'z | Montag, 22. März 1999 05:06 Uhr MEZ |


### **Locale en\_CA: English, Canada**




| Date and time patterns | Example |
| --- | --- |
| d-MMM-yyyy | 22-Mar-1999 |
| dd/MM/yy h:mm a | 22/03/99 5:06 AM |
| EEEE, MMMM d, yyyy h:mm:ss 'o''clock' a z | Monday, March 22, 1999 5:06:07 o'clock AM CET |
| d-MMM-yyyy h:mm:ss a | 22-Mar-1999 5:06:07 AM |


### **Locale en\_GB: English, United Kingdom**




| Date and time patterns | Example |
| --- | --- |
| dd MMMM yyyy | 22 March 1999 |
| EEEE, d MMMM yyyy | Monday, 22 March 1999 |
| dd-MMM-yyyy | 22-Mar-1999 |
| dd MMMM yyyy HH:mm:ss z | 22 March 1999 05:06:07 CET |
| EEEE, d MMMM yyyy HH:mm:ss 'o''clock' z | Monday, 22 March 1999 05:06:07 o'clock CET |
| dd-MMM-yyyy HH:mm:ss | 22-Mar-1999 05:06:07 |
| dd-MMM-yy hh.mm.ss.nnnnnnnnn a | 22-Mar-99 05.06.07.000000888 AM |


### **Locale en\_US : English, United States**




| Date and time patterns | Example |
| --- | --- |
| M/d/yy | 3/22/99 |
| MM/dd/yy | 03/11/22 |
| MM-dd-yy | 03-22-99 |
| M-d-yy | 3-22-99 |
| MMM d, yyyy | Mar 22, 1999 |
| MMMM d, yyyy | March 22, 1999 |
| EEEE, MMMM d, yyyy | Monday, March 22, 1999 |
| MMM d yyyy | Mar 22 1999 |
| MMMM d yyyy | March 22 1999 |
| MM-dd-yyyy | 03-22-1999 |
| M-d-yyyy | 3-22-1999 |
| yyyy-MM-ddXXX | 1999-03-22+01:00 |
| dd/MM/yyyy | 22/03/1999 |
| d/M/yyyy | 22/3/1999 |
| MM/dd/yyyy | 03/22/1999 |
| M/d/yyyy | 3/22/1999 |
| yyyy/M/d | 1999/3/22 |
| M/d/yy h:mm a | 3/22/99 5:06 AM |
| MM/dd/yy h:mm a | 03/22/99 5:06 AM |
| MM-dd-yy h:mm a | 03-22-99 5:06 AM |
| M-d-yy h:mm a | 3-22-99 5:06 AM |
| MMM d, yyyy h:mm:ss a | Mar 22, 1999 5:06:07 AM |
| EEEE, MMMM d, yyyy h:mm:ss a z | Monday, March 22, 1999 5:06:07 AM CET |
| EEE MMM dd HH:mm:ss z yyyy | Mon Mar 22 05:06:07 CET 1999 |
| EEE, d MMM yyyy HH:mm:ss Z | Mon, 22 Mar 1999 05:06:07 +0100 |
| d MMM yyyy HH:mm:ss Z | 22 Mar 1999 05:06:07 +0100 |
| MM-dd-yyyy h:mm:ss a | 03-22-1999 5:06:07 AM |
| M-d-yyyy h:mm:ss a | 3-22-1999 5:06:07 AM |
| yyyy-MM-dd h:mm:ss a | 1999-03-22 5:06:07 AM |
| yyyy-M-d h:mm:ss a | 1999-3-22 5:06:07 AM |
| yyyy-MM-dd HH:mm:ss.S | 1999-03-22 05:06:07.0 |
| dd/MM/yyyy h:mm:ss a | 22/03/1999 5:06:07 AM |
| d/M/yyyy h:mm:ss a | 22/3/1999 5:06:07 AM |
| MM/dd/yyyy h:mm:ss a | 03/22/1999 5:06:07 AM |
| M/d/yyyy h:mm:ss a | 3/22/1999 5:06:07 AM |
| MM/dd/yy h:mm:ss a | 03/22/99 5:06:07 AM |
| MM/dd/yy H:mm:ss | 03/22/99 5:06:07 |
| M/d/yy H:mm:ss | 3/22/99 5:06:07 |
| dd/MM/yyyy h:mm a | 22/03/1999 5:06 AM |
| d/M/yyyy h:mm a | 22/3/1999 5:06 AM |
| MM/dd/yyyy h:mm a | 03/22/1999 5:06 AM |
| M/d/yyyy h:mm a | 3/22/1999 5:06 AM |
| MM-dd-yy h:mm:ss a | 03-22-99 5:06:07 AM |
| M-d-yy h:mm:ss a | 3-22-99 5:06:07 AM |
| MM-dd-yyyy h:mm a | 03-22-1999 5:06 AM |
| M-d-yyyy h:mm a | 3-22-1999 5:06 AM |
| yyyy-MM-dd h:mm a | 1999-03-22 5:06 AM |
| yyyy-M-d h:mm a | 1999-3-22 5:06 AM |
| MMM.dd.yyyy | Mar.22.1999 |
| d/MMM/yyyy H:mm:ss Z | 22/Mar/1999 5:06:07 +0100 |
| dd/MMM/yy h:mm a | 22/Mar/99 5:06 AM |


### **Locale es: Spanish**




| Date and time patterns | Example |
| --- | --- |
| d/MM/yy | 22/03/99 |
| d/MM/yy H:mm | 22/03/99 5:06 |
| d.M.yy H:mm | 22.3.99 5:06 |


### **Locale et: Estonian**




| Date and time patterns | Example |
| --- | --- |
| d.MM.yy | 22.03.99 |
| d.MM.yyyy | 22.03.1999 |
| d.MM.yy H:mm | 22.03.99 5:06 |
| d.MM.yyyy H:mm:ss | 22.03.1999 5:06:07 |


### **Locale fi: Finnish**




| Date and time patterns | Example |
| --- | --- |
| d.M.yyyy | 22.3.1999 |
| d.M.yyyy H:mm | 22.3.1999 5:06 |


### **Locale fr\_CA: French, Canada**




| Date and time patterns | Example |
| --- | --- |
| yy-MM-dd | 99-03-22 |
| yyyy-MM-dd | 1999-03-22 |
| d MMMM yyyy HH:mm:ss z | 22 mars 1999 05:06:07 CET |
| MMMM d, yyyy h:mm:ss z a | March 22, 1999 5:06:07 CET AM |
| yyyy-MM-dd HH:mm:ss | 1999-03-22 05:06:07 |
| EEEE d MMMM yyyy H' h 'mm z | lundi 22 mars 1999 5 h 06 CET |


### **Locale fr\_FR: French, France**




| Date and time patterns | Example |
| --- | --- |
| dd/MM/yy | 22/03/99 |
| d MMM yyyy | 22 mars 1999 |
| d MMMM yyyy | 22 mars 1999 |
| EEEE d MMMM yyyy | lundi 22 mars 1999 |
| dd/MM/yy HH:mm | 22/03/99 05:06 |
| MM/dd/yy HH:mm | 03/22/99 05:06 |
| M/d/yy HH:mm | 3/22/99 05:06 |
| MM-dd-yy HH:mm | 03-22-99 05:06 |
| M-d-yy HH:mm | 3-22-99 05:06 |
| d MMM yyyy HH:mm:ss | 22 mars 1999 05:06:07 |
| d MMMM yyyy HH:mm:ss z | 22 mars 1999 05:06:07 CET |
| MM-dd-yyyy HH:mm:ss | 03-22-1999 05:06:07 |
| M-d-yyyy HH:mm:ss | 3-22-1999 05:06:07 |
| yyyy-M-d HH:mm:ss | 1999-3-22 05:06:07 |
| dd/MM/yyyy HH:mm:ss | 22/03/1999 05:06:07 |
| d/M/yyyy HH:mm:ss | 22/3/1999 05:06:07 |
| MM/dd/yyyy HH:mm:ss | 03/22/1999 05:06:07 |
| M/d/yyyy HH:mm:ss | 3/22/1999 05:06:07 |
| EEEE d MMMM yyyy HH' h 'mm z | lundi 22 mars 1999 05 h 06 CET |
| dd/MM/yy HH:mm:ss | 22/03/99 05:06:07 |
| MM/dd/yy HH:mm:ss | 03/22/99 05:06:07 |
| M/d/yy HH:mm:ss | 3/22/99 05:06:07 |
| dd/MM/yyyy HH:mm | 22/03/1999 05:06 |
| d/M/yyyy HH:mm | 22/3/1999 05:06 |
| MM/dd/yyyy HH:mm | 03/22/1999 05:06 |
| M/d/yyyy HH:mm | 3/22/1999 05:06 |
| MM-dd-yy HH:mm:ss | 03-22-99 05:06:07 |
| M-d-yy HH:mm:ss | 3-22-99 05:06:07 |
| MM-dd-yyyy HH:mm | 03-22-1999 05:06 |
| M-d-yyyy HH:mm | 3-22-1999 05:06 |
| yyyy-M-d HH:mm | 1999-3-22 05:06 |


### **Locale ga: Irish**




| Date and time patterns | Example |
| --- | --- |
| yy/MM/dd HH:mm | 99/03/22 05:06 |


### **Locale hr: Croatian**




| Date and time patterns | Example |
| --- | --- |
| yyyy.MM.dd | 1999.03.22 |
| yyyy.MM.dd HH:mm:ss | 1999.03.22 05:06:07 |
| yyyy.MM.dd HH:mm | 1999.03.22 05:06 |


### **Locale hu: Hungarian**




| Date and time patterns | Example |
| --- | --- |
| yyyy.MM.dd. | 1999.03.22. |
| yyyy.MM.dd. H:mm:ss | 1999.03.22. 5:06:07 |
| yyyy.MM.dd. H:mm | 1999.03.22. 5:06 |


### **Locale is: Icelandic**




| Date and time patterns | Example |
| --- | --- |
| d.M.yyyy HH:mm:ss | 22.3.1999 05:06:07 |
| d.M.yyyy HH:mm | 22.3.1999 05:06 |


### **Locale it\_IT: Italian, Italy**




| Date and time patterns | Example |
| --- | --- |
| d-MMM-yyyy | 22-mar-1999 |
| dd/MM/yy [H.mm](http://H.mm) | 22/03/99 5.06 |
| yy-MM-dd HH:mm | 99-03-22 05:06 |
| d-MMM-yyyy H.mm.ss | 22-mar-1999 5.06.07 |
| d MMMM yyyy H.mm.ss z | 22 marzo 1999 5.06.07 CET |
| EEEE d MMMM yyyy H.mm.ss z | lunedì 22 marzo 1999 5.06.07 CET |


### **Locale iw: Hebrew**




| Date and time patterns | Example |
| --- | --- |
| HH:mm dd/MM/yy | 05:06 22/03/99 |
| HH:mm:ss dd/MM/yyyy | 05:06:07 22/03/1999 |


### **Locale ja\_JP: Japanese, Japan**




| Date and time patterns | Example |
| --- | --- |
| yy/MM/dd | 99/03/22 |
| yyyy/MM/dd | 1999/03/22 |
| yy/MM/dd H:mm | 99/03/22 5:06 |
| MM/dd/yy H:mm | 03/22/99 5:06 |
| M/d/yy H:mm | 3/22/99 5:06 |
| MM-dd-yy H:mm | 03-22-99 5:06 |
| M-d-yy H:mm | 3-22-99 5:06 AM |
| MM-dd-yyyy H:mm:ss | 03-22-1999 5:06:07 |
| M-d-yyyy H:mm:ss | 3-22-1999 5:06:07 |
| yyyy-MM-dd H:mm:ss | 1999-03-22 5:06:07 |
| yy/MM/dd H:mm:ss | 99/03/22 5:06:07 |
| M/d/yy h:mm:ss a | 3/22/99 5:06:07 AM |
| yyyy/MM/dd H:mm | 1999/03/22 5:06 |
| dd/MM/yyyy H:mm | 22/03/1999 5:06 |
| d/M/yyyy H:mm | 22/3/1999 5:06 |
| MM/dd/yyyy H:mm | 03/22/1999 5:06 |
| M/d/yyyy H:mm | 3/22/1999 5:06 |
| MM-dd-yy H:mm:ss | 03-22-99 5:06:07 |
| M-d-yy H:mm:ss | 3-22-99 5:06:07 |
| MM-dd-yyyy H:mm | 03-22-1999 5:06 |
| M-d-yyyy H:mm | 3-22-1999 5:06 |
| yyyy-MM-dd H:mm | 1999-03-22 5:06 |
| yyyy-M-d H:mm | 1999-3-22 5:06 |


### **Locale ko: Korean**




| Date and time patterns | Example |
| --- | --- |
| yy. M. d | 99. 3. 22 |
| yyyy. M. d | 1999. 3. 22 |


### **Locale lt: Lithuanian**




| Date and time patterns | Example |
| --- | --- |
| yy.M.d | 99.3.22 |
| yy.M.d [HH.mm](http://HH.mm) | 99.3.22 05.06 |
| yyyy-MM-dd HH.mm.ss | 1999-03-22 05.06.07 |


### **Locale lv: Latvian**




| Date and time patterns | Example |
| --- | --- |
| yy.d.M | 99.22.3 |
| yyyy.d.M | 1999.22.3 |
| yy.d.M HH:mm | 99.22.3 05:06 |
| yyyy.d.M HH:mm:ss | 1999.22.3 05:06:07 |


### **Locale mk: Macedonian**




| Date and time patterns | Example |
| --- | --- |
| d.M.yy HH:mm | 22.3.99 05:06 |
| d.M.yyyy HH:mm: | 22.3.1999 05:06: |


### **Locale nl: Dutch**




| Date and time patterns | Example |
| --- | --- |
| d-M-yy | 22-3-99 |
| d-M-yy H:mm | 22-3-99 5:06 |


### **Locale pt: Portuguese**




| Date and time patterns | Example |
| --- | --- |
| dd-MM-yyyy | 22-03-1999 |
| dd-MM-yyyy H:mm | 22-03-1999 5:06 |


### **Locale ru: Russian**




| Date and time patterns | Example |
| --- | --- |
| dd.MM.yy H:mm | 22.03.99 5:06 |
| dd.MM.yyyy H:mm:ss | 22.03.1999 5:06:07 |


### **Locale sq: Albanian**




| Date and time patterns | Example |
| --- | --- |
| yyyy-MM-dd h:mm:ss.a | 1999-03-22 5:06:07.PD |
| yy-MM-dd h.mm.a | 99-03-22 5.06.PD |
| yyyy-MM-dd h.mm.ss.a z | 1999-03-22 5.06.07.PD CET |


### **Locale sr: Serbian**




| Date and time patterns | Example |
| --- | --- |
| d.M.yy. | 22.3.99. |
| dd.MM.yyyy. | 22.03.1999. |
| d.M.yy. [HH.mm](http://HH.mm) | 22.3.99. 05.06 |
| dd.MM.yyyy. HH.mm.ss | 22.03.1999. 05.06.07 |
| dd.MM.yyyy. HH.mm.ss z | 22.03.1999. 05.06.07 CET |


### **Locale vi: Vietnamese**




| Date and time patterns | Example |
| --- | --- |
| HH:mm:ss dd-MM-yyyy | 05:06:07 22-03-1999 |
| HH:mm dd/MM/yyyy | 05:06 22/03/1999 |


### **Locale zh\_CN: Chinese (Simplified), China**




| Date and time patterns | Example |
| --- | --- |
| yy-M-d | 99-3-22 |
| yyyy-M-d | 1999-3-22 |
| yyyy'年'M'月'd'日' | 1999年3月22日 |
| yyyy'年'M'月'd'日' EEEE | 1999年3月22日 星期一 |
| yy-M-d ah:mm | 99-3-22 上午5:06 |
| yyyy-M-d H:mm:ss | 1999-3-22 5:06:07 |
| yyyy'年'M'月'd'日' ahh'时'mm'分'ss'秒' | 1999年3月22日 上午05时06分07秒 |
| yyyy'年'M'月'd'日' H'時'mm'分'ss'秒' z | 1999年3月22日 5時06分07秒 CET |
| yyyy'年'M'月'd'日' EEEE ahh'时'mm'分'ss'秒' z | 1999年3月22日 星期一 上午05时06分07秒 CET |

