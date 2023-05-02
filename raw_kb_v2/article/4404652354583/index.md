

Intro
-------

Domo may automatically disable a DataFlow when the system has identified that the outputs of a DataFlow are no longer in active use by your users.


 What causes a DataFlow to be disabled?
----------------------------------------

There are several factors considered when a DataFlow is evaluated for inactivity. Some factors considered will exclude the DataFlow from being eligible to be system disabled while others depend on the amount of time something hasn’t been used.


 The primary consideration given when Domo evaluates whether a DataFlow should be disabled is the length of time that DataFlow has been unused.


 What does “unused” mean?
--------------------------

Usage is defined as meaningful consumption of a DataFlow’s output DataSets in any way. There are a lot of factors that are considered “meaningful usage.” A few of the most common examples are as follows:

 A Card from an Output DataSet of that DataFlow was viewed.
	+ i.e. accessed via a Story, Dashboard, direct URL, published in Embed, Slideshow, Scheduled Report, or Export to PDF are all considered.
* Configured Alert exists for an Output DataSet or Card built off an Output DataSet triggered.
	+ i.e. DataSet Alert, Card Alert, or Watchdog.
* An Output DataSet was used in Fusion, View DataSet, or as an input to another DataFlow.
* An Output Dataset was recently copied to another instance.
	+ i.e. DataSet Copy Connector, Publish v2, or Writeback Connector.

What excludes a DataFlow from disablement?
--------------------------------------------

Should the system evaluate a DataFlow and determine it is no longer in use, a number of additional checks are evaluated before any auto-disablement. If a DataFlow meets any of the following criteria, it will NOT be considered for auto-disablement:

 The DataFlow has a recursive Output or Input DataSet.
* The DataFlow’s Output DataSets are used as an input to a Fusion, View DataSet, or in another active DataFlow.
* The DataFlow is an Adrenaline DataFlow (Premium feature).


