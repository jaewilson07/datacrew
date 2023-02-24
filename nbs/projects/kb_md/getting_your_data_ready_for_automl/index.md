---
    title: Getting Your Data Ready for AutoML
    url: https://domo-support.domo.com/s/article/360060598333
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC)', '[https://domo-support.domo.com/s/article/360060598333](https://domo-support.domo.com/s/article/360060598333)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC/automl-machine-learning](https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC/automl-machine-learning)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004883
    views: 2.164
    created_date: 2022-10-24 22:34:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


Preparing data for AutoML may be the most time-consuming component to the process. Having a well-prepared and cleansed DataSet is critical for successful outcomes when using the tool, but is also an excellent way to bolster your DSML capabilities. Below, we provide a data prep checklist for AutoML.


* **Gather all data and metrics into Domo:** First, all of your data needs to be pushed to Domo. This includes both your output variable (what want to predict) and your input variables (what you will use to predict.) Input variables are also commonly referred to as features by machine learning practitioners.
* **Data Structure:** The following are guidelines for structuring your DataSet:
	+ **Singular DataSet:** Spend some time gathering your data together into one DataSet that has one column with the output variable (the variable you want to predict that AutoML will train on) and many columns that enumerate the inputs that you expect to have an effect/influence on your output column.
	+ **Identify the outcome:** Be sure to only include one output column for your DataSet.
	+ **Unit of analysis:** Each row should encapsulate one record in your business problem. For example, if you would like to predict which sales opportunity will close, each row should enumerate one distinct sales opportunity, from start to finish, with the output column listing the result of the sales opportunity (ie won or lost.)
* **Data Preparation:** Once you have structured your data correctly, you should be following these preprocessing guidelines:
	+ **Missing Data:** Intelligently handling missing data can improve model performance. Rows missing values in certain columns should be dropped, or filled in an intelligent way (e.g., mean or median of column.)
	+ **Check and remove multicollinearity:** You should be very careful about having redundancy in your data. For example, suppose you have two predictor columns “Sales” and “Revenue” and want to predict “Profit.” Because “Sales” and “Revenue” represent nearly identical quantities, cash flow coming into the business, you should only include one of them. Using both can cause numerical stability issues in some algorithms. It is very common for DataSets to have columns that are unexpectedly highly correlated, so it can be useful to visualize the relationships between the columns or test for correlations statistically. One of the correlated columns can be dropped and can lead to increases in performance.
	+ **Include the relevant columns only:** You should drop any columns that you do not suspect to influence your target. ID and raw date columns likely fall into this category. Think carefully about what you know about the process and if your data correctly represents what you would know at prediction time.
	+ **Outliers / Leverage Points:** If possible, you should remove known outliers. You can determine outliers either from statistical tests, or known experience. For example, if sales were artificially high one week due to some known anomaly you may want to consider removing this sample from your DataSet.
* **Feature Engineering:** Finally, you should spend time thinking about the best representation of your data. This process is referred to as “feature engineering.” Fortunately, AutoML does some basic feature engineering for us. For example, it will encode a “gender” column with values “M” and “F” as 0’s as 1’s. This allows us to focus more on the prior knowledge you have about your problem. A common example of the feature engineering you should think about is transforming raw data such as 10-22-2020 to the day of the week: “Thursday.” This is a more helpful representation as it enables the model to learn patterns that might correspond to the day of the week. Other common feature engineering strategies are enumerated below:
	+ **Binning:** If meaningful categories exist from numeric data, you may consider creating discrete “bins.” A good example of this is the credit scoring system. While a FICO credit score offers a continuous, numeric value (0-800), banks will often create bins or tiers to facilitate easier decision making. A score over 750 might be considered “excellent,” while a score between 700 and 749 is “good.” If natural tiers exist in your problem, it may be helpful to encode them in your data. Additionally, time-series data can also be manipulated by binning. Dates across multiple years can be binned into the week of the year.
	+ **Data Reductions:** A good model will have the fewest number of features that explain the data. Wherever possible, you should seek to remove redundant or unimportant columns. By including meaningless features you add noise, rather than signal, to your model.
	+ **Feature Scaling:** AutoML automatically performs feature scaling on your data. In general, it is good practice to think about the scale of your features. If you have two variables that are each on a very different scale, it can cause issues when training certain types of algorithms. For example, if one feature ranges between 0.001 and 0.1, while another ranges between 100,000 and 1,000,000 issues of numerical instability may arise. To solve this problem, you have two options: standardization and normalization. For a good article defining and comparing the two, see [https://towardsdatascience.com/normalization-vs-standardization-cb8fe15082eb](https://towardsdatascience.com/normalization-vs-standardization-cb8fe15082eb "https://towardsdatascience.com/normalization-vs-standardization-cb8fe15082eb").


Following this checklist will improve your chances of training an effective model with AutoML. For a more detailed checklist on data prep and data hygiene for AutoML, check out [https://developers.google.com/machine-learning/data-prep](https://developers.google.com/machine-learning/data-prep "https://developers.google.com/machine-learning/data-prep").


Data Science Value and Inventory Assessment - Before You Begin
--------------------------------------------------------------


Organizations are looking to leverage the business value that predictive and augmented analytics bring. AI/ML provides many opportunities to realize value, whether that be predicting outcomes, optimizing business processes, or identifying efficiencies that are hidden. Those areas of value realization span all industries and all functions within an organization.


Yet, delivering effective data science projects can face technical and operational challenges despite the best intentions. Successful adoption of data science requires a thoughtful strategy that includes stakeholder interests and priorities, the strength and sufficiency of necessary data pipelines, and documented returns on investments related to data science initiatives. The Domo Data Science Team has delivered many successful data science initiatives and has built a methodology and process to replicate this success for everyone.


The Data Science Value Assessment and Roadmap is a joint business and technology planning engagement led by Domo’s expert Data Science Team to establish how AI/ML can be leveraged to tackle your business challenges.


Take some time to align with your business stakeholders so you have a thorough understanding of your business problems, which tasks would be worthwhile to automate, what model performance would be acceptable for your business problem, and what data is available.


Readiness Assessment
--------------------


1. Have you structured your data to train a Machine Learning algorithm before?
	1. If confident yes:
		1. You should be able to use AutoML with no Support services (these Knowledge Base articles are a resource.)
	2. If unsure yes:
		1. We recommend you attend our AutoML office hours.
		2. Recommended resources for learning are included in this article.
	3. If no:
		1. Have you read how to structure your data for a Machine Learning algorithm in a blog post, course, textbook, etc?
			1. If yes, we recommend attending our office hours for some consulting on DSML.
				1. We can provide additional resources to you as needed.
			2. If no, we recommend a white glove engagement.
				1. Also, we can provide resources for self-learning.


For a more comprehensive DSML inventory assessment to prepare you for AutoML and data science projects, please use this Data Science Inventory Assessment: 


Business Question Refinement
----------------------------


1. What business questions are you looking to answer?
2. What date ranges should be included in the analysis?
3. What segmentation should be considered in the analysis?
4. What team/organization is interested in the results of the analysis?
5. How does this team/organization want to use the results?
6. Have you attempted to address this question in other ways?
	1. What have you already tried?
	2. Why were previous attempts insufficient?


Data Pipeline
-------------


1. What DataSets will inform the business question?
	1. Provide link(s) to DataSet(s).
	2. Are all DataSets in Domo?
2. How large is the DataSet?
3. Include a link to your conceptual model in Domo. Are there any other variables that should be considered in your model?


Expectations for Results
------------------------


1. What do you expect the results of the model to be?
	1. Why?
2. How do you plan on making sure the model is accurate?
3. How often do you plan to run the analysis and/or train the model (e.g., once, annually, monthly, or daily?)


Anticipated Deliverables
------------------------


**Annotated Solution:**


1. Where do you plan to store and run the scripts associated with the analysis?
2. What do you anticipate for solution management training?


**Model Results:**


1. How do you want to visualize the model results?
2. Do you plan on using the results for scenario testing?


**Dashboard:**


1. What actions do you anticipate taking based on the model results?
2. How do you want to visualize the results for the end-user?
