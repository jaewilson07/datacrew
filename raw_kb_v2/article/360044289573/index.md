

Intro
=======

You can use this reference guide to learn about supported functions in the Add Formula and Group By tiles in Magic ETL.


**Important:**
 There are significant behavioral differences in Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**


 Supported Functions
=====================

The following sections give examples of the available functions that can be used inside of Magic ETL. However, for a complete list you will need to refer to the Functions list inside of the Formula Editor as seen here:


**Important:**
 While the Formula Editor looks similar to the Beast Mode editor, they are not the same. You can copy any Beast Mode you have made into the Formula Editor and it will work, but not all of the functions allowed in the Formula Editor will work inside of a Beast Mode. This is due to the increased processing power available to DataFlows versus Analyzer.

Aggregate Functions
=====================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 APPROXIMATE COUNT (DISTINCT)
  |
 Returns the approximate count of a number of unique values in a column.
  |
 APPROXIMATE\_COUNT\_DISTINCT(X)
  |
|
 CORR
  |
 Returns the correlation coefficient of independent variable x and dependent variable y. It is computed for non-null pairs of values only.


 For non-null data, it is equivalent to: COVAR\_POP(y, x) / (STDDEV\_POP(x) \* STDDEV\_POP(y)).


 It is an aggregate function.


 VAR\_POP() returns NULL if there were no matching rows.
  |
 CORR(x,y)
  |
|
 COUNT
  |
 Returns a count of the number of non-NULL values of expr. The result is an integer value. It is an aggregate function.


 COUNT(\*) counts the total number of rows.


 COUNT() returns 0 if there were no matching rows.
  |
 COUNT(expr)
  |
|
 COVAR\_POP
  |
 Returns the population covariance of independent variable x and dependent variable y. It is computed for non-null pairs of values only.


 For non-null data, it is equivalent to: (SUM(x\*y) - SUM(x) \* SUM(y) / COUNT(\*)) / COUNT(\*).


 It is an aggregate function.


 VAR\_POP() returns NULL if there were no matching rows.
  |
 COVAR\_POP(x,y)
  |
|
 COVAR\_SAMP
  |
 Returns the sample covariance of independent variable x and dependent variable y; the denominator is the sample size minus one. It is computed for non-null pairs of values only.


 For non-null data, it is equivalent to: (SUM(x\*y) - SUM(x) \* SUM(y) / COUNT(\*)) / (COUNT(\*) - 1).


 It is an aggregate function.


 VAR\_POP() returns NULL if there were no matching rows.
  |
 COVAR\_SAMP(x,y)
  |
|
 FIRST\_NON\_NULL\_VALUE
  |
 Returns the first non-null value in expr, or NULL if no non-NULL values were found. It is an aggregate function.
  |
 FIRST\_NON\_NULL\_VALUE(expr)
  |
|
 FIRST\_VALUE
  |
 Returns the first value in expr, including NULL. It is an aggregate function.
  |
 FIRST\_VALUE(expr)
  |
|
 LAST\_NON\_NULL\_VALUE
  |
 Returns the last non-null value in expr, or NULL if no non-NULL values were found. It is an aggregate function.
  |
 LAST\_NON\_NULL\_VALUE(expr)
  |
|
 LAST\_VALUE
  |
 Returns the last value in expr, including NULL. It is an aggregate function.
  |
 LAST\_VALUE(expr)
  |
|
 MAX
  |
 Returns the largest, or maximum, value of expr. MAX() can also take a string argument in which case it returns the maximum string value.


 It is an aggregate function.


 MAX() returns NULL if there were no matching rows.
  |
 MAX(expr)
  |
|
 MEDIAN
  |
 Returns the estimated median value of expr. It is an aggregate function.
  |
 MEDIAN(expr)
  |
|
 MIN
  |
 Returns the smallest, or minimum, value of expr. MIN() can also take a string argument in which case it returns the minimum string value.


 It is an aggregate function.


 MIN() returns NULL if there were no matching rows.
  |
 MIN(expr)
  |
|
 PERCENTILE
  |
 Returns the ntile percentile of expr. It is an aggregate function.
  |
 PERCENTILE(expr, ntile)
  |
|
 STD
  |
 STD() is a synonym for STDDEV\_SAMP().
  |
 STD(expr)
  |
|
 STDDEV
  |
 STDDEV() is a synonym for STDDEV\_SAMP().
  |
 STDDEV(expr)
  |
|
 STDDEV\_POP
  |
 Returns the population standard deviation of expr (the square root of VAR\_POP()).


 It is an aggregate function.


 STDDEV\_POP() returns NULL if there were no matching rows.
  |
 STDDEV\_POP(expr)
  |
|
 STDDEV\_SAMP
  |
 Returns the sample standard deviation of expr (the square root of VAR\_SAMP()).


 It is an aggregate function.


 STDDEV\_POP() returns NULL if there were no matching rows.
  |
 STDDEV\_SAMP(expr)
  |
|
 SUM
  |
 Returns the sum of expr. If the return set has no rows, SUM() returns NULL.


 It is an aggregate function.
  |
 SUM(expr)
  |
|
 VAR\_POP
  |
 Returns the population standard variance of expr. It considers rows as the whole population, not as a sample, so it has the number of rows as the denominator.


 Variance is calculated by working out the mean for the set for each number, subtracting the mean and squaring the result, and finally calculating the average of the resulting differences


 It is an aggregate function.


 VAR\_POP() returns NULL if there were no matching rows.
  |
 VAR\_POP(expr)
  |
|
 VAR\_SAMP
  |
 Returns the sample standard variance of expr. The denominator is the number of rows minus one.


 Variance is calculated by working out the mean for the set for each number, subtracting the mean and squaring the result, and finally calculating the average of the resulting differences.


 It is an aggregate function.


 VAR\_POP() returns NULL if there were no matching rows.
  |
 VAR\_SAMP(expr)
  |
|
 VARIANCE
  |
 VARIANCE() is a synonym for VAR\_SAMP().
  |
 VARIANCE(expr)
  |
|
 VARIANCE\_POP
  |
 VARIANCE\_POP() is a synonym for VAR\_POP().
  |
 VARIANCE\_POP(expr)
  |
|
 VARIANCE\_SAMP
  |
 VARIANCE\_SAMP() is a synonym for VAR\_SAMP().
  |
 VARIANCE\_SAMP(expr)
  |


 Numeric Functions
===================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 ABS
  |
 Returns the absolute (non-negative) value of X. If X is not a number, it is converted to a numeric type.
  |
 ABS(X)
  |
|
 ACOS
  |
 Returns the arc cosine of X, that is, the value whose cosine is X. Returns NaN if X is not in the range -1 to 1.
  |
 ACOS(X)
  |
