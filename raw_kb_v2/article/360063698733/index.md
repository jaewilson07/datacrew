

Intro
-------

Adrenaline DataFlows are an in-house built, high-scale, and high-performance data transformation tool for massive DataSets in Domo powered by the Adrenaline engine. It uses a SQL script-based transformation interface, similar to MySQL DataFlows. Adrenaline DataFlows allow you to rapidly summarize and aggregate massive DataSets into smaller, more performant outputs. Adrenaline DataFlows are able to deliver high-performance by leveraging architectural investments and performance improvements made to Domo's Adrenaline engine over time.

*Note:**
 This feature is available
 *on demand and paid.*

To request this feature be enabled,

 Reach out to your Domo Customer Success Manager, Technical Consultant, or Account Executive.
* If you do not have contact information for your CSM, TC, or AE, contact Technical Support. For information on how to contact Support, please see:

Getting Help


 Depending on the feature, you may be required to complete training before you can use the feature.

Use Cases
-----------

Adrenaline DataFlows are designed to work with massive input DataSets, even in the Billions of rows of data. We recommend Adrenaline DataFlows for the following use cases:


 1. Building high-performance Dashboards from massive DataSets. Instead of directly building cards off such large DataSets, we recommend using Adrenaline DataFlows to create summarized and aggregated smaller outputs which should then be used to power fast, high-performance dashboards. For cases where access to the full data is needed, we recommend setting up Drill Paths to the original DataSet from the visualizations built from the summarized DataFlow outputs.


 2. Data transformations that require scanning the entire length of massive DataSets e.g., COUNT DISTINCT, SUM, and other aggregate operations.

*Note:**
 Domo does not recommend using Adrenaline DataFlows for doing row-by-row transformations, where DataFlow outputs have similar row counts as input DataSets.

Creating an Adrenaline DataFlow
---------------------------------

1. In the navigation header, go to
 **Data**
 .

2. From the rail, select
 **DataFlows**
 .

3. In the
 **Magic Transform**
 menu, select
 **SQL**
 .


 A DataFlow types modal displays.

4. From the options, choose
 **Adrenaline**
 .

5. Enter a
 **DataFlow Name & Description**
 , select
 **DataSets**
 ,
 **Transforms**
 , and
 **Output DataSets.**

 After selecting DataSets, click
 **Choose DataSet**
 . You can also
 **Create New**
 DataSets.
* To remove a DataSet from the flow, select the

and choose
 **Delete**
 .
* After entering SQL for transforms and output DataSets, select
 **Apply**
 .


 The Adrenaline DataFlow has been created.


 FAQs
------

*At what input DataSet sizes should I consider Adrenaline Transformations versus other DataFlows?**


 We recommend using Adrenaline DataFlows when you want to operate with massive input DataSets, even in the Billions of rows of input data.


**Are there any limits on executions for Adrenaline DataFlows?**


 Yes, by default Adrenaline DataFlow executions are capped to a 30-min timeout.

If your DataFlow is timing out, please review your dataflow transformations to remove joins on string data, filter to only the required data, and reduce the complexity of each transform.


 If your DataFlow requires additional time to complete, we can extend timeouts on a case-by-case basis. Please reach out via Support to increase execution time for your specific use case.

*Are Adrenaline DataFlows available by default?**


 Adrenaline DataFlows are a Premium feature. Please reach out to your Domo account team to learn more about pricing plans, including a limited free trial to test out your use cases.


**How do I track Adrenaline DataFlows usage?**


 DomoStats for DataFlows will provide DataFlow execution stats for Adrenaline DataFlows.


**How do I control access to Adrenaline DataFlows in my Domo instance?**


 You must either be an Admin or have a role with the "Edit Adrenaline DataFlow" grant enabled. For more information about roles and grants, see

Managing Custom Roles

.


**Why isn’t my data sorted correctly when I preview in the designer?**


 In the designer, your data is optimized for rapid previewing so sorting is not applied. However, your data will be correctly sorted when your DataFlow executes.

