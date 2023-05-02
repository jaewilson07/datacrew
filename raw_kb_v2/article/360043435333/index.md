

Intro
-------

Use the Australian Bureau of Statistics connector to pull public Australian population data for a variety of categories, such as quarterly population estimates, aboriginal population projections, and more.


 You connect to your Australian Bureau of Statistics account in the Data Center. This topic discusses the fields and menus that are specific to the Australian Bureau of Statistics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None. This connector pulls in public data, so there is no need to enter connection information.


 Connecting to Your Australian Bureau of Statistics Account
------------------------------------------------------------


 This section enumerates the options in the
 **Detail**
 panes in the Australian Bureau of Statistics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 Details Pane

This pane contains a primary
 **Dataset**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Dataset
  |
 Select the Australian Bureau of Statistics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Aboriginal Population Projections Indigenous
  |
 Returns aboriginal and Torres Strait Islander population projections by indigenous region
  |
|
 Aboriginal Population Projections Remote
  |
 Returns aboriginal and Torres Strait Islander population projections by Remoteness Area.
  |
|
 Aboriginal Population Projections
  |
 Returns aboriginal and Torres Strait Islander population projections by state/territory.
  |
|
 Estimated Resident Population, Country of Birth
  |
 Returns estimated resident population (including country of birth, age and sex) from 30 June 1992 onwards
  |
|
 Estimated Resident Population, Country of Birth, Median Age and Sex Ratio
  |
 Returns estimated resident population (including country of birth, median age, and sex ratio)  from 30 June 1992 onwards
  |
|
 Estimated Resident Population, Country of Birth, State
  |
 Returns census-estimated resident population (including country of birth, state/territory, age, and sex)  from 30 June 1996 onwards
  |
|
 Population Clock
  |
 Returns population clock component data
  |
|
 Population Projections by Region
  |
 Returns population projections by region from 2012 to 2061
  |
|
 Population Projections
  |
 Population projections for 2012 to 2101
  |
|
 Quarterly Population Estimates
  |
 Returns quarterly population estimates (ERP) by state/serritory, sex and age
  |

|
|
 Sex
  |
 Select the gender(s) you want to return information for.
  |
|
 Age
  |
 Select the age range(s) you want to return information for.
  |
|
 Country of Birth
  |
 Select the country or countries of birth you want to return information for.
  |
|
 State/Territory
  |
 Select the Australian states and/or territories you want to return information for.
  |
|
 Region
  |
 Select the Australian region(s) you want to return information for.
  |
|
 Indigenous Region
  |
 Select the Australian indigenous region(s) you want to return information for.
  |
|
 Projected Series
  |
 Select the projected series you want to return information for.
  |
|
 Frequency
  |
 Select the desired date granularity for your report. For example, if you select
 **Annual**
 , data will be returned for individual years.
  |
|
 Remoteness Area
  |
 Select the Remoteness Area(s) you want to return information for.
  |
|
 Fertility Assumption
  |
 Select whether to pull data for high, low, and/or medium fertility levels.
  |
|
 Mortality Assumption
  |
 Select whether to pull data for high and/or medium life expectancy.
  |
|
 Net Overseas Migration
  |
 Select whether to pull data for high, medium, low, and/or zero net overseas migration.
  |
|
 Net Interstate Migration
  |
 Select whether to pull data for large, medium, or small interstate flows.
  |
|
 Start
  |
 Select the first year you want to be included in your report data.
  |
|
 End
  |
 Select the last year you want to be included in your report data.
  |
|
 Detail
  |
 Select the desired level of detail for your report.
  |
|
 Dimension at Observation Level
  |
 Select how many dimensions you want to appear in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

