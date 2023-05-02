

Intro
-------

In Domo, you can add maps representing data for countries in specific continents and world regions. Continental and regional maps require only two data columns or rows from your DataSet. One column or row contains the names or two-letter ISO codes of the countries in the continent or region, and the other contains the values for each country. These values are represented in your map by varying shades of color, each of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet and are represented by a legend, which is automatically included beside the map.For information about value, category, and series data, see

Understanding Chart Data

.

*Note:**
 When multiple instances of a single region occur in a DataSet, the values for that region are summed to show a single value for the region in the map. For example, if your DataSet contained three rows for "Georgia," the values for the rows would be summed, and the Georgia region in the map would show the total value. You
 *cannot*
 turn off this automatic aggregation in maps.

For information about world maps, see

U.S. County Map

.


 For information about troubleshooting when an area in your map does not show data but there is data, see

Troubleshooting Domo

.


**Video - Map Charts**


 Powering continental and regional maps
----------------------------------------

In the Analyzer, you choose the columns containing the data for your map. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a continental map:

Customizing continental and regional maps
-------------------------------------------

You can customize the appearance of a continent or region map by editing its
 **Chart Properties**
 . Properties for all chart types are listed and described in

Chart Properties

. Unique properties of maps include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Theme
  |
 Allows you to change the color theme for the map. For more information about setting colors, see

Changing the Default Colors in Your Chart

.
  |
 —
  |
|
 General > Hover Text
  |
 Specifies text to replace the default text for hovers in a map. For more information about creating hover text, including a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 General > Hide Total
  |
 Hides the total value and percent of total value that normally display for each country or region in the Details view for the map.
  |
 —
  |
|
 General > Balanced Distribution
  |
 Adjusts maps to include a balanced number of items within each range. This is helpful in spreading values across each range when your data contains extreme outliers.


 In the pair of maps shown in the screenshots at right, the values of most of the Canadian provinces are in the range of 100 to 1500. The outlier, Alberta, has a value of 10,000.
 **Balanced Distribution**
 has not been turned on in the top map, so a skewed version of the data is shown—Alberta appears dark and all of the other provinces appear light. In the bottom map, the user has turned on
 **Balanced Distribution**
 , so Alberta is grouped into the same range as the province with the next highest value.
  |


 |
|
 General > Override Maximum Value
  |
 Lets you specify the maximum value for a map or Heat Map.


 By default, Domo uses the highest value in the DataSet as the maximum value. However, by setting this property you can override this value.
  |
 —

|
|
 Values > Label Format
  |
 Determines the general number format for hover text and legend items in maps.
  |
 —

|
|
 Values > Decimal Places
  |
 Determines the number of decimal places used in decimal values in hover text and legend items in maps.
  |
 —

|
|
 Values > Negative Numbers
  |
 Determines the format for negative numbers in hover text and legend items in maps
  |
 —


 |

Supported names and codes for continents and regions
------------------------------------------------------

Domo supports the following country names and ISO codes for each continent or region:

##
 Africa

