

Intro
=======

It's hard learning how to perform advanced data analysis and write meaningful Beast Mode calculations when all you've got to work with is boring old marketing campaign spreadsheets. Believe us, we know. To that end, we present a list of far more interesting datasets you might find useful as you learn how to build cards and analyze data in Domo.


 Not satisfied with the datasets listed here? You can find thousands more on

Kaggle

, a website in which users upload their own datasets for competition.


 200,000+ Jeopardy Questions
=============================

This dataset contains all questions and answers from the game show "Jeopardy" from its inception to 2012. It is available in XLSX, CSV, and JSON formats.


 This dataset was was compiled by Reddit user trexmatt in 2014. To view the Reddit page on which this dataset was originally posted, click here:

https://www.reddit.com/r/datasets/comments/1uyd0t/200000\_jeopardy\_questions\_in\_a\_json\_file/


* JEOPARDY.xlsx

(18.7 MB)
* JEOPARDY\_CSV.csv

(32.1 MB)
* JEOPARDY\_QUESTIONS1.json

(53 MB)

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 category
  |
 The question category, e.g. "HISTORY"
  |
|
 value
  |
 The value of the question as a string, e.g. "$200"


**Note:**
 This is "NONE" for Final Jeopardy and Tiebreaker questions.


 |
|
 question
  |
 The text of the question, e.g. "Calf-length pants styled in colorful island prints are named for this type of Hawaiian party"


**Note:**
 This sometimes contains hyperlinks and messy text when there is a picture or video question.


 |
|
 answer
  |
 The text of the answer, e.g. "luau pants"
  |
|
 round
  |
 The segment of Jeopardy in which the question occurred, either "Jeopardy," "Double Jeopardy," "Final Jeopardy," or "Tiebreaker" (extremely rare)
  |
|
 show\_number
  |
 String representing the sequential order number of the show, e.g. "4680"
  |
|
 air\_date
  |
 The show's air date in the format

YYYY-MM-DD

|


####
 Wine Reviews

This dataset contains wine review data scraped from

winemag.com

on June 15th, 2017. It is available in CSV and JSON formats.


 This dataset was compiled by Kaggle user zackthoutt. For more information about the dataset and ideas for how to use it, visit

https://www.kaggle.com/zynicide/wine-reviews/home

.

 winemag-data\_first150k.csv

(47.4 MB)
* winemag-data-130k-v2.csv

(50.4 MB)
* winemag-data-130k-v2.json

(75.6 MB)

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 country
  |
 The country the wine is from
  |
|
 description
  |
 A few sentences from a sommelier describing the wine's taste, smell, look, feel, etc.
  |
|
 designation
  |
 The vineyard within the winery where the grapes that made the wine are from
  |
|
 points
  |
 The number of points WineEnthusiast rated the wine on a scale of 1-100
  |
|
 price
  |
 The cost of a bottle of this wine (in dollars)
  |
|
 province
  |
 The province or state of the country the wine is from
  |
|
 region
  |
 The wine-growing area of the province or state (e.g. "Napa")
  |
|
 region2
  |
 A more specific region within a larger region (may be blank if there is no such smaller region)
  |
|
 taster name
  |
 Name of the sommelier who tasted and reviewed the wine
  |
|
 taster\_twitter\_handle
  |
 Twitter handle of the sommelier who tasted and reviewed the wine
  |
|
 title
  |
 The title of the wine review (which often contains the vintage, if you are interested in that information)
  |
|
 variety
  |
 The type of grapes used to make the wine (e.g. "Pinot Noir")
  |


 120 Years of Olympic History
===============================

This dataset provides athlete and event data for all Olympics held from 1896 to 2016. It is available in CSV and XLSX format.


 This dataset was compiled by Kaggle user Randi H. Griffin. For more information about the dataset and ideas for how to use it, visit

https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results/home

.


 When using this dataset, note that the Winter and Summer Games were held in the same year up until 1992. After that, they began to be staggered, such that the Summer and Winter games alternate on a four-year cycle. A common mistake people make when analyzing this data is to assume that the Summer and Winter Games have always been staggered.

 OLYMPICS\_athlete\_events.csv

(34.5 MB)
* OLYMPICS\_athlete\_events.xlsx

(20.7 MB)

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 ID
  |
 An ID number assigned to this athlete based on their sequential order in the dataset
  |
|
 Name
  |
 The name of the athlete
  |
|
 Sex
  |
 The gender of the athlete
  |
|
 Age
  |
 The age of the athlete
  |
|
 Height
  |
 The height of the athlete, in centimeters
  |
|
 Weight
  |
 The weight of the athlete, in kilograms
  |
|
 Team
  |
 The country this athlete represents
  |
|
 NOC
  |
 The three-letter abbreviation for the country represented by the athlete
  |
|
 Games
  |
 The year and season for this Olympic event
  |