|
 ASIN
  |
 Returns the arc sine of X, that is, the value whose sine is X. Returns NaN if X is not in the range -1 to 1.
  |
 ASIN(X)
  |
|
 ATAN
  |
 Returns the arc tangent of X, that is, the value whose tangent is X.
  |
 ATAN(X)
  |
|
 ATAN2
  |
 Returns the arc tangent of the two variables X and Y. It is similar to calculating the arc tangent of Y / X, except that the signs of both arguments are used to determine the quadrant of the result.
  |
 ATAN2(Y,X)
  |
|
 AVG
  |
 Returns the average value of expr. NULL values are ignored. It is an aggregate function.


 AVG() returns NULL if there were no matching rows.
  |
 AVG(expr)
  |
|
 CBRT
  |
 Returns the cube root of X. If X is negative, NaN is returned.
  |
 CBRT(X)
  |
|
 CEIL
  |
 Returns the smallest integer value not less than X. Alias for CEILING().
  |
 CEIL(X)
  |
|
 CEILING
  |
 Returns the smallest integer value not less than X.
  |
 CEILING(X)
  |
|
 CONV
  |
 Converts numbers between different number bases. Returns a string representation of the number N, converted from base from\_base to base to\_base.
  |
 CONV(N,from\_base,to\_base)
  |
|
 CONVERT\_UNIT
  |
 Converts expr from from\_unit to to\_unit. expr will be converted to type DOUBLE if it is not already, and the result always has type DOUBLE.


 from\_unit and to\_unit are strings describing conmensurable units in English, e.g. ''cubic feet'' and ''liters'', or ''mph'' and ''m/s''. Unit strings follow these rules:


 1. Most SI (Metric) and Imperial units are supported. Imperial units are defined in terms of their SI counterparts. Imperial units of length, area, and mass/weight are mostly agreed upon internationally; the ton is an exception. Units of volume, like the gallon, also differ between the UK and the USA. When such differences arise, USA customary values (e.g. the short ton; 2000 avoirdupois pounds) are used.


 2. Units may be written out in full, and optionally pluralized. Metric units may have metric prefixes, and computing units may have metric or binary prefixes. Examples: ''feet'', ''year'', ''kilowatt'', ''megabyte'', ''mebibyte''


 3. Units may be abbreviated. Metric and binary prefixes on abbreviated units must also be abbreviated. Abbreviated units are case-sensitive. Examples: ''mi'' (miles), ''KiBps'' (kibibytes per second), ''uPa'' (micropascals)


 4. Units may be exponentiated using the caret ''^'' or by ending a unit's name with a number. Exponents may be negative to indicate inversion of the unit. Units may also be prefixed with ''cu''/''cubic'' or ''sq''/''square'', followed by a space '' '' or hyphen ''-'', which are equivalent to the exponents ''3'' and ''2'', respectively. Examples: ''sq ft'' (square feet), ''m3'' (cubic meters), ''s^-1'' (inverse seconds; hertz)


 5. Units may be divided using the forward slash ''/'' character or the word '' per ''. Examples: ''miles per hour'', ''metres/second/second'' (meters per second squared; acceleration)


 6. Units may be multiplied using the asterisk ''\*'' or by being combined with a hyphen ''-'' or space. The asterisk follows normal multiplication order of operations, while the hyphen or space form have the highest precedence, as though the combined units were a single unit name. Examples: ''N\*m'' (newton meters; joules), ''half-gal'' (half gallons), ''kilogram-meters/second2'' (kilogram meters per second squared; newtons)


 7. Parentheses may be used to affect the order of operations of exponentiation, multiplication, and division. Examples: ''(m/s)^2'' (meters squared per second squared; acceleration of area)


 8. Units whose names or abbreviations consist of more than one word can be written with an underscore ''\_'' separator or simply without the space. Examples: ''fluid\_ounce'', ''floz'' (fluid ounce), ''poundforce'', ''astronomical\_unit''


 Units must be conmensurable to be converted; they must have the same dimensions. There are five supported dimensional values: Time, length, mass, electric current, and information. Units may have a positive, negative, or zero number of dimensions in any of these values. Some units have zero dimensions in all categories; these units are raw quantities like ''dozen'' or ''half''. ''meters / second'' has one positive length dimension, and one negative time dimension; it is a unit of velocity. The ''gallon'' has three positive length dimensions; it is a unit of volume. These can be converted to ''miles / hour'' and ''cubic inches'', respectively, because they have the same dimensions. Attempting to convert between units that have different dimensions, like from ''seconds'' to ''miles'', results in an error.


 Note that due to the nature of DOUBLE arithmetic, results may appear inexact. The ROUND() function may be used to correct results in these cases.
  |
 CONVERT\_UNIT(expr,from\_unit,to\_unit)
  |
|
 COS
  |
 Returns the cosine of X, where X is given in radians.
  |
 COS(X)
  |
|
 COSH
  |
 Returns the hyperbolic cosine of X.
  |
 COSH(X)
  |
|
 COT
  |
 Returns the cotangent of X.
  |
 COT(X)
  |
|
 CRC32
  |
 Computes a cyclic redundancy check value and returns a 32-bit unsigned value. The result is NULL if the argument is NULL. The argument is expected to be a string and (if possible) is treated as one if it is not.
  |
 CRC32(expr)
  |
|
 DECIMAL
  |
 Returns the value of expr converted to a fixed-precision DECIMAL type.
  |
 DECIMAL(expr), CAST(expr AS DECIMAL)
  |
|
 DEGREES
  |
 Returns the argument X, converted from radians to degrees.


 This is the converse of the RADIANS() function.
  |
 DEGREES(X)
  |
|
 DISTANCE
  |
 Returns the kilometer distance between two points on the WGS-84 model of Earth, given as degrees longitude and latitude. Vincenty's formulae are used to calculate the distance.
  |
 DISTANCE(lat0, lon0, lat1, lon1)
  |
|
 DISTANCEV
  |
 DISTANCEV() is a synonym for DISTANCE(). Both use the slower but more accurate Vincenty method.
  |
 DISTANCEV(lat0, lon0, lat1, lon1)
  |
|
 DOUBLE
  |
 Returns the value of expr converted to a floating-point DOUBLE type.
  |
 DOUBLE(expr), CAST(expr AS DOUBLE)
  |
