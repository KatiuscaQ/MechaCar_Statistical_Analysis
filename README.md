# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Definition:
“In statistics, linear regression is a linear approach to modelling the relationship between a scalar response and one or more explanatory variables. The case of one explanatory variable is called simple linear regression; for more than one, the process is called multiple linear regression.” *-source: https://en.wikipedia.org/wiki/Linear_regression*

### Goal:
In this case the goal is to survey the relationship between the MPG (miles per gallon) performance in comparison with:

•	vehicle_length

•	vehicle_weight

•	spoiler_angle

•	ground_clearance

•	AWD

### Results:

The following is the line equation:

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/line_equation.PNG)
 
In the analysis of the relationship between the mpg and the other five factors mentioned before, the formula will be looking as follow:
`mpg = b + [(m1* vehicle_length) + (m2* vehicle_weight) + (m3* spoiler_angle) + (m4* ground_clearance) + (m5*AWD)] `

After performing the linear regression using the lm function on RStudio the previous formula can get updated for the following formula (screenshot of RStudio results below):

`mpg = -104 + [(6.267* vehicle_length) + (0.001* vehicle_weight) + (0.069*spoiler_angle) + (3.546* ground_clearance) + (-3.411*AWD)]`

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/LinearReg.PNG)
 
In order to have the p-value and the r-square value the summary function was applied to the lm function and the results are as follow:

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/LinearRegSummary.PNG)
 
R-squared= 0.71 or 71%

p-value= 5.35e-11

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Based on the results the Vehicle length and the ground clearance variables provided a non-random variance to the mpg.

A simple linear approach modelling was produced for each variable in order to understand their relationship with the mpg:

#### MPG vs Vehicle_length
The following image shows the summary of the linear model between “mpg and vehicle_length”

Ha= Vehicle length affects the mpg performance

Ho= Vehicle length does not affect the mpg performance

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Sum-mpg_vs_vlength.PNG)
 
With a p-value= 2.632e-06 compared to a normal significance level of 0.05 there is enough evidence to reject the null hypothesis.

#### MPG vs Vehicle_weight
The following image shows the summary of the linear model between “mpg and vehicle_weight”

Ha= Vehicle weight affects the mpg performance

Ho= Vehicle weight does not affect the mpg performance

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Sum-mpg_vs_vweight.PNG)
 
In this case with a p-value of 0.5311 > 0.05 significance level, there is not enough evidence to reject the null hypothesis. This could be a random variance. Notice the slope in this linear regression is 7.649e-04, it is so small that it could be conclude that there is no relationship between the weight of a vehicle and the mpg performance.

#### MPG vs Spoiler_angle
The following image shows the summary of the linear model between “mpg and spoiler_angle”

Ha= Spoiler angle affects the mpg performance

Ho= Spoiler angle does not affect the mpg performance

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Sum-mpg_vs_spoiler.PNG)
 
In this case p-value is 0.8858 and when being compared with the 0.05 significance level, it is safe to say that there is not enough evidence to reject the null hypothesis. Also, the slope is -0.01659 indicating that there is no correlation between the two variables. This could be a random variance.

#### MPG vs Ground_clearance
The following image shows the summary of the linear model between “mpg and ground_clearance”

Ha= Ground clearance affects the mpg performance

Ho= Ground clearance does not affect the mpg performance

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Sum-mpg_vs_groundc.PNG)
 
This linear model produced a p-value= 0.01975 which is lower than 0.05, this result gives enough evidence to reject the null hypothesis.  The ground clearance variable provided a non-random amount of variance to the mpg values.

#### MPG vs AWD
The following image shows the summary of the linear model between “mpg and AWD”

Ha= AWD affects the mpg performance

Ho= AWD does not affect the mpg performance

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Sum-mpg_vs_awd.PNG)
 
This result shows a p-value equal to 0.3264 which is higher that the 0.05 significance level. There is not enough evidence to reject the null hypothesis. Also, notice the “slope” of this model is vertical which means when y = 1, then x = 0, and 1/0 is undefined.

### Is the slope of the linear model considered to be zero? Why or why not?

A slope equal to zero means that there is no relationship between variables (or at least a significant relationship). At the same time the null hypothesis declares that the slope is equal to zero. 

The p-value of this multiple linear model is 5.35e-11 which is remarkably lower than significance level 0.05, with this result there is enough evidence to reject the null hypothesis and simultaneously there is enough evidence to say that the slope of the multiple linear model is not considered to be zero. 

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

**R-squered:** “is the proportion of the variance in the dependent variable that is predictable from the independent variable(s).” *-source: https://en.wikipedia.org/wiki/Coefficient_of_determination*