You may reference African nations using their full names or their two-letter ISO-3166 codes.


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Morocco`
 |
`MA`
 |
|
 2
  |
`Algeria`
 |
`DZ`
 |
|
 3
  |
`Tunisia`
 |
`TN`
 |
|
 4
  |
`Libya`
 |
`LY`
 |
|
 5
  |
`Egypt`
 |
`EG`
 |
|
 6
  |
`Sudan`
 |
`SD`
 |
|
 7
  |
`Eritrea`
 |
`ER`
 |
|
 8
  |
`Ethiopia`
 |
`ET`
 |
|
 9
  |
`Djibouti`
 |
`DJ`
 |
|
 10
  |
`Somalia`
 |
`SO`
 |
|
 11
  |
`Kenya`
 |
`KE`
 |
|
 12
  |
`Uganda`
 |
`UG`
 |
|
 13
  |
`Democratic Republic of the Congo`
 |
`CD`
 |
|
 14
  |
`Central African Republic`
 |
`CF`
 |
|
 15
  |
`Chad`
 |
`TD`
 |
|
 16
  |
`Niger`
 |
`NE`
 |
|
 17
  |
`Mali`
 |
`ML`
 |
|
 18
  |
`Mauritania`
 |
`MR`
 |
|
 19
  |
`Western Sahara`
 |
`EH`
 |
|
 20
  |
`Senegal`
 |
`SN`
 |
|
 21
  |
`The Gambia`


`Gambia`
 |
`GM`
 |
|
 22
  |
`Guinea-Bissau`
 |
`GW`
 |
|
 23
  |
`Guinea`
 |
`GN`
 |
|
 24
  |
`Sierra Leone`
 |
`SL`
 |
|
 25
  |
`Liberia`
 |
`LR`
 |
|
 26
  |
`Ivory Coast`
 |
`CI`
 |
|
 27
  |
`Burkina Faso`
 |
`BF`
 |
|
 28
  |
`Ghana`
 |
`GH`
 |
|
 29
  |
`Togo`
 |
`TG`
 |
|
 30
  |
`Benin`
 |
`BJ`
 |
|
 31
  |
`Nigeria`
 |
`NG`
 |
|
 32
  |
`Cameroon`
 |
`CM`
 |
|
 33
  |
`Equatorial Guinea`
 |
`GQ`
 |
|
 34
  |
`Sao Tome and Principe`
 |
`ST`
 |
|
 35
  |
`Gabon`
 |
`GA`
 |
|
 36
  |
`Congo`
 |
`CG`
 |
|
 37
  |
`Angola`
 |
`AO`
 |
|
 38
  |
`Zambia`
 |
`ZM`
 |
|
 39
  |
`Malawai`
 |
`MW`
 |
|
 40
  |
`Tanzania`
 |
`TZ`
 |
|
 41
  |
`Burundi`
 |
`BI`
 |
|
 42
  |
`Rwanda`
 |
`RW`
 |
|
 43
  |
`Namibia`
 |
`NA`
 |
|
 44
  |
`Botswana`
 |
`BW`
 |
|
 45
  |
`Zimbabwe`
 |
`ZW`
 |
|
 46
  |
`Mozambique`
 |
`MZ`
 |
|
 47
  |
`South Africa`
 |
`ZA`
 |
|
 48
  |
`Lesotho`
 |
`LS`
 |
|
 49
  |
`Swaziland`
 |
`SZ`
 |
|
 50
  |
`Madagascar`
 |
`MG`
 |
|
 51
  |
`Comoros`
 |
`KM`
 |
|
 52
  |
`Reunion`
 |
`RE`
 |
|
 53
  |
`Mauritius`
 |
`MU`
 |


###
 Asia

You may reference Asian nations using their full names or their two-letter ISO-3166 codes.


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Turkey`
 |
`TR`
 |
|
 2
  |
`Georgia`
 |
`GE`
 |
|
 3
  |
`Armenia`
 |
`AM`
 |
|
 4
  |
`Azerbaijan`
 |
`AZ`
 |
|
 5
  |
`Cyprus`
 |
`CY`
 |
|
 6
  |
`Lebanon`
 |
`LB`
 |
|
 7
  |
`Gaza Strip`
 |
`PS`
 |
|
 8
  |
`Israel`
 |
`IL`
 |
|
 9
  |
`Syria`
 |
`SY`
 |
|
 10
  |
`Jordan`
 |
`JO`
 |
|
 11
  |
`Iraq`
 |
`IQ`
 |
|
 12
  |
`Saudi Arabia`
 |
`SA`
 |
|
 13
  |
`Yemen`
 |
`YE`
 |
|
 14
  |
`Oman`
 |
`OM`
 |
|
 15
  |
`United Arab Emirates`
 |
`AE`
 |
|
 16
  |
`Qatar`
 |
`QA`
 |
|
 17
  |
`Kuwait`
 |
`KW`
 |
|
 18
  |
`Iran`
 |
`IR`
 |
|
 19
  |
`Afghanistan`
 |
`AF`
 |
|
 20
  |
`Pakistan`
 |
`PK`
 |
|
 21
  |
`India`
 |
`IN`
 |
|
 22
  |
`Sri Lanka`
 |
`LK`
 |
|
 23
  |
`Bangladesh`
 |
`BD`
 |
|
 24
  |
`Bhutan`
 |
`BT`
 |
|
 25
  |
