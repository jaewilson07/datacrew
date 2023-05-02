


**Note:**
 This premium feature is available
 *on demand.*


 To request pricing and availability for this feature,  reach out to your Domo Account Representative


 Depending on the feature, you may be required to complete training before you can use the feature.

Intro
-------


**Note:**
 This article is for the old Magic ETL. For information on the new Magic ETL, see

Magic ETL

.

This article describes in detail all of the
 **Data Science**
 tiles in Magic ETL, including the following:

 Classification
* Clustering
* Forecasting
* Multivariate Outliers
* Outlier Detection
* Prediction

*Note:**
 To perform accurate and efficient data science analysis on your data, we recommend using clean data. See

Data Cleaning and Feature Engineering

for more information.

*Video - Data Science Tiles in Magic ETL**

Classification
----------------

The classification (predicting categorical values instead of numeric) algorithms aim to build statistical models which predict a categorical column in your data. The models can then be used to classify values of that column on new data. It is recommended that multiple methods be used and compared by the user.


 This tile requires one training DataSet and an optional testing/validation DataSet. The training DataSet will contain one categorical column (dependent column), and both the training and test DataSets will contain 1 or more numeric and/or categorical columns (predictor columns). Within the Classification tile, you can choose from either Naïve Bayes or Random Forest.

###
 Naïve Bayes Classifier

Naïve Bayes classification is faster and simpler than other classification algorithms but also often less precise. It is recommended for use on larger DataSets.

###
 Random Forest Classifier

Random forest classification is an ensemble learning method that builds multiple decision trees and combines the results to obtain an overall classification. No assumptions of linearity are needed. The algorithm is more robust against extreme values in your data.

###
 Example

The following example illustrates how the Classification algorithm can be implemented and used in Magic ETL in Domo. The sample DataSets:

Catastrophic\_Train.xlsx

(800 rows) and

Catastrophic\_Test.xlsx

(200 rows) are artificially generated DataSets and can be downloaded if you would like to try this example.  They contain data on insurance claims where the goal is to train a Classification algorithm which can accurately classify a new claim as catastrophic or not.


 A snapshot of the “Catastrophic Train.xlsx” DataSet is found below.

The column of interest that we want to classify is "catastrophic" which is observed in this DataSet. This DataSet will be used to "train" a classification algorithm that can be used on future DataSets where the "catastrophic" status may not be known.


 A snapshot of the "Catastrophic Test.xlsx

Wholesale\_Distributor\_Sales.xlsx

" DataSet is found below.

Note that "catastrophic" is not in the test DataSet.


**To configure the Classification tile,**

. Add the Classification Data Science tile and connect it to your input DataSets.
2. First, you must select a DataSet that will be used to train the algorithm and one that will be predicted. Note that these could be the same DataSet, but may be separate if you have separate training and test/validation DataSets.
3. Next, select the column that you want to classify. Then, the columns that you believe may help classify must be selected next with the numeric columns selected first (note that this can be left blank).
4. The categorical classifier columns must be selected (note that this may be left blank if at least one column was selected as a numeric classifier in the previous step). The name of the classification column must also be named. In this case, the default name "classification" is used.
5. Lastly, select either

Naïve Bayes

or

Random Forest

as the algorithm powering the Classification tile.
6. Connect and name the output DataSet. The resulting DataSet will include the original DataSet with the appended 'classification' column.

Clustering
------------

The Clustering algorithm aims to group a set of objects in such a way that objects in the same group are more similar to each other than to those in other groups. This is particularly useful in the exploratory phase of data analysis as it allows the user to begin to uncover patterns and groupings that may not be obvious.


 This tile requires at least 1 numeric column and a number of clusters to cluster by (K). You can also choose from either a K-means or K-medians algorithm.

###
 K-means Clustering

K-means forms clusters by randomly selecting k rows from the DataSet and treating them as cluster centers. The k clusters are then formed based on each row’s distance to the cluster center. The mean of each cluster is then calculated and treated as the new cluster center. This process is repeated until cluster membership stabilizes.

###
 K-medians Clustering

K-medians forms clusters by randomly selecting k rows from the DataSet and treating them as cluster centers. The k clusters are then formed based on each row’s distance to the cluster center. The median of each cluster is then calculated and treated as the new cluster center. This process is repeated until cluster membership stabilizes.

###
 Example