|
 E
  |
 Returns the value of e (Euler's number) as a double-precision floating point.
  |
 E()
  |
|
 EXP
  |
 Returns the value of e (the base of natural logarithms) raised to the power of X. The inverse of this function is LOG() (using a single argument only) or LN().


 If X is NULL, this function returns NULL.
  |
 EXP(X)
  |
|
 FINITE
  |
 Returns TRUE if expr is a finite number, NULL if it is NULL, or FALSE if it is NaN, Infinity, or -Infinity.
  |
 FINITE(expr)
  |
|
 FLOOR
  |
 Returns the largest integer value not greater than X.
  |
 FLOOR(X)
  |
|
 INFINITY
  |
 Returns the floating point representation of infinity.
  |
 INF(), INFINITY()
  |
|
 LN
  |
 Returns the natural logarithm of X; that is, the base-e logarithm of X. If X is less than or equal to 0, or NULL, then NULL is returned.


 The inverse of this function is EXP().
  |
 LN(X)
  |
|
 LOG
  |
 If called with one parameter, this function returns the natural logarithm of X. If X is less than or equal to 0, then NULL is returned.


 If called with two parameters, it returns the logarithm of X to the base B. If B is <= 1 or X <= 0, the function returns NULL.


 If any argument is NULL, the function returns NULL.


 The inverse of this function (when called with a single argument) is the EXP() function.
  |
 LOG(X), LOG(B,X)
  |
|
 LOG10
  |
 Returns the base-10 logarithm of X.
  |
 LOG10(X)
  |
|
 LOG2
  |
 Returns the base-2 logarithm of X.
  |
 LOG2(X)
  |
|
 LONG
  |
 Returns the value of expr converted to a LONG type integer.
  |
 LONG(expr), CAST(expr AS LONG)
  |
|
 LONG\_MAX
  |
 Returns the value -(2^63) as an integer. This is the smallest value that the type LONG can represent.
  |
 LONG\_MAX()
  |
|
 LONG\_MIN
  |
 Returns the value 2^63 - 1 as an integer. This is the largest value that the type LONG can represent.
  |
 LONG\_MIN()
  |
|
 MOD
  |
 Modulo operation. Returns the remainder of N divided by M.
  |
 MOD(N,M), N % M
  |
|
 NAN
  |
 Returns the floating point representation of NaN (not-a-number).
  |
 NAN()
  |
|
 NEGATIVE\_INFINITY
  |
 Returns the floating point representation of negative infinity.
  |
 NEGINF(), NEGATIVE\_INFINITY()
  |
|
 PI
  |
 Returns the value of π (pi) as a double-precision floating point.
  |
 PI()
  |
|
 POW
  |
 Returns the value of X raised to the power of Y.
  |
 POW(X,Y)
  |
|
 POWER
  |
 This is a synonym for POW(), which returns the value of X raised to the power of Y.
  |
 POWER(X,Y)
  |
|
 RADIANS
  |
 Returns the argument X, converted from degrees to radians. Note that π radians equals 180 degrees.


 This is the converse of the DEGREES() function.
  |
 RADIANS(X)
  |
|
 RAND
  |
 Returns a random DOUBLE precision floating point value v in the range 0 <= v < 1.0. If a constant integer argument N is specified, it is used as the seed value, which produces a repeatable sequence of column values.
  |
 RAND(), RAND(N)
  |
|
 ROUND
  |
 Rounds the argument X to D decimal places. D defaults to 0 if not specified.
  |
 ROUND(X), ROUND(X,D)
  |
|
 RPAD
  |
 Returns the string str, right-padded with the string padstr to a length of len characters. If str is longer than len, the return value is shortened to len characters.
  |
 RPAD(str, len, padstr)
  |
|
 RTRIM
  |
 Returns the string str with trailing space characters removed.
  |
 RTRIM(str)
  |
|
 SIGN
  |
 Returns the sign of the argument as -1, 0, or 1, depending on whether X is negative, zero, or positive.
  |
 SIGN(X)
  |
|
 SIN
  |
 Returns the sine of X, where X is given in radians.
  |
 SIN(X)
  |
|
 SINH
  |
 Returns the hyperbolic sine of X.
  |
 SINH(X)
  |
|
 SQRT
  |
 Returns the square root of X. If X is negative, NaN is returned.
  |
 SQRT(X)
  |
|
 TAN
  |
 Returns the tangent of X, where X is given in radians.
  |
 TAN(X)
  |
|
 TANH
  |
 Returns the hyperbolic tangent of X.
  |
 TANH(X)
  |
|
 TRUNCATE
  |
 Returns the number X, truncated to D decimal places. If D is 0, the result has no decimal point or fractional part.
  |
 TRUNCATE(X,D)
  |
|
 WIDTH\_BUCKET
  |
 Divides the range [min, max) into equal-width buckets and returns the number of the bucket into which expr falls. Buckets are numbered from 1 to N, where N is the number of buckets. Values that fall outside the range are put in overflow buckets with numbers 0 and N + 1.


 Be aware that bucket ranges are inclusive of their minimum bound and exclusive of their maximum bound. So WIDTH\_BUCKET(100, 0, 100, 4) = 5, the overflow bucket. Also note that min may be less than max, in which case bucket minimums are larger than bucket maximums. So WIDTH\_BUCKET(100, 100, 0, 4) = 1, the first bucket.
  |
 WIDTH\_BUCKET(expr, min, max, bucket\_count)
  |


 Statistical Functions
=======================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 ANOVAF
  |
 Returns the F-value of a one-way Analysis of Variance of the samples. At least two samples must be provided, and each sample must have at least two non-null values. Note that a one-way ANOVA on two samples is equivalent to the Student's t-test (see the TTEST function).


 See also: ANOVAP()
  |
 ANOVAF(sample1,sample2[,sample3[,...,sampleN]])
  |
|
 ANOVAP
  |
 Returns the p-value of a one-way Analysis of Variance of the samples. At least two samples must be provided, and each sample must have at least two non-null values. Note that a one-way ANOVA on two samples is equivalent to the Student's t-test (see the TTEST function).


 See also: ANOVAF()
  |
 ANOVAP(sample1,sample2[,sample3[,...,sampleN]])
  |
|
 TTEST
  |
 Returns the p-value result of a Student's t-test. Arguments sample1 and sample2 are two numeric columns with at least 2 non-null values each. The tails argument is either 1 or 2, indicating a one- or two-tailed test. The type argument is a number 1 through 3. Type 1 is a paired sample test; for this type of test, values in both sample1 and sample2 must be non-null or be ignored. Type 2 is for two samples with the assumption of equal variance. Type 3 is for two samples without the assumption of equal variance.
  |
 TTEST(sample1,sample2,tails,type)
  |


 Financial Functions
=====================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 FV
  |
 Calculates the future value of an investment based on these arguments:


 rate (required): The interest rate per period, expressed as a ratio (e.g. 1% is 0.01).


 nper (required): The total number of periods.


 pmt (required): The payment made each period. Can be zero.


 pv (optional): The present value; how much the investment is worth right now.


 type (optional): 0/FALSE or 1/TRUE, with 0 indicating that payments are made at the end of each period, and 1 indicating they are paid at the beginning. If not specified, 0 is used.


 NOTE: Unlike spreadsheet syntax, interest rates cannot be expressed as a percent. They must be expressed as a ratio (usually between 0 and 1).


 See also: PV(), PMT(), RATE(), and NPER().
  |
 FV(rate,nper,pmt[,pv[,type]])
  |
|
 IRR
  |
 Calculates the per-period Internal Rate of Return for a set of periodic transactions. ''guess'' is a best guess of the rate of return. It is optional and the default is 0.1, meaning 10%. It is usually not necessary to specify this value.


 IRR is an aggregate function.
  |
 IRR(values[,guess])
  |
|
 NPV
  |
 Calculates the Net Present Value for a set of periodic transactions. NPV is an aggregate function.
  |
 NPV(rate,values)
  |
|
 PMT
  |
 Calculates the number of periods for an investment based on constant interest rate, payments, and period duration. Arguments:


 rate (required): The interest rate per period, expressed as a ratio (e.g. 1% is 0.01).


 pv (required): The present value of the loan; the "principal".


 fv (optional): The future value; the balance at the end of the entire annuity. If omitted, it is assumed to be 0 (e.g. a loan paid in full).


 type (optional): 0/FALSE or 1/TRUE, with 0 indicating that payments are made at the end of each period, and 1 indicating they are paid at the beginning. If not specified, 0 is used.


 NOTE: Unlike spreadsheet syntax, interest rates cannot be expressed as a percent. They must be expressed as a ratio (usually between 0 and 1).


 See also: FV(), PV(), PMT(), and RATE().
  |
 PMT(rate,nper,pv[,fv[,type]])
  |
|
 PV
  |
 Calculates the present value of an investment based on these arguments:


 rate (required): The interest rate per period, expressed as a ratio (e.g. 1% is 0.01).


 nper (required): The total number of periods.


 pmt (required): The payment made each period. Can be zero.


 fv (optional): The future value; the balance at the end of the entire annuity. If omitted, it is assumed to be 0 (e.g. a loan paid in full).


 type (optional): 0/FALSE or 1/TRUE, with 0 indicating that payments are made at the end of each period, and 1 indicating they are paid at the beginning. If not specified, 0 is used.


 NOTE: Unlike spreadsheet syntax, interest rates cannot be expressed as a percent. They must be expressed as a ratio (usually between 0 and 1).


 See also: FV(), PMT(), RATE(), and NPER().
  |
 PV(rate,nper,pmt[,fv[,type]])
  |
|
 RATE
  |
 Attempts to calculate the per-period interest rate of an investment. Not all arguments will have solutions; the result will be NaN if a solution cannot be found. You can also experiment with setting the guess if you believe there is a solution and it is not being returned. Note that the current implementation will not calculate negative interest rates. Arguments:


 nper (required): The total number of periods.


 pmt (required): The payment made each period. Can be zero.


 pv (required): The present value of the loan; the "principal".


 fv (optional): The future value; the balance at the end of the entire annuity. If omitted, it is assumed to be 0 (e.g. a loan paid in full).


 type (optional): 0/FALSE or 1/TRUE, with 0 indicating that payments are made at the end of each period, and 1 indicating they are paid at the beginning. If not specified, 0 is used.


 guess (optional): A best guess of the interest rate.


 See also: FV(), PV(), PMT(), and NPER().
  |
 RATE(rate,nper,pv[,fv[,type[,guess]]])
  |
|
 XIRR
  |
 Calculates the Internal Rate of Return for a set of transactions that is not necessarily periodic. ''values'' is a set of transaction amounts which must contain at least one negative and one positive value. NULL or zero values in this column are ignored. ''dates'' is a list of transaction dates whose time components, if present, are ignored. ''guess'' is a best guess of the rate of return. It is optional and the default is 0.1, meaning 10%. It is usually not necessary to specify this value.


 XIRR is an aggregate function.
  |
 XIRR(values,dates[,guess])
  |
|
 XNPV
  |
 Calculates the Net Present Value for a set of transactions that is not necessarily periodic. ''rate'' is the annualized Internal Rate of Return for the values. ''values'' is a set of transaction amounts which must contain at least one negative and one positive value. NULL or zero values in this column are ignored. ''dates'' is a list of transaction dates whose time components, if present, are ignored.


 XNPV is an aggregate function.
  |
 XNPV(rate,values,dates)
  |


 Logical Functions
===================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 ALL\_TRUE
  |
 Returns TRUE if all arguments evaluate to TRUE, otherwise returns FALSE. Can be invoked with one or more arguments.
  |
 ALL\_TRUE(cond1,cond2,...)
  |
|
 ANY\_TRUE
  |
 Returns TRUE if any arguments evaluate to TRUE, otherwise returns FALSE. Can be invoked with one or more arguments.
  |
 ANY\_TRUE(cond1,cond2,...)
  |
|
 BOOLEAN
  |
 Returns the value of expr converted to BOOLEAN type (TRUE, FALSE, or NULL).
  |
 BOOLEAN(expr), CAST(expr AS BOOLEAN)
  |
|
 COALESCE
  |
 Returns the first non-NULL value in the list, or NULL if there are no non-NULL values. At least one parameter must be passed.
  |
 COALESCE(value,...)
  |
|
 ERROR
  |
 When evaluated, produces an error with the given error string. Depending on the transformation settings, this may halt execution entirely.
  |
 ERROR(error\_string)
  |
|
 IF
  |
 If test is TRUE, returns exprTrue. Otherwise, returns exprFalse.


 The return type is the type that best matches both exprTrue and exprFalse. For example, if exprTrue has type LONG and exprFalse has type DOUBLE, the return type will be DOUBLE, even if test is TRUE.
  |
 IF(test,exprTrue,exprFalse)
  |
|
 IFERROR
  |
 If the evaluation of expr1 does not produce an error, IFERROR() returns expr1; otherwise it returns expr2. Note IFERROR() will only handle errors produced at runtime. If expr1 is produces an error before even being evaluated, e.g. if it attempts to convert between inconvertible types, IFERROR() will still produce that error.
  |
 IFERROR(expr1,expr2)
  |
|
 IFNULL
  |
 If expr1 is not NULL, IFNULL() returns expr1; otherwise it returns expr2.
  |
 IFNULL(expr1,expr2)
  |
|
 NULLIF
  |
 Returns NULL if expr1 = expr2 is true, otherwise returns expr1. This is the same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.
  |
 NULLIF(expr1,expr2)
  |


 String Functions
==================


|
**Function**
 |
**Description**
 |
**Example**
 |
|
 CHAR\_LENGTH
  |
 Returns the length of the given string argument, measured in characters. A multi-byte character counts as a single character. This means that for a string containing five two-byte characters, LENGTH(), whereas CHAR\_LENGTH() returns 5. If the argument is NULL, it returns NULL.


 If the argument is not a string value, it is converted into a string.
  |
 CHAR\_LENGTH(str)
  |
|
 CONCAT
  |
 Returns the string that results from concatenating the arguments. May have one or more arguments. All arguments are converted to strings.


 CONCAT() returns NULL if any argument is NULL.
  |
 CONCAT(str1,str2,...)
  |
|
 DYNACAST
  |
 Returns the value of expr converted to the same type as type\_expr. type\_expr is not evaluated; it is only used to determine the type to which expr should be converted. In most cases, type\_expr be a column reference.
  |
 DYNACAST(expr, type\_expr)
  |
|
 GROUP\_CONCAT
  |
 Returns the string that results from concatenating the arguments, separated by the separator, for the whole group. May have one or more arguments, plus the optional separator. If not set, the separator is the comma character '',''. All arguments are converted to strings.


 It is an aggregate function.


 GROUP\_CONCAT() returns null if there were no matching rows.

*Note:**
 The GROUP\_CONCAT function does not support “ORDER BY” or "DISTINCT" as part of the expression in Magic ETL v2.

|
 GROUP\_CONCAT(str1,str2,...[SEPARATOR sep])
  |
|
 INITCAP
  |
 Returns str with the start of every word in uppercase and all other characters in lowercase.
  |
 INITCAP(str)
  |
|
 INSTR
  |
 Returns the position of the first occurrence of substring substr in string str.


 If any argument is NULL, returns NULL.
  |
 INSTR(str,substr)
  |
|
 LCASE
  |
 LCASE() is a synonym for LOWER().
  |
 LCASE(str)
  |
|
 LEFT
  |
 Returns the leftmost len characters from the string str, or NULL if any argument is NULL.
  |
 LEFT(str,len)
  |
|
 LENGTH
  |
 Returns the length of the string str, measured in bytes using the UTF-8 encoding. A multi-byte character counts as multiple bytes. This means that for a string containing five two-byte characters, LENGTH() returns 10, whereas CHAR\_LENGTH() returns 5.


 If str is not a string value, it is converted into a string. If str is NULL, the function returns NULL.
  |
 LENGTH(str)
  |
|
 LISTAGG
  |
 LISTAGG() is a simplified version of GROUP\_CONCAT(). The first argument is required, and is the string to be concatenated. The second argument is optional, and is the separator string. If not set, the separator is the empty string.
  |
 LISTAGG(str1[,sep])
  |
|
 LOWER
  |
 Returns the string str with all characters changed to lowercase.
  |
 LOWER(str)
  |
|
 LPAD
  |
 Returns the string str, left-padded with the string padstr to a length of len characters. If str is longer than len, the return value is shortened to len characters.
  |
 LPAD(str, len, padstr)
  |
|
 LTRIM
  |
 Returns the string str with leading space characters removed.
  |
 LTRIM(str)
  |
|
 REGEXP\_LIKE
  |
 Performs a pattern match of a string expression str against a pattern pat. The pattern can be an extended regular expression. The optional flags argument is a string that may contain any or all the following characters specifying how to perform matching:


 c: Case-sensitive matching.


 i: Case-insensitive matching.


 m: Multiple-line mode.


 n: The . character matches line terminators.
  |
 REGEXP\_LIKE(str,pat[,flags])
  |
|
 REGEXP\_REPLACE
  |
 Replaces occurrences in the string str that match the regular str specified by the pattern pat with the replacement string repl, and returns the resulting string. If str, pat, or repl is NULL, the return value is NULL. The optional flags argument behaves as it does in REGEXP\_LIKE().
  |
 REGEXP\_REPLACE(str,pat,repl[,flags])
  |
|
 REPLACE
  |
 Returns the string str with all occurrences of the string from\_str replaced by the string to\_str. REPLACE() performs a case-sensitive match when searching for from\_str.
  |
 REPLACE(str,from\_str,to\_str)
  |
|
 RIGHT
  |
 Returns the rightmost len characters from the string str, or NULL if any argument is NULL.
  |
 RIGHT(str,len)
  |
|
 SPLIT\_PART
  |
 Returns the Nth substring of str split by sep. If N is zero or smaller, returns null. If there are fewer than N substrings after str has been split by the given separator, returns empty string.


 Example:


 SPLIT\_PART('a~|bc~cb|d|e', '|~', 2) = "bc~cb"
  |
 SPLIT\_PART(str,sep,N)
  |
|
 STR\_CLEAN
  |
 Replaces NULL values in str with the empty string, and removes all non-whitespace control characters. These are a subset of the operations performed by STR\_NORMALIZE().
  |
 STR\_CLEAN(str)
  |
|
 STR\_CONTAINS
  |
 Returns TRUE if the string str contains the string search, FALSE if it does not, or NULL if either argument is NULL.
  |
 STR\_CONTAINS(str, search)
  |
|
 STR\_DIGITS
  |
 Returns a new string consisting of only the digit characters in str in the order they appear. Converse of STR\_REMOVE\_DIGITS().
  |
 STR\_DIGITS(str)
  |
|
 STR\_ENDS\_WITH
  |
 Returns TRUE if the string str ends with the string search, FALSE if it does not, or NULL if either argument is NULL.
  |
 STR\_ENDS\_WITH(str, search)
  |
|
 STR\_NORMALIZE
  |
 Normalizes str by performing the following operations:


 1. NULL values in str are replaced with the empty string.


 2. Leading and trailing whitespace characters are removed.


 3. All other sequences of one or more whitespace characters are replaced with a single space ('' '').


 4. All non-whitespace control characters are removed.


 This is the more thorough version of STR\_CLEAN().
  |
 STR\_NORMALIZE(str)
  |
|
 STR\_REMOVE\_DIGITS
  |
 Returns str with all digit characters removed. Converse of STR\_DIGITS().
  |
 STR\_REMOVE\_DIGITS(str)
  |
|
 STR\_STARTS\_WITH
  |
 Returns TRUE if the string str starts with the string search, FALSE if it does not, or NULL if either argument is NULL.
  |
 STR\_STARTS\_WITH(str, search)
  |
|
 STRING
  |
 Returns the value of expr converted to a STRING. Locale, timezone, and date-format settings all affect this behavior.
  |
 STRING(expr), CAST(expr AS STRING)
  |
|
 SUBSTRING
  |
 The forms without a len argument return a substring from string str starting at position pos.


 The forms with a len argument return a substring len characters long from string str, starting at position pos.


 It is also possible to use a negative value for pos. In this case, the beginning of the substring is pos characters from the end of the string, rather than the beginning. A negative value may be used for pos in any of the forms of this function.


 By default, the position of the first character in the string from which the substring is to be extracted is reckoned as 1. If any argument is NULL, returns NULL.
  |
 SUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len), SUBSTRING(str FROM pos FOR len)
  |
