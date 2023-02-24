---
title: Best Practices for AutoML
url: https://domo-support.domo.com/s/article/1500000286041
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC)', '[https://domo-support.domo.com/s/article/1500000286041](https://domo-support.domo.com/s/article/1500000286041)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC/automl-machine-learning](https://domo-support.domo.com/s/topic/0TO5w000000Zan8GAC/automl-machine-learning)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004884
views: 2,179
created_date: 2022-10-24 22:34:00
last updated: 2022-10-24 22:41:00
---



Machine Learning process for success
------------------------------------


What are the most common approaches in machine learning and how can I leverage them for business growth and success? The following are the most common principles used when applying machine learning to business problems. 


1. Data Collection
	* The quantity & quality of your data dictates how accurate our model is.
	* The outcome of this step is generally a representation of data that we will use for training.
	* Using pre-collected data, by way of datasets from your business, or samples from Kaggle, UCI, etc.
2. Data Preparation
	* Curate data and prepare it for training.
	* Clean that which may require it (remove duplicates, correct errors, deal with missing values, normalization, data type conversions, etc.)
	* Randomize data, which erases the effects of the particular order in which we collected and/or otherwise prepared our data.
	* Visualize data to help detect relevant relationships between variables or class imbalances (bias alert!), or perform other exploratory analysis.
	* Split into training and evaluation sets.
3. Choose a Model
	* Different algorithms are for different tasks; choose the right one.
4. Train the Model
	* The goal of training is to answer a question or make a prediction correctly as often as possible.
	* Linear regression example: algorithm would need to learn values for m (or W) and b (x is input, y is output.)
	* Each iteration of the process is a training step.
5. Evaluate the Model
	* Uses some metric or combination of metrics to "measure" objective performance of the model.
	* Test the model against previously unseen data.
	* This unseen data is meant to be somewhat representative of model performance in the real world, but still helps tune the model (as opposed to test data, which does not.)
	* Good train/eval split? 80/20, 70/30, or similar, depending on the domain, data availability, dataset particulars, etc.
6. Parameter Tuning
	* This step refers to hyperparameter tuning, which is an "art form" as opposed to a science.
	* Tune model parameters for improved performance.
	* Simple model hyperparameters may include: number of training steps, learning rate, initialization values, distribution, etc.
7. Make Predictions
	* Using further (test set) data which have, until this point, been withheld from the model (and for which class labels are known), are used to test the model; a better approximation of how the model will perform in the real world.


Best practices in Machine Learning for business
-----------------------------------------------


1. A Machine Learning solution maps input→output.
	1. Always ask and explore how well your data explains (predicts) your output.
	2. If performance is better than the current process?
		1. Consider implementing.
		2. Perform cost-benefit analysis of model improvement vs cost of development to the business. (if low → keep going.)
	3. Not better than your current process?
		1. Improve your training data.
		2. Optimize your ML method.
		3. Learn more about how your data represents your domain.