The following example illustrates how the clustering algorithm can be implemented and used in Magic ETL in Domo. The sample DataSet:

Wholesale\_Distributor\_Sales.xlsx

(440 rows) can be downloaded if you would like to try this example.

It contains annual spending information (in monetary units, “m.u.”) on various product categories from clients of a wholesale distributor. Each row contains data for a single client. The first two columns are Region and Channel, which describe demographic information for each client. The next 6 columns contain the spending information on each of the 6 product categories: Fresh, Milk, Grocery, Frozen, Detergents\_Paper, and Delicatessen. The Clustering algorithm can be used to cluster the clients according to how much was spent on the various product categories.


**To configure the Clustering tile,**

. Add the Clustering tile to your Magic ETL and connect it to the input DataSet.
2. Select the columns you want to use to determine the clusters. You must have at least one numeric column and only numeric columns can be selected.
3. Next, name the new column that will contain the cluster membership and the number of clusters (k) assumed to exist in the DataSet. Typically 2-5 clusters is a good starting point, although more can be used. It is recommended that different values of k be explored.


**Note:**
 U

sing too many clusters is typically not beneficial as the interpretations among the resulting clusters would be difficult.
4. Then, select either

K-means

or

K-medians

as the algorithm powering this Clustering tile.
5. Lastly, an output DataSet must be connected and named.

The resulting output DataSet will include the original DataSet with an appended column containing the cluster membership.


####
 Building a card with this DataSet

A Scatter Plot is a great way to visualize the data in this DataSet.

This Scatter Plot shows client spending on Fresh (X-axis) products against Grocery (Y-axis) products. Each point is colored by its assigned cluster. In this example, 3 clusters were chosen and it appears that clients in cluster 1 (blue) tend to spend more on Fresh products, clients in cluster 3 (orange) tend to spend more on Grocery products, and clients in cluster 2 (green) do not spend much on either. More Scatter Plots could be built to examine how the clients cluster within different product categories (i.e., Milk by Frozen).


 Forecasting
-------------

Time series forecasting includes methods which use a column of time-ordered data to generate forecasts of future observations.


 This tile requires 1 date/time column and 1 numeric column. Forecasting uses the ARIMA algorithm.

###
 ARIMA

With ARIMA (Auto-Regressive Integrated Moving-Average), prediction parameters are automatically chosen based on model fit. This allows for the capture of trends and seasonality in the data. The forecasts are then based on the final model parameters.

###
 Example

The following example illustrates how the ARIMA forecasting algorithm can be implemented and used in Magic ETL in Domo. The sample DataSet:

Daily\_Web\_Sales.xlsx

(171 rows) is a artificially generated DataSet that contains daily revenue totals.  It can be downloaded if you would like to try this example.

*To configure the Forecasting tile,**

. Add the Forecasting tile to your Magic ETL and connect it to the input DataSet.
2. Next, select the column containing the date/time, followed by the column that you want to forecast. In this case, 'Revenue' will be forecasted.
3. Now, let's choose the width of the prediction bands (default is 95%). The higher the percentage of the value chosen, the smaller the width of the bands. The number of dates to forecast can then be chosen next. The forecasting algorithm will look at the past data and take the average distance (in time) between data points. Future forecasted points will be based on this quantity. In this case, the data is in days, so the future forecasted time points are also in days.
4. Select the number of rows back in time must be chosen to base the future predictions on. By default, all of the rows will be used. The name of the

prediction

column must also be named. In this case, the default ‘prediction’ is used.
5. Next, the prediction lower and upper bounds must be named. Here, the defaults ‘prediction lower’ and ‘prediction upper’ are used.
6. Indicate the number of times you want each row to be observed per time period.


 In this example, the number of times is 7.
7. Finally, connect and name the output DataSet.

The resulting output DataSet will include the original DataSet with the appended ‘prediction,’ ‘prediction lower,’ and ‘prediction upper’ columns. These three new columns will be blank, except for where predictions are made (at the bottom of the DataSet).


####
 Building a card with this DataSet

A Forecasting card is a great way to visualize the data in this DataSet.

This Forecasting card shows the daily revenue with the forecasted values (with upper and lower bounds) shaded in blue.


 Multivariate Outliers
-----------------------