|
 UCASE
  |
 UCASE() is a synonym for UPPER().
  |
 UCASE(str)
  |
|
 UPPER
  |
 Returns the string str with all characters changed to uppercase.
  |
 UPPER(str)
  |


 Date and Time Functions
=========================


|
**Function**
 |
**Description**
 |
**Example**
 |
|
 ADDDATE
  |
 When invoked with the INTERVAL form of the second argument, ADDDATE() is a synonym for DATE\_ADD(). The related function SUBDATE() is a synonym for DATE\_SUB(). For information on the INTERVAL unit argument, see the description for DATE\_ADD().


 When invoked with the days form of the second argument, Magic ETL treats it as an integer number of days to be added to expr.
  |
 ADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)
  |
|
 ADDTIME
  |
 ADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time or datetime expression, and expr2 is a time expression.
  |
 ADDTIME(expr1,expr2)
  |
|
 CONVERT\_TZ
  |
 CONVERT\_TZ() converts the datetime value dt to a new moment in time such that the original value''s wall-clock time when rendered in from\_tz matches the new value''s wall-clock time when rendered in to\_tz.
  |
 CONVERT\_TZ(dt,from\_tz,to\_tz)
  |
|
 CURDATE
  |
 Returns the current date. For long-running executions, this is the date that the execution began.
  |
 CURDATE()
  |