`Nepal`
 |
`NP`
 |
|
 26
  |
`Tajikistan`
 |
`TJ`
 |
|
 27
  |
`Turkmenistan`
 |
`TM`
 |
|
 28
  |
`Uzbekistan`
 |
`UZ`
 |
|
 29
  |
`Kyrgyzstan`
 |
`KG`
 |
|
 30
  |
`Kazakhstan`
 |
`KZ`
 |
|
 31
  |
`Russia`
 |
`RU`
 |
|
 32
  |
`Mongolia`
 |
`MN`
 |
|
 33
  |
`China`
 |
`CN`
 |
|
 34
  |
`North Korea`
 |
`KP`
 |
|
 35
  |
`South Korea`
 |
`KR`
 |
|
 36
  |
`Japan`
 |
`JP`
 |
|
 37
  |
`Taiwan`
 |
`TW`
 |
|
 38
  |
`Philippines`
 |
`PH`
 |
|
 39
  |
`Vietnam`
 |
`VN`
 |
|
 40
  |
`Laos`
 |
`LA`
 |
|
 41
  |
`Cambodia`
 |
`KH`
 |
|
 42
  |
`Thailand`
 |
`TH`
 |
|
 43
  |
`Myanmar`
 |
`MM`
 |
|
 44
  |
`Malaysia`
 |
`MY`
 |
|
 45
  |
`Brunei`
 |
`BN`
 |
|
 46
  |
`Indonesia`
 |
`ID`
 |
|
 47
  |
`Papua New Guinea`
 |
`PG`
 |


###
 Europe

You may reference European nations using their full names or their two-digit ISO 3166-2 codes. You can use the following map and numbered list to determine the code for each nation.


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Iceland`
 |
`IS`
 |
|
 2
  |
`Faroe Islands`
 |
`FO`
 |
|
 3
  |
`Ireland`
 |
`IE`
 |
|
 4
  |
`Isle Of Man`
 |
`IM`
 |
|
 5
  |
`United Kingdom`
 |
`GB`


`UK`
 |
|
 6
  |
`Norway`
 |
`NO`
 |
|
 7
  |
`Sweden`
 |
`SE`
 |
|
 8
  |
`Finland`
 |
`FI`
 |
|
 9
  |
`Russia`
 |
`RU`
 |
|
 10
  |
`Estonia`
 |
`EE`
 |
|
 11
  |
`Latvia`
 |
`LV`
 |
|
 12
  |
`Lithuania`
 |
`LT`
 |
|
 13
  |
`Belarus`
 |
`BY`
 |
|
 14
  |
`Poland`
 |
`PL`
 |
|
 15
  |
`Czech Republic`
 |
`CZ`
 |
|
 16
  |
`Germany`
 |
`DE`
 |
|
 17
  |
`Denmark`
 |
`DK`
 |
|
 18
  |
`Netherlands`


`The Netherlands`


`Holland`
 |
`NL`
 |
|
 19
  |
`Belgium`
 |
`BE`
 |
|
 20
  |
`Luxembourg`
 |
`LU`
 |
|
 21
  |
`France`
 |
`FR`
 |
|
 22
  |
`Andorra`
 |
`AD`
 |
|
 23
  |
`Spain`
 |
`ES`
 |
|
 24
  |
`Portugal`
 |
`PT`
 |
|
 25
  |
`Switzerland`
 |
`CH`
 |
|
 26
  |
`Italy`
 |
`IT`
 |
|
 27
  |
`Malta`
 |
`MT`
 |
|
 28
  |
`Austria`
 |
`AT`
 |
|
 29
  |
`Slovenia`
 |
`SI`
 |
|
 30
  |
`Croatia`
 |
`HR`
 |
|
 31
  |
`Bosnia and Herzegovina`
 |
`BA`
 |
|
 32
  |
`Serbia-Montenegro`
 |
`RS`


`YU`
 |
|
 33
  |
`Albania`
 |
`AL`
 |
|
 34
  |
`Greece`
 |
`GR`
 |
|
 35
  |
`Turkey`
 |
`TR`
 |
|
 36
  |
`Bulgaria`
 |
`BG`
 |
|
 37
  |
`Macedonia`
 |
`MK`
 |
|
 38
  |
`Romania`
 |
`RO`
 |
|
 39
  |
`Hungary`
 |
`HU`
 |
|
 40
  |
`Slovakia`
 |
`SK`
 |
|
 41
  |
`Ukraine`
 |
`UA`
 |
|
 42
  |
`Moldova`
 |
`MD`
 |


###
 Middle East

You may reference nations in the Middle East region using their full names or their two-digit ISO 3166-2 codes. You can use the following map and numbered list to determine the code for each nation.


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Syria`
 |