Multivariate outlier detection is an anomaly detection algorithm which aims to detect outlying or unusual observations on a set of one or more numeric columns in a DataSet. Multivariate outlier detection allows the user to detect an outlying observation (or row) in more than one dimension. In some scenarios, an observation may not be an outlier with respect to a single column but may be an outlier with respect to multiple columns. This is particularly useful as the number of columns increases.


 For true multivariate outliers to be discovered, this tile requires 2 or more numeric columns. However, the tile task will operate with at least one numeric value.

###
 Example

The following example illustrates how the outlier detection algorithm can be implemented and used in Magic ETL in Domo. The sample DataSet:

Wholesale\_Distributor\_Sales.xlsx

(440 rows) can be downloaded if you would like to try this example.

It contains annual spending information (in monetary units, “m.u.”) on various product categories from clients of a wholesale distributor. Each row contains data for a single client. The first two columns are Region and Channel, which describe demographic information for each client. The next 6 columns contain the spending information on each of the 6 product categories: Fresh, Milk, Grocery, Frozen, Detergents\_Paper, and Delicatessen. Multivariate outlier detection can be used to detect outlying, or unusual, clients based on how much was spent on the various product categories.


**To configure the Multivariate Outliers tile,**

. Add the Multivariate Outliers tile to your Magic ETL and connect it to the input DataSet.
2. Within the Multivariate Outliers tile, one or more of the 6 product categories must be chosen as the columns for which outliers will be detected on. For this example, all of the product categories are chosen.
3. The quantile (a value between 0 and 1) of the Chi-square distribution that will be used as a cutoff must be selected next as well as the name of the column (default is “outlier”) that contains either TRUE (observation is an outlier) or FALSE (observation is not an outlier) values. Typically a quantile between .95 and .99 is a good starting point, with higher quantiles leading to stricter cutoffs. It is recommended that different values be explored. Note that using too low of a quantile cutoff value will label most of the observations as outliers.
4. Last, an output DataSet must be connected and named.


 The resulting output DataSet will include the original DataSet with an appended column containing the outlier indicators (circled below in the preview pane).


####
 Building a card with this DataSet

A Scatter Plot graph is a great way to visualize the data in this DataSet.

This Scatter Plot shows client spending on Grocery (X-axis) products against Fresh (Y-axis) products. Recall that all six product categories were chosen to detect outliers on. The clients that are considered outliers are in red. Most of the outlying clients either spent a lot on Fresh or Grocery or both. There also appeared to be some outlying clients that did not spend very much on either Fresh or Grocery (located in the bottom left corner of the plot). These clients may be high spenders in one of the other four product categories. Different scatter plots could be used to gain insight into why some of the clients were considered outliers.


 Outlier Detection
-------------------

An outlier is an observation or point that is distant from other observations/points and has a low probability of occurrence. The outlier detection methods differ on their underlying assumptions about the data (roughly normal bell-curve data, high dimensional data, time series data, etc.) and how they detect outlying observations.


 This tile requires 1 numeric column and you can choose between a standard deviation or mean absolute deviation algorithm.

###
 Mean Absolute Deviation

Mean Absolute Deviation outlier detection is an anomaly detection algorithm which aims to detect outlying or unusual observations on a numeric column in a DataSet. Unlike Standard Deviation detection, Mean Absolute Deviation outlier detection does not assume that the values in the column are normally distributed (i.e. have a bell-shaped distribution) and thus makes it most useful for columns that are non-normal or skewed (have a disproportionate number of observations that are large or small). Observations in the column are labeled as outliers if the value is greater than a pre-specified number of median absolute deviations (MADs) from the median in either direction.

###
 Standard Deviation


 Standard Deviation outlier detection is an anomaly detection algorithm that attempts to detect outlying or unusual observations on a numeric column in a DataSet. Standard Deviation outlier detection specifically assumes that the values in the column are roughly normally distributed (i.e. have a bell-shaped distribution). Observations in the column are labeled as outliers if the value is greater than a pre-specified number of standard deviations from the mean in either direction.

###
 Example

The following example illustrates how the outlier detection algorithm can be implemented and used in Magic ETL in Domo. The sample DataSet:

Wholesale\_Distributor\_Sales.xlsx

(440 rows) can be downloaded if you would like to try this example.