|
 CURDATETIME
  |
 CURDATETIME() is a synonym for CURRENT\_TIMESTAMP().
  |
 CURDATETIME()
  |
|
 CURRENT\_DATE
  |
 Synonym for CURDATE().
  |
 CURRENT\_DATE()
  |
|
 CURRENT\_TIME
  |
 Synonym for CURTIME().
  |
 CURRENT\_TIME()
  |
|
 CURRENT\_TIMESTAMP
  |
 Returns the current timestamp (date & time). For long-running executions, this is the timestamp of the beginning of the execution.
  |
 CURRENT\_TIMESTAMP()
  |
|
 CURTIME
  |
 Returns the current time as a duration since the start of the current day. For long-running executions, this is the time that the execution began.
  |
 CURTIME()
  |
|
 DATE
  |
 Converts expr to a calendar date consisting of a year, month, and day.
  |
 DATE(expr), CAST(expr AS DATE)
  |
|
 DATEDIFF
  |
 Returns the number of days between two dates from datetime values.
  |
 DATEDIFF(CURRENT\_DATE(), `lastmoddate`)
  |
|
 DATE\_ADD
  |
 Performs date arithmetic. The date argument specifies the starting date or datetime value. expr is an expression specifying the interval value to be added or subtracted from the starting date. expr may start with a "-" for negative intervals. unit is a keyword indicating the units in which the expression should be interpreted. Permitted units are YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, and MILLISECOND.


 See also DATE\_SUB().
  |
 DATE\_ADD(date,INTERVAL expr unit)
  |