|
 Year
  |
 The year of the event
  |
|
 Season
  |
 The season of the event (either Summer or Winter)
  |
|
 City
  |
 The city in which these Olympics was held
  |
|
 Sport
  |
 The sport of the event
  |
|
 Event
  |
 The name of the event
  |
|
 Medal
  |
 The medal won by the athlete ("NA" if no medal was won)
  |


 Superhero Characteristics and Powers
=======================================

These datasets include basic information for over 700 superheroes (and villains). The first dataset, heroes\_information.csv, provides demographic characteristics such as gender, race, comic publisher, etc., while the second dataset, super\_hero\_powers.csv, maps out the powers for each superhero by assigning Boolean (true/false) values for 168 different superpowers.


 These datasets were compiled by Kaggle user ClaudioDavi. For more information, see

https://www.kaggle.com/claudiodavi/superhero-set/home

.

 heroes\_information.csv

(45 KB)
* super\_hero\_powers.csv

(657 KB)

Columns in the heroes\_information dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 Name
  |
 The name or alias of the superhero
  |
|
 Gender
  |
 The gender of the superhero
  |
|
 Race
  |
 The superhero's race (such as Human, Amazon, Vampire, etc.)
  |
|
 Eye Color
  |
 The superhero's eye color
  |
|
 Hair Color
  |
 The superhero's hair color
  |
|
 Skin Color
  |
 The superhero's skin color
  |
|
 Height
  |
 The superhero's height (in centimeters)


**Note:**
 Many of the listed superheroes are given a height and weight of -99. I am not exactly sure what this means, but I suspect it indicates that this information is unknown.


 |
|
 Weight
  |
 The superhero's weight (in kilograms)


**Note:**
 Many of the listed superheroes are given a height and weight of -99. I am not exactly sure what this means, but I suspect it indicates that this information is unknown.


 |
|
 Publisher
  |
 The comics company that created this superhero (such as Marvel, D.C., etc.)
  |
|
 Alignment
  |
 The superhero's overall alignment (good, bad, or neutral)
  |

Because the super\_hero\_powers dataset includes 168 columns, we do not list them here. However, this dataset is simple to understand. For each superhero, a value of true or false is assigned for each power. For example, the superhero "Banshee" is assigned a value of "TRUE" for "Flight," "Audio Control," "Force Field," "Enhanced Hearing," "Sonar," and "Sonic Scream," and "FALSE" for all other powers.


 UFO Sightings
===============

These datasets include information on all reported UFO sightings from 1906 to 2014, with time standardization and geocoding. Two datasets in CSV format are linked here. The first of these, UFO\_sightings\_complete.csv, includes entries where the location of the sighting was not found or blank (0.8146%) or have an erroneous or blank time (8.0237%). In the second, UFO\_sightings\_scrubbed.csv, these erroneous and blank entries have been removed.


 This data comes from the National UFO Reporting Center (NUFORC). For more information, visit the Kaggle page at

https://www.kaggle.com/NUFORC/ufo-sightings/home

.

 UFO\_sightings\_complete.csv

(14.5 MB)
* UFO\_sightings\_scrubbed.csv

(13.1 MB)

Columns in both datasets are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 datetime
  |
 The date and time of the sighting, in

m/d/yyyy h:mm

format
  |
|
 city
  |
 The city in which the UFO was sighted
  |
|
 state
  |
 The U.S. state in which the UFO was sighted (applies to U.S. sightings only; otherwise left blank)
  |
|
 country
  |
 The country in which the UFO was sighted, using a two-letter country abbreviation (such as "gb" for "Great Britain")
  |
|
 shape
  |
 The shape of the UFO (such as circular, cigar, etc.)
  |
|
 duration (seconds)
  |
 The duration of the sighting in seconds
  |
|
 duration (hours/min)
  |
 The duration of the sighting in hours and minutes
  |
|
 date posted
  |
 The posted date of the sighting, in in

m/d/yyyy

format
  |
|
 latitude
  |
 The latitude coordinate of the sighting, in

DDD.dddd

format
  |
|
 longitude
  |
 The longitude of the sighting, in in

DDD.dddd

format
  |


 Mushroom Classification
==========================

This dataset includes descriptions of hypothetical samples corresponding to 23 species of gilled mushrooms in the Agaricus and Lepiota families, drawn from The Audubon Society Field Guide to North American Mushrooms (1981). Each specimen is identified as definitely edible, definitely poisonous, or of unknown edibility and not recommended. (This latter class was combined with the poisonous one.)


 This information is recommended only for use in honing your skills in data structuring and analysis. Please DO NOT use this information as a botanical reference/survival guide for determining mushroom edibility. Wild mushrooms should only be identified by professionals.


 This dataset is available in XLSX format only.

 mushrooms.xlsx