It contains annual spending information (in monetary units, “m.u.”) on various product categories from clients of a wholesale distributor. Each row contains data for a single client. The first two columns are Region and Channel, which describe demographic information for each client. The next 6 columns contain the spending information on each of the 6 product categories: Fresh, Milk, Grocery, Frozen, Detergents\_Paper, and Delicatessen. Standard Deviation outlier detection can be used to detect outlying, or unusual, clients based on how much was spent on the various product categories.


**To configure the Outliers Detection tile,**

. Add the Outliers Detection tile to your Magic ETL and connect it to the input DataSet.
2. Within the Outliers Detection tile, one of the 6 product categories must be chosen as the column for which outliers will be detected on. For this example, Fresh is the chosen column.
3. The number of median absolute deviations above or below the median that will be used as a cutoff must be selected next as well as the name of the column (default is “outlier”) that contains either TRUE (observation is an outlier) or FALSE (observation is not an outlier) values. Typically 2-3 median absolute deviations is a good starting point, although a higher (stricter) value can be used. It is recommended that different values be explored. Note that using too small of a cutoff will label most observations as outliers.
4. Next, select either the

Standard Deviation

or

Mean Absolute Deviation

algorithm. In this example, we will select Standard Deviation.
5. Last, an output DataSet must be connected and named.


 The resulting output DataSet will include the original DataSet with an appended column containing the outlier indicators (circled below in the preview pane).


####
 Building a card with this DataSet

A Scatter Plot graph is a great way to visualize the data in this DataSet.

This Scatter Plot shows client spending on Grocery (X-axis) products against Fresh (Y-axis) products. Recall that Fresh was the category that was chosen to detect outliers on. The clients that are considered outliers are in red. These clients appear to spend significantly more on Fresh products than the other clients. There were no clients that were considered outliers on the lower side of the spending spectrum. This analysis could be replicated to explore potential outliers in other product categories.


 Prediction
------------

Regression algorithms aim to build statistical models which predict a numeric column in your data. The models can then be used to predict values of that column on new data. It is recommended that multiple methods be used and compared by the user.


 This tile allows you to choose from either a Linear Regression or Random Forest algorithm.

###
 Linear Regression

Linear regression prediction uses a linear regression model to predict a numeric column in your data. It requires a training DataSet that contains the column you want to predict as well as other columns (also known as "predictors") that you believe can aid in the prediction process. The algorithm uses the training DataSet to "train" a prediction algorithm which can then be applied to a "test" DataSet (note the test and training DataSets could be the same) where it will use the same "predictor" column to classify each row.

###
 Random Forest

The Random Forest regression is very powerful as it uses an ensemble of many weak decision trees to create one strong regression algorithm that predicts the mean prediction of each of the individual trees. This performs well on a variety of data types as it is good at identifying complex non-linear substructure from data.

###
 Example

The following example illustrates how the Regression prediction algorithm can be implemented and used in Magic ETL in Domo. The sample DataSets:

Catastrophic\_Train.xlsx

(800 rows) and

Catastrophic\_Test.xlsx

(200 rows) are artificially generated DataSets and can be downloaded if you would like to try this example. They contain data on insurance claims where the goal is to train a prediction algorithm which can accurately predict the number of claims for each row in a DataSet based on data in other columns.


 A snapshot of the “Catastrophic Train.xlsx” DataSet is found below.

The column of interest that we want to classify is "num.claims" which is observed in this DataSet. This DataSet will be used to "train" a classification algorithm that can be used on future DataSets where the "num.claims" status may not be known.


 A snapshot of the "Catastrophic Test.xlsx" DataSet is found below.

Note that "num.claims" is also in this DataSet. This would allow the user to see how well their predictions did against actual values of "num.claims."


**To configure the Prediction tile,**

. Add the Prediction tile to your Magic ETL and connect it to the input DataSet.
2. First, you must select the training and test DataSets.  Note that these could be the same DataSet.
3. Next, select the column that you want to predict. Then the columns that you believe may help predict must be selected next with the numeric columns selected first (note that this can be left blank).
4. Now, the categorical predictor columns must be selected (note that this may be left blank if at least one column was selected as a numeric predictor in the previous step). The name of the prediction column must be set next. In the example, we leave the name at the default.
5. Lastly, select either the

Linear Regression

or

Random Forest

algorithm. In this example, we will select Linear Regression.
6. The output DataSet must then be connected and named.

The resulting output DataSet will include the original training DataSet with the appended prediction columns. The prediction columns can then be compared with the "num.claims" column.