|
 DATE\_FORMAT
  |
 Formats the date value according to the format string.


 The language used for the names is controlled by the Locale setting.


 The options that can be used by DATE\_FORMAT(), as well as its inverse STR\_TO\_DATE() and the FROM\_UNIXTIME() function, are: %a: Short weekday name in current locale.


 %b: Short form month name in current locale.


 %c: Month with 1 or 2 digits.


 %d: Day with 2 digits.


 %e: Day with 1 or 2 digits.


 %f: Sub seconds 6 digits.


 %H: Hour with 2 digits between 00-23.


 %h: Hour with 2 digits between 01-12.


 %I: Hour with 2 digits between 01-12.


 %i: Minute with 2 digits.


 %j: Day of the year (001-366)


 %k: Hour with 1 digits between 0-23.


 %l: Hour with 1 digits between 1-12.


 %M: Full month name in current locale.


 %m: Month with 2 digits.


 %r: Time in 12 hour format, followed by AM/PM. Short for ''%I:%i:%S %p''.


 %S: Seconds with 2 digits.


 %s: Seconds with 2 digits.


 %T: Time in 24 hour format. Short for ''%H:%i:%S''.


 %U: Week number (00-53), when first day of the week is Sunday.


 %u: Week number (00-53), when first day of the week is Monday.


 %V: Week number (01-53), when first day of the week is Sunday. Used with %X.


 %v: Week number (01-53), when first day of the week is Monday. Used with %x.


 %W: Full weekday name in current locale.


 %w: Day of the week. 0 = Sunday, 6 = Saturday.


 %X: Year with 4 digits when first day of the week is Sunday. Used with %V.


 %x: Year with 4 digits when first day of the week is Monday. Used with %v.


 %Y: Year with 4 digits.


 %y: Year with 2 digits.


 %#: For str\_to\_date(), skip all numbers.


 %.: For str\_to\_date(), skip all punctation characters.


 %@: For str\_to\_date(), skip all alpha characters.


 %%: A literal % character.
  |
 DATE\_FORMAT(date, format)
  |
|
 DATE\_SUB
  |
 Performs date arithmetic. The date argument specifies the starting date or datetime value. expr is an expression specifying the interval value to be added or subtracted from the starting date. expr is a string; it may start with a "-" for negative intervals. unit is a keyword indicating the units in which the expression should be interpreted. See DATE\_ADD() for a complete list of permitted units.
  |
 DATE\_SUB(date,INTERVAL expr unit)
  |
|
 DATE\_TRUNC
  |
 DATE\_TRUNC() is almost a synonym for TIMESTAMP\_TRUNC(), but its argument order is flipped for compatibility reasons. See TIMESTAMP\_TRUNC() for the description.
  |
 DATE\_TRUNC(precision, date)
  |
|
 DATE\_WORKING\_DIFF
  |
 Returns the number of days between the dates expr1 and expr2, excluding weekends (Saturdays and Sundays). The result is negative if expr1 is after expr2.
  |
 DATE\_WORKING\_DIFF(expr1,expr2)
  |
|
 DATEDIFF
  |
 DATEDIFF() returns (expr1 – expr2) expressed as a value in days from one date to the other. expr1 and expr2 are date or date-and-time expressions. Only the date parts of the values are used in the calculation.
  |
 DATEDIFF(expr1,expr2)
  |
|
 DATETIME
  |
 Returns the value of expr converted to a DATETIME type, consisting of a year, month, day, hour, minute, second, and millisecond.
  |
 DATETIME(expr), CAST(expr AS DATETIME)
  |
