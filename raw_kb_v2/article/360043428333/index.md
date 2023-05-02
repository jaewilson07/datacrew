

Intro
-------

If you are experiencing performance issues with a Fusion DataSet, there may be a number of contributing factors. Please consider the following recommendations to improve your query performance.


 Size of Inputs
----------------

Generally speaking, the larger your input DataSets are, the less performant your Fusion will be. If your largest input DataSet is over 5 billion rows, there is a good chance that many of the queries will time out and not return results. Domo Support does not currently have an effective method of improving Fusions this large. However, Domo Engineering is currently developing solutions that will facilitate Fusions built on billion+ row DataSets.

##
 Recommendations


* Reduce the size of the largest input DataSet.
* Do not build Fusions on DataSets larger than 5 billion rows.

Number of Inputs
------------------

The more input DataSets there are, the less performant your Fusion will be. If the Card you are building doesn’t require any fields from one or more of the input DataSets, consider creating a new Fusion that does not include those input DataSets. This will make the query that populates the Card run faster.

##
 Recommendations


* Create the smallest possible Fusion for the Card being built. This may result in multiple similar Fusions, but it will improve performance.

Join Columns
--------------

DataSets joined by string fields are the least performant. Joining by doubles is better, and joining by integers is best.

##
 Recommendations


* Only join on string columns as a last resort. Always join on numeric fields when you can.
* If you have a string field that needs to be used for the Fusion, see if there is a corresponding numeric identifier that you can add to the tables and join on those instead.

Beast Mode
------------

Complex Beast Mode calculations are calculated against every row of the Fusion DataSet, and as such can contribute to poor query performance. Beast Mode calculations calculated against string fields are the most query-intensive. Complex Beast Mode calculations, such as large CASE statements, can significantly impact your performance.

##
 Recommendations


* Build your Beast Mode calculations on numeric or date fields instead of string fields.
* Consider calculating the Beast Mode field before importing your data. This will prevent wasting time running the calculation at query time.
* Avoid large case statements calculated on string fields.

Support
---------

If you have followed the recommendations to improve your Fusion and you are still not experiencing adequate performance, please reach out to Domo Support for assistance.