“R-squared, otherwise known as R² typically has a value in the range of 0 through to 1. A value of 1 indicates that predictions are identical to the observed values; it is not possible to have a value of R² of more than 1. A value of 0 indicates that there is no linear relationship between the observed and predicted values, where “linear” in this context means that it is still possible that there is a non-linear relationship between the observed and predicted values. Finally, a value of 0.5 means that half of the variance in the outcome variable is explained by the model. Sometimes the R² is presented as a percentage (e.g., 50%).” *-source: https://www.displayr.com/what-is-r-squared/*

Having the previous concepts clearly explained and knowing that the R-squared value of this multiple linear model is 0.71 or 71%, it is safe to say that the model effectively predicts the mpg of MechaCar prototypes since around 71% of the variance in the mpg is explained by this model.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 

The following table shows the total summary of the suspention Coil data frame:
 
![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.PNG)

After seen these results for all the manufacturing lots one can conclude that the current manufacturing data meet the design specifications which dictate that the variance of the suspension coil must not exceed 100psi.

The next table shows a slightly different story:
 
![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_summary.PNG)

In this dataframe the Suspension Coil table has been grouped by the manufacturing lot. The design specifications for the MechaCar says that the variance of the suspension coil must not exceed 100psi, Lot 1 and Lot 2 are 0.98psi and 7.47psi respectively, both lots comply with the design specifications, however Lot 3 has a variance of 170.27psi which is out of spec. 

## T-Test on Suspension Coils
Four t-test were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The following image shows the results of the t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
 
![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/onesample_t-test.PNG)

The p-value from this test is 0.06 which is more than 0.05, with this result there is not enough evidence to reject the null hypothesis, this means the PSI across all manufacturing lots is NOT statistically different from the population mean of 1,500psi.

The following image shows the results of three t-tests performed for each manufacturing lot, in order to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500psi
 
![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/mfgLots_onesample_t-test.PNG)

**Results of t-test Lot1 vs PSI:** the p-value is 1 > 0.05, there is not enough evidence to reject the null hypothesis, this means the PSI from manufacturing lot number 1 (Lot1) is NOT statistically different from the population mean of 1,500psi.

**Results of t-test Lot2 vs PSI:** the p-value is 0.6072 > 0.05, there is not enough evidence to reject the null hypothesis, this means the PSI from Lot 2 is NOT statistically different from the population mean of 1,500psi.

**Results of t-test Lot3 vs PSI:** the p-value is 0.04168 < 0.05, there is enough evidence to accept the null hypothesis, this means the PSI from manufacturing Lot 3 is statistically different from the population mean of 1,500psi.

Following a boxplot to show more visually the differences between the manufacturing lots and the data distribution of each one of them when compared to the PSI:

![](https://github.com/KatiuscaQ/MechaCar_Statistical_Analysis/blob/main/Resources/mfgLot_vs_PSI.PNG) 

*Observation: there are definitely more outliers in Lot 3 than the other two lots*

## Study Design: MechaCar vs Competition

How will MechaCar compared against other car manufacturers? 

The following statistical study can quantify how the company stands compared to other manufacturers 

### Metrics to be tested:
Data would be collected from across different car companies and from the MechaCar itself in order to compared the following:

**Price of a car:** this will be the dependent variable (y variable)
**City or highway fuel efficiency:** independent variable (x variable).
**Horsepower:** independent variable (x variable).
**Maintenance cost:** independent variable (x variable).
**Engine type:** independent variable (x variable).
**Safety rating:** independent variable (x variable).

### Null hypothesis (Ho) and an alternative hypothesis (Ha):

Ho= MechaCar cars are not priced better than other car companies. 

Ha= MechaCar cars are priced better than other car companies.

### Statistical test 
**Simple Linear Regression:** this test would be considered for comparing the relationships between two quantitative variables.
Is there a relationship between the price of a car and its horsepower? Does the price increase, decrease, or there is no relationship?

**Multiple Linear Regression:** “How much variance in the dependent variable is accounted for in a linear combination of independent variables?” -*source: Stats_Cheat_Sheet.pdf*

Do the engine type and the safety rating have correlation with the price of a vehicle?

**ANOVA:** “Is there a statistical difference between the distribution means from multiple samples?” *-source: Stats_Cheat_Sheet.pdf*

Having data from other car manufacturers and the data from MechaCar, the analysis of variance (ANOVA) could be used to determine if there is a statistically significant difference between the means of two or more car manufactures.

### Data needed to run the statistical test
Data from other car manufacturers is needed to run the statistical tests mentioned above.