|
 DAY
  |
 DAY() is a synonym for DAYOFMONTH().
  |
 DAY(date)
  |
|
 DAYNAME
  |
 Returns the name of the weekday for date. The language used for the name is controlled by the Locale setting.
  |
 DAYNAME(date)
  |
|
 DAYOFMONTH
  |
 Returns the day of the month for date, in the range 1 to 31.
  |
 DAYOFMONTH(date)
  |
|
 DAYOFWEEK
  |
 Returns the day of the week index for the date (1 = Sunday, 2 = Monday, ..., 7 = Saturday). These index values correspond to the ODBC standard.


 This contrasts with WEEKDAY() which follows a different index numbering (0 = Monday, 1 = Tuesday, ... 6 = Sunday).
  |
 DAYOFWEEK(date)
  |
|
 DAYOFYEAR
  |
 Returns the day of the year for date, in the range 1 to 366.
  |
 DAYOFYEAR(date)
  |
|
 DURATION
  |
 Returns the value of expr converted to a DURATION, consisting of hours, minutes, seconds, and milliseconds.
  |
 DURATION(expr), CAST(expr AS DURATION)
  |
|
 FROM\_DAYS
  |
 Given a day number N, returns a DATE value. The day count is based on the number of days from the start of the standard calendar.


 The function is not designed for use with dates before the advent of the Gregorian calendar in October 1582. Results will not be reliable since it doesn''t account for the lost days when the calendar changed from the Julian calendar.


 This is the converse of the TO\_DAYS() function.
  |
 FROM\_DAYS(N)
  |
|
 FROM\_UNIXTIME
  |
 Given a day number N, returns a DATE value. The day count is based on the number of days from the start of the standard calendar.


 The function is not designed for use with dates before the advent of the Gregorian calendar in October 1582. Results will not be reliable since it doesn''t account for the lost days when the calendar changed from the Julian calendar.


 This is the converse of the TO\_DAYS() function.
  |
 FROM\_DAYS(N)
  |
|
 HOUR
  |
 Returns the hour for time. The range of the return value is 0 to 23.
  |
 HOUR(time)
  |
|
 LAST\_DAY
  |
 Takes a date or datetime value and returns the corresponding value for the last day of the month.
  |
 LAST\_DAY(date)
  |
|
 MICROSECOND
  |
 Returns the microseconds from the datetime expression expr as a number in the range from 0 to 999999.
  |
 MICROSECOND(expr)
  |
|
 MILLISECOND
  |
 Returns the milliseconds from the datetime expression expr as a number in the range from 0 to 999.
  |
 MILLISECOND(expr)
  |
|
 MINUTE
  |
 Returns the minute of the datetime argument, in the range 0 to 59.
  |
 MINUTE(time)
  |
|
 MONTH
  |
 Returns the month for date in the range 1 to 12 for January to December.
  |
 MONTH(date)
  |
|
 MONTHNAME
  |
 Returns the full name of the month for date. The language used for the name is controlled by the Locale setting.
  |
 MONTHNAME(date)
  |
|
 NOW
  |
 Synonym for CURRENT\_TIMESTAMP().
  |
 NOW()
  |
|
 PERIOD\_ADD
  |
 Adds N months to period P. P is an integer in the format YYMM or YYYYMM. If P contains a two-digit year, values from 00 to 69 are converted to from 2000 to 2069, while values from 70 are converted to 1970 upwards.


 Returns an integer value in the format YYYYMM.
  |
 PERIOD\_ADD(P,N)
  |
|
 PERIOD\_DIFF
  |
 Returns the number of months between periods P1 and P2. P1 and P2 can be in the format YYMM or YYYYMM, and are integer values.


 If P1 or P2 contains a two-digit year, values from 00 to 69 are converted to from 2000 to 2069, while values from 70 are converted to 1970 upwards.
  |
 PERIOD\_DIFF(P1,P2)
  |
|
 QUARTER
  |
 Returns the quarter of the year for date, in the range 1 to 4. Returns NULL if the given value is NULL.
  |
 QUARTER(date)
  |
|
 SEC\_TO\_TIME
  |
 Returns the seconds argument, converted to hours, minutes, and seconds, as a TIME value.
  |
 SEC\_TO\_TIME(seconds)
  |
|
 SECOND
  |
 Returns the second for a given time in the range 0 to 59.
  |
 SECOND(time)
  |
|
 STR\_TO\_DATE
  |
 This is the inverse of the DATE\_FORMAT() function. It takes a string str and a format string format. STR\_TO\_DATE() returns a DATETIME value.


 The format that can be used by STR\_TO\_DATE() is described in the description of DATE\_FORMAT().
  |
 STR\_TO\_DATE(str,format)
  |
|
 SUBDATE
  |
 When invoked with the INTERVAL form of the second argument, SUBDATE() is a synonym for DATE\_SUB(). See DATE\_ADD() for a complete list of permitted units.


 The second form allows the use of an integer value for days. In such cases, it is interpreted as the number of days to be subtracted from the date or datetime expression expr.
  |
 SUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)
  |
|
 SUBTIME
  |
 SUBTIME() returns expr1 - expr2 expressed as a value of the same type as expr1. expr1 is a time or datetime expression, and expr2 is a time expression.
  |
 SUBTIME(expr1,expr2)
  |
|
 SYSDATE
  |
 Synonym for CURRENT\_TIMESTAMP().
  |
 SYSDATE()
  |
|
 TIME
  |
 Converts expr to a duration (TIME-type) consisting of hours, minutes, seconds, and milliseconds.
  |
 TIME(expr)
  |
|
 TIME\_FORMAT
  |
 This is used like the DATE\_FORMAT() function, but the format string may contain format specifiers only for hours, minutes, and seconds. Other specifiers produce a NULL value or 0.
  |
 TIME\_FORMAT(time,format)
  |
|
 TIME\_TO\_SEC
  |
 Returns the time argument, converted to seconds.
  |
 TIME\_TO\_SEC(time)
  |
|
 TIMEDIFF
  |
 TIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and expr2 are time or date-and-time expressions, but both must be of the same type.
  |
 TIMEDIFF(expr1,expr2)
  |
|
 TIMESTAMP
  |
 Converts expr to a timestamp (DATETIME-type) consisting of year, month, day, hour, minute, second, and millisecond.
  |
 TIMESTAMP(expr)
  |