(722 KB)

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 class
  |
 The edibility of the sample (either edible or poisonous)
  |
|
 cap-shape
  |
 The shape of the mushroom's cap (convex, bell-shaped, flat, etc.)
  |
|
 cap-surface
  |
 The texture of the mushroom's surface (smooth, scaly, fibrous, etc.)
  |
|
 cap-color
  |
 The color of the mushroom's cap
  |
|
 bruises
  |
 Indicates whether bruises are present on the mushroom (yes or no)
  |
|
 odor
  |
 The smell of the mushroom (pungent, almond, etc.)
  |
|
 gill-attachment
  |
 Indicates whether the gills of the mushroom are attached or free
  |
|
 gill-spacing
  |
 Indicates whether the gills are closely spaced or crowded
  |
|
 gill-size
  |
 The size of the gills (narrow or broad)
  |
|
 gill-color
  |
 The color of the gills
  |
|
 stalk-shape
  |
 Indicates whether the stalk is enlarged or tapers
  |
|
 stalk-root
  |
 The shape of the stalk root (equal, club, bulbous, etc.)
  |
|
 stalk-surface-above-ring
  |
 The texture of the stalk above the ring
  |
|
 stalk-surface-below-ring
  |
 The texture of the stalk below the ring
  |
|
 stalk-color-above-ring
  |
 The color of the stalk above the ring
  |
|
 stalk-color-below-ring
  |
 The color of the stalk below the ring
  |
|
 veil-type
  |
 The veil type (all values are "Partial")
  |
|
 veil-color
  |
 The color of the veil
  |
|
 ring-number
  |
 The number of rings
  |
|
 ring-type
  |
 The ring shape
  |
|
 spore-print-color
  |
 The color of the spores
  |
|
 population
  |
 Indicates the relative number of similar mushrooms in the area (abundant, scattered, solitary, etc.)
  |
|
 habitat
  |
 The type of habitat the mushroom was found in (grasses, urban, etc.)
  |


 U.S. Baby Names
==================

These datasets list most names in usage in the U.S. between 1880 and the present, with the count of each name given per year. Only names given to at least 5 babies in the same year are included in the datasets. The first dataset, NationalNames.csv, provides counts of all names throughout the U.S. as a whole, while the second, StateNames.csv, breaks these counts down by individual state (therefore it is significantly larger). Both files are combined in the following zip file.

BabyNameData.zip (43.8 MB)

*Note:**
 If you encounter an error while trying to upload one of these datasets to Domo using the File Upload connector, try saving the file as an Excel file. Be aware, however, that Excel files can only contain up to 1,048,576 rows, and both of these CSV files contain more than this number. Therefore you will not be able to upload the entire dataset when using Excel.


 Columns in these datasets are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 Id
  |
 An ID number assigned to this name in this year (for purposes of this dataset only)
  |
|
 Name
  |
 The baby name
  |
|
 Year
  |
 The year in which a count was given for this baby name
  |
|
 Gender
  |
 The gender associated with this usage of the name (an important qualifier, since separate counts are given per name per gender)
  |
|
 Count
  |
 The count of this name for a specific gender per year
  |
|
 State (StateNames dataset only)
  |
 The state in which a count was made
  |


 World Happiness Report
=========================

The World Happiness Report is a landmark survey of the state of global happiness. The World Happiness 2017, which ranks 155 countries by their happiness levels, was released at the United Nations at an event celebrating International Day of Happiness. The report continues to gain global recognition as governments, organizations and civil society increasingly use happiness indicators to inform their policy-making decisions.


 The attached CSV datasets provide happiness data for most world nations for the years 2015-2017. For each country, an overall ranking is assigned, and individual scores are provided for criteria such as life expectancy, economy, freedom, and so on.


 For more information about the World Happiness Report and how to interpret the data, see the Kaggle page at

https://www.kaggle.com/unsdsn/world-happiness/home

.

 WHR\_2015.csv

(16 KB)
* WHR\_2016.csv

(17 KB)
* WHR\_2017.csv

(29 KB)

Columns in these datasets are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 Country
  |
 The name of the country
  |
|
 Region (2015 and 2016 only)
  |
 World region the country belongs to (such as Western Europe, Middle East and Northern Africa, etc.)
  |
|
 Happiness Rank
  |
 The country's ranking based on the Happiness Score
  |
|
 Happiness Score
  |
 A metric measured by asking sample people the question "How would you rate your happiness on a scale of 0 to 10 where 0 is the happiest?"
  |
|
 Standard Error (2015 only)
  |
 The standard of error of the Happiness Score
  |
|
 Lower Confidence Interval (2016 only)
  |
 The lower confidence interval of the Happiness Score
  |
|
 Upper Confidence Interval (2016 only)
  |
 The upper confidence interval of the Happiness Score
  |
|
 Whisker.high (2017 only)
  |
 The whisker high score for this country
  |
