

Intro
-------

Refer to this article when you need to perform mathematical transforms using Beast Mode.


 Translating Hexadecimal to Decimal
------------------------------------

Use the following Beast Mode to translate hexadecimal values to decimal:


`(CASE


 when RIGHT(LEFT(`_id_$oid`,1),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,1),1)*POWER(16,7)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,1),1)) 9)*POWER(16,7)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,2),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,2),1)*POWER(16,6)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,2),1)) 9)*POWER(16,6)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,3),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,3),1)*POWER(16,5)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,3),1)) 9)*POWER(16,5)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,4),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,4),1)*POWER(16,4)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,4),1)) 9)*POWER(16,4)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,5),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,5),1)*POWER(16,3)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,5),1)) 9)*POWER(16,3)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,6),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,6),1)*POWER(16,2)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,6),1)) 9)*POWER(16,2)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,7),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,7),1)*POWER(16,1)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,7),1)) 9)*POWER(16,1)


 END)


 (CASE


 when RIGHT(LEFT(`_id_$oid`,8),1) in ('1','2','3','4','5','6','7','8','9','0')


 then RIGHT(LEFT(`_id_$oid`,8),1)*POWER(16,0)


 else (INSTR('abcdefghijklmnopqrstuvwxyz',RIGHT(LEFT(`_id_$oid`,8),1)) 9)*POWER(16,0)


 END)`

Calculating X-bar
-------------------

Let's say you are trying to create a control chart and need to start by calculating the Xbar. For example, you may have multiple inventory transactions that have occurred during one day per week during a particular period. The Xbar calculation would be the sum of the transactions during the period divided by the number of transactions, by inventory class.


 For example:


 Nov 1. Inventory Class 1 transactions: 1200+1400+1000+800. Calculation : 4400/4 = 1100


 Nov 2. Inventory Class1 transactions: 1000+700+1300. Calculation: 3000/3 = 1000


 Nov 3. Inventory Class1 transactions: 1200+500+500+1000. Calculation: 3200/4 = 800


 So the points to plot for Inventory Class1 would be 1100, 1000 and 800.


 You can do this by grouping data based on a selected date grain. If you set the date grain on the card to match your subgroup period ("by day" for example),

then choose "Average" as the aggregation option for the transactions field,

it will automatically average the transactions according to the number of records that fall into each group. If you decide to change the date grain to weekly instead, the calculations will still work because the averaging will happen across the number of records in each week instead of each day.


 If you want to do the averaging in Beast Mode, wrap the field with the AVG function:


`AVG(`Transactions`)`


 and the date grain will still be applied to the Beast Mode calculation.


 Finding the Percentage of 2 Columns
-------------------------------------

You can find the percentage of 2 columns by dividing one into the other. For example, let's say you had a column called "Sales" and another called "Quota" and you wanted to find the percentage of quota attained. You would simply write the following Beast Mode calculation:


``Sales`/`Quota``


 Calculating a Series Against a Subset of Y-values
---------------------------------------------------

Assume that you have a line chart that measures the percentage of agents installed across a number of workstations (laptops and desktops). Only one of the agents is installed on laptops only. What if you want to calculate the percentage of agents installed on laptops only?


 You can do this via a calculation in Beast Mode that will compare all agents installed on both types of workstations against the agent(s) on laptops only:


`(


 count(case when `Device Type`='Laptop' then `OpenDNS` end)


 /


 count(case when `Device Type`='Laptop' then `System Name` end)


 )*100`


 Note that this calculation is used to find a ratio then multiply it by 100 to acquire a percentage. You can apply any supported Beast Mode calculations in this fashion depending on the specific metrics you need.


 Calculating the Average for X Data Points
-------------------------------------------

There is a way to use Beast Mode calculations to find the average for a set amount of the most recent data points in a given DataSet. Assume that you want a card to automatically display a specific average metric from recent data.


 Use the following Beast Mode calculation to calculate the average value of a metric over the last six months:


`(CASE


 when `Datefield` <= DATE_SUB(`Datefield`, interval 6 month) AND `Date` >= CURDATE()


 then AVG('metric')


 else 0


 END)`