|
 TIMESTAMP\_TRUNC
  |
 Truncates timestamp to the given precision, or to the day if no precision is specified. The result is of type DATE if timestamp is a DATE, otherwise it has type DATETIME. The value of precision is a constant string matching one of the following:


 Millennium: MILLENNIUM


 Century: CENTURY


 Year: YEAR


 ISO Year: ISOYEAR


 Quarter: QUARTER


 Month: MONTH


 Same weekday as first day of year: YEARWEEK


 Same weekday as first day of ISO year: ISOWEEK


 Same weekday as first day of month: MONTHWEEK


 First day of week according to current Locale setting: WEEK


 Day (the default): DAY


 Hour: HOUR


 Minute: MINUTE


 Second: SECOND


 Millisecond: MILLISECOND


 Microsecond: MICROSECOND
  |
 TIMESTAMP\_TRUNC


 TRUNC(timestamp[,precision])
  |
|
 TO\_DAYS
  |
 Given a date date, returns the number of days since the start of the current calendar.


 The function is not designed for use with dates before the advent of the Gregorian calendar in October 1582. Results will not be reliable since it doesn''t account for the lost days when the calendar changed from the Julian calendar.


 This is the converse of the FROM\_DAYS() function.
  |
 TO\_DAYS(date)
  |
|
 TODAY
  |
 TODAY() is a synonym for CURDATE().
  |
 TODAY()
  |
|
 TRIM
  |
 Returns the string str with all remstr prefixes or suffixes removed. If none of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is assumed. remstr is optional and, if not specified, spaces are removed.
  |
 TRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr FROM] str)
  |
|
 TRUNC
  |
 TRUNC() is a synonym for TIMESTAMP\_TRUNC(). It is not to be confused with TRUNCATE(), which operates on numeric values.
  |
 TRUNC(timestamp[,precision])
  |
|
 UNIX\_TIMESTAMP
  |
 If called with no argument, returns a Unix timestamp (seconds since ''1970-01-01 00:00:00'' UTC) as an unsigned integer. If UNIX\_TIMESTAMP() is called with a date argument, it returns the value of the argument as seconds since ''1970-01-01 00:00:00'' UTC. date may be a DATE, a DATETIME, or a date string. The server interprets date as a value in the current time zone and converts it to an internal value in UTC. Clients can set their time zone in Magic action settings, DataFlow settings, or customer settings.


 The inverse function of UNIX\_TIMESTAMP() is FROM\_UNIXTIME().
  |
 UNIX\_TIMESTAMP(), UNIX\_TIMESTAMP(date)
  |
|
 WEEK
  |
 This function returns the week number for date. The two-argument form of WEEK() allows you to specify whether the week starts on Sunday or Monday and whether the return value should be in the range from 0 to 53 or from 1 to 53. If the mode argument is omitted, the value of the default\_week\_format system variable is used. Modes are as follows:


 0: First day is Sunday, range is 0-53, first week has a Sunday in this year.


 1: First day is Monday, range is 0-53, first week has more than 3 days this year.


 2: First day is Sunday, range is 1-53, first week has a Sunday in this year.


 3: First day is Monday, range is 1-53, first week has more than 3 days this year.


 4: First day is Sunday, range is 0-53, first week has more than 3 days this year.


 5: First day is Monday, range is 0-53, first week has a Monday in this year.


 6: First day is Sunday, range is 1-53, first week has more than 3 days this year.


 7: First day is Monday, range is 1-53, first week has a Monday in this year.
  |
 WEEK(date[,mode])
  |
|
 WEEKDAY
  |
 Returns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 = Sunday).


 This contrasts with DAYOFWEEK() which follows the ODBC standard (1 = Sunday, 2 = Monday, ..., 7 = Saturday).
  |
 WEEKDAY(date)
  |
|
 WEEKOFYEAR
  |
 WEEKOFYEAR() is a synonym for WEEK().
  |
 WEEKOFYEAR(date[,mode])
  |
|
 YEAR
  |
 Returns the year for the given date, in the range 0 to 9999.
  |
 YEAR(date)
  |
|
 YEARWEEK
  |
 Returns year and week for a date. The mode argument works exactly like the mode argument to WEEK(). The year in the result may be different from the year in the date argument for the first and the last week of the year.
  |
 YEARWEEK(date), YEARWEEK(date,mode)
  |
|
 LOCALE
  |
 For debugging purposes. Returns the Locale setting for this context. This setting controls the behavior of functions like DAYNAME().
  |
 @@LOCALE
  |
|
 SYSTEM\_LOCALE
  |
 For debugging purposes. Returns the Locale setting for the DataFlow or, if not set, the customer. This setting controls the behavior of functions like DAYNAME(). This setting might be overridden by an action- or statement-level control (see @@LOCALE).
  |
 @@SYSTEM\_LOCALE
  |
|
 SYSTEM\_TZ
  |
 For debugging purposes. Returns the time zone setting for the DataFlow or, if not set, the customer. This setting controls the behavior of many date- and time-related functions, like STR\_TO\_DATE(). This setting might be overridden by an action- or statement-level control (see @@TZ).
  |
 @@SYSTEM\_TZ
  |
|
 TZ
  |
 For debugging purposes. Returns the time zone setting for this context. This setting controls the behavior of many date- and time-related functions, like STR\_TO\_DATE().
  |
 @@TZ
  |


 System Functions
==================


|
**Function Name**
 |
**Description**
 |
**Example**
 |
|
 DX\_ACTION\_ID
  |
 The system ID of the action executing the statement. This is different from @@DX\_ACTION\_NAME.
  |
 @@DX\_ACTION\_ID
  |
|
 DX\_ACTION\_NAME
  |
 The user-provided name of the action executing the statement. This is different from @@DX\_ACTION\_ID.
  |
 @@DX\_ACTION\_NAME
  |
|
 DX\_DATAFLOW\_ID
  |
 The numeric ID of the DataFlow executing the statement, or NULL if the statement is not being executed by a saved DataFlow. This is different from @@DX\_DATAFLOW\_NAME.
  |
 @@DX\_DATAFLOW\_ID
  |
|
 DX\_DATAFLOW\_NAME
  |
 The user-provided name of the DataFlow executing the statement, or NULL if the statement is not being executed by a DataFlow. This is different from @@DX\_DATAFLOW\_ID.
  |
 @@DX\_DATAFLOW\_NAME
  |
|
 DX\_ENGINE
  |
 The execution engine, e.g. MAGIC.
  |
 @@DX\_ENGINE
  |
|
 DX\_EXECUTION\_ID
  |
 The numeric ID of the current DataFlow execution, or null if the statement is not being executed as part of a DataFlow execution. Note that these IDs are not sequential for a given DataFlow, but are guaranteed to be larger than the IDs of executions started earlier.
  |
 @@DX\_EXECUTION\_ID
  |
|
 DX\_IS\_PREVIEW
  |
 TRUE if the statement is being executed as part of a DataFlow preview, otherwise FALSE.
  |
 @@DX\_IS\_PREVIEW
  |