`SY`
 |
|
 2
  |
`Lebanon`
 |
`LB`
 |
|
 3
  |
`Palestine`
 |
`PS`
 |
|
 4
  |
`Israel`
 |
`IL`
 |
|
 5
  |
`Jordan`
 |
`JO`
 |
|
 6
  |
`Iraq`
 |
`IQ`
 |
|
 7
  |
`Kuwait`
 |
`KW`
 |
|
 8
  |
`Saudi Arabia`
 |
`SA`
 |
|
 9
  |
`Bahrain`
 |
`BH`
 |
|
 10
  |
`Qatar`
 |
`QA`
 |
|
 11
  |
`United Arab Emirates`
 |
`AE`
 |
|
 12
  |
`Oman`
 |
`OM`
 |
|
 13
  |
`Yemen`
 |
`YE`
 |


###
 North America

You may reference countries in North America using their names or their two-letter ISO-3166 codes. You can use the following map and numbered list to determine the code for each country:


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Greenland`
 |
`GL`
 |
|
 2
  |
`Canada`
 |
`CA`
 |
|
 3
  |
`United States`
 |
`US`
 |
|
 4
  |
`Mexico`
 |
`MX`
 |
|
 5
  |
`Guatemala`
 |
`GT`
 |
|
 6
  |
`Belize`
 |
`BZ`
 |
|
 7
  |
`Honduras`
 |
`HN`
 |
|
 8
  |
`El Salvador`
 |
`SV`
 |
|
 9
  |
`Nicaragua`
 |
`NI`
 |
|
 10
  |
`Costa Rica`
 |
`CR`
 |
|
 11
  |
`Panama`
 |
`PA`
 |
|
 12
  |
`Bahamas/The Bahamas`
 |
`BS`
 |
|
 13
  |
`Cuba`
 |
`CU`
 |
|
 14
  |
`Haiti`
 |
`HT`
 |
|
 15
  |
`Dominican Republic`
 |
`DO`
 |
|
 16
  |
`Puerto Rico`
 |
`PR`
 |
|
 17
  |
`Jamaica`
 |
`JM`
 |

Most small Caribbean island nations (for examples, Barbados, St. Lucia, Antigua, etc.) are not supported.

##
 South America

You may reference nations in South America using their full names or their two-digit ISO 3166-2 codes. You can use the following map and numbered list to determine the code for each nation.


|
 Number
  |
 Country
  |
 ISO 3166 Code
  |
| --- | --- | --- |
|
 1
  |
`Ecuador`
 |
`EC`
 |
|
 2
  |
`Colombia`
 |
`CO`
 |
|
 3
  |
`Venezuela`
 |
`VE`
 |
|
 4
  |
`Guyana`
 |
`GY`
 |
|
 5
  |
`Suriname`
 |
`SR`
 |
|
 6
  |
`French Guiana`
 |
`GF`
 |
|
 7
  |
`Brazil`
 |
`BR`
 |
|
 8
  |
`Peru`
 |
`PE`
 |
|
 9
  |
`Bolivia`
 |
`BO`
 |
|
 10
  |
`Chile`
 |
`CL`
 |
|
 11
  |
`Argentina`
 |
`AR`
 |
|
 12
  |
`Paraguay`
 |
`PY`
 |
|
 13
  |
`Uruguay`
 |
`UY`
 |


###
 United Kingdom (Country)

You may reference the four countries in the United Kingdom using their full names. You can use the following map and numbered list to identify each country.


|
 Number
  |
 Country
  |
| --- | --- |
|
 1
  |
`Scotland`
 |
|
 2
  |
`Northern Ireland`
 |
|
 3
  |
`England`
 |
|
 4
  |
`Wales`
 |