|
 Whisker.low (2017 only)
  |
 The whisker low score for this country
  |
|
 Economy (GDP per Capita)
  |
 The extent to which GDP contributes to the calculation of the Happiness Score
  |
|
 Family
  |
 The extent to which family contributes to the calculation of the Happiness Score
  |
|
 Health (Life Expectancy)
  |
 The extent to which life expectancy contributes to the calculation of the Happiness Score
  |
|
 Freedom
  |
 The extent to which freedom contributes to the calculation of the Happiness Score
  |
|
 Trust (Government Corruption)
  |
 The extent to which perception of government corruption contributes to calculation of the Happiness Score
  |
|
 Generosity
  |
 The extent to which generosity contributes to the calculation of the Happiness Score
  |
|
 Dystopia Residual
  |
 The extent to which dystopia residual contributes to the calculation of the Happiness Score (for more information about what constitutes dystopia residual, see the Kaggle page referenced above)
  |


 80 Cereals
=============

This CSV dataset provides nutritional data on 80 different breakfast cereals.


 This dataset was uploaded to Kaggle by user Chris Crawford. Data was gathered and cleaned by Petra Isenberg, Pierre Dragicevic, and Yvonne Jansen. To see the Kaggle page, visit

https://www.kaggle.com/crawford/80-cereals/home

. The original source is available here:

https://perso.telecom-paristech.fr/eagan/class/igr204/datasets

.

 cereal.csv

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 name
  |
 The name of the cereal
  |
|
 manufacturer
  |
 The manufacturer of the cereal
  |
|
 type
  |
 The type of cereal, either cold or hot
  |
|
 calories
  |
 The number of calories per serving
  |
|
 protein
  |
 Amount of protein per serving, in grams
  |
|
 fat
  |
 Amount of fat per serving, in grams
  |
|
 sodium
  |
 Amount of sodium per serving, in milligrams
  |
|
 fiber
  |
 Amount of dietary fiber per serving, in grams
  |
|
 carbo
  |
 Amount of complex carbohydrates per serving, in grams
  |
|
 sugars
  |
 Amount of sugar per serving, in grams
  |
|
 potass
  |
 Amount of potassium per serving, in milligrams
  |
|
 vitamins
  |
 The percentage of vitamins and minerals--either 0, 25, or 100, indicating the typical percentage of FDA recommended
  |
|
 weight
  |
 The weight of one serving, in ounces
  |
|
 cups
  |
 The number of cups in a serving
  |
|
 rating
  |
 A rating of the cereal (author unsure of source, possibly Consumer Reports)
  |


 Speed Dating Experiment
==========================

For this dataset, data was gathered from participants in experimental speed dating events from 2002-2004. During the events, the attendees would have a four-minute "first date" with every other participant of the opposite sex. At the end of their four minutes, participants were asked if they would like to see their date again. They were also asked to rate their date on six attributes: Attractiveness, Sincerity, Intelligence, Fun, Ambition, and Shared Interests.


 The dataset also includes questionnaire data gathered from participants at different points in the process. These fields include: demographics, dating habits, self-perception across key attributes, beliefs on what others find valuable in a mate, and lifestyle information.


 This dataset was compiled by Columbia Business School professors Ray Fisman and Sheena Iyengar and uploaded to Kaggle by user Anna Montoya. For more information, see the Kaggle page at

https://www.kaggle.com/annavictoria/speed-dating-experiment/home

.


 This dataset is extremely complex, with over 200 columns. For your convenience in interpreting the columns, a key is provided along with the CSV file containing the data.

 Speed Dating Data.csv
* Speed Dating Data Key.docx

Titanic Passengers List
=========================

This CSV dataset consists of basic information for 887 passengers aboard the HMS Titanic when it sank in 1912, including name, age, gender, passenger class, fare amount, number of family members aboard, and whether they survived the disaster.


 There is a huge number of user-created datasets publicly available that utilize this information. To view any of these datasets and/or learn more about how Titanic data is being used for machine learning, visit

http://www.kaggle.com

and search for "titanic."

 titanic.csv

Columns in this dataset are as follows:


 Column
  |
 Description
  |
| --- | --- |
|
 Survived
  |
 Shows using Boolean values whether or not this passenger survived (0 is no and 1 is yes)
  |
|
 Pclass
  |
 The passenger class for this person, either 1, 2, or 3
  |
|
 Name
  |
 The name of this passenger
  |
|
 Sex
  |
 The gender of this passenger
  |
|
 Age
  |
 The age of this passenger
  |
|
 Siblings/Spouses Aboard
  |
 The number of siblings and/or spouses accompanying this passenger
  |
|
 Parents/Children Aboard
  |
 The number of parents and/or children accompanying this passenger
  |
|
 Fare
  |
 The fare paid by this passenger to board, in British pounds (£)
  |


