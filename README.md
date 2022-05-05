# home_schooling_and_pyschological_stress

Predicting the relationship between Time spent on childcare or home-schooling during the UK’s coronavirus lockdown and psychological distress.
PART A: Multiple Linear Regression.
The Observation of the Study
This study was conducted to determine the the relationship between the amount of time spent on childcare or home-schooling during the UK’s coronavirus lockdown and psychological distress.

The Assumption
Regression residuals must be normally distributed.
A linear relationship is assumed between the dependent variable and the independent variables.
The residuals are homoscedastic and approximately rectangular-shaped.
Absence of multicollinearity is assumed in the model, meaning that the independent variables are not too highly correlated.
<img width="756" alt="Screenshot 2022-05-05 at 17 21 17" src="https://user-images.githubusercontent.com/56441231/166968351-56d2e6f5-1129-4b82-8f88-9822f614d5ec.png">



The hypothesis
The hypothesis is that time spent on childcare or home-schooling can be predicted by four or more factors namely Respondent sex, Household composition_a-(Aged 0-4), Household composition_b -(Aged 5-15), Alcohol frequency last 4 weeks, and How often feels lonely. 

 A table containing descriptive statistics is appended. Below Fig 1


The model explains time spent on childcare or home-schooling is statistically significant and substantial proportion of variance R2 for this model is 0.382, which means that 38.2% of the variability of the  time spent on childcare and home schooling and psychological distress in the UK, can be explained by the Respondent sex, Household composition_a-(Aged 0-4), Household composition_b -(Aged 5-15), Alcohol frequency last 4 weeks, and How often feels lonely		 	 	 		
			
The coefficient for Household composition_a -(Aged 0-4) (34.06) indicates that each additional Household composition_a -(Aged 0-4) point increases the time spent on childcare and home schooling and psychological distress by an average of approximately 34.06 while controlling everything else in the model. 
				
The relatively high R2 means that the Respondent sex, Household composition_a-(Aged 0-4), Household composition_b -(Aged 5-15), Alcohol frequency last 4 weeks, and How often feels lonely are good characteristics to explain the  time spent on childcare and home schooling and psychological distress in the UK during coronavirus lockdown.

The effect of ca hhcompa [1] , ca hhcompa [2], ca hhcompb [1], ca hhcompb [2], ca hhcompb [3], ca scghq1 dv, ​​ca sclonely cv [1], ca sclonely cv [2], ca sclonely cv [3] is statistically significant and positive while the effect of ca sclonely cv [-2], ca sclonely cv [-2]  is statistically non-significant and positive.

This table containing descriptive statistics . Fig 2


The model explains time spent on childcare or home-schooling is statistically significant and substantial proportion of variance -  The ANOVA (formula: ca_timechcare ~ ca_sex + ca_hhcompa + ca_hhcompb + ca_scghq1_dv + ca_sclonely_cv) suggests that:

The main effect of ca_sex is statistically significant and small (F(1, 17439) = 241.67, p < .001; Eta2 (partial) = 0.01, 95% CI [0.01, 1.00]).
The main effect of ca_hhcompa is statistically significant and large (F(2, 17439) = 3337.14, p < .001; Eta2 (partial) = 0.28, 95% Confidence Intervals [0.27, 1.00]).
The main effect of ca_hhcompb is statistically significant and large (F(3, 17439) = 1096.54, p < .001; Eta2 (partial) = 0.16, 95% Confidence Intervals [0.15, 1.00]).
 The main effect of ca_scghq1_dv is statistically significant and small (F(1, 17439) = 433.91, p < .001; Eta2 (partial) = 0.02, 95% Confidence Intervals [0.02, 1.00]).
 The main effect of ca_sclonely_cv is statistically significant and very small (F(5, 17439) = 24.82, p < .001; Eta2 (partial) = 7.07e-03, 95%  Confidence Intervals [4.93e-03, 1.00]).
 and suggesting that 38.2% of the variation is predicted by this listed factors.

The meaning of the result 
Adding Respondent sex, Household composition_a-(Aged 0-4), Household composition_b -(Aged 5-15), Alcohol frequency last 4 weeks, and How often feels lonely to the model seems to have made the model better: it reduced the residual variance (the residual sum of squares is 2,145,680), and all the predictors are statistically significant (p-values < 0.001).

The graphical summary of the result 


PART B: Regression Interpretation.
Question 2a
Interpret the model and write a short report on the results and conclusions for employers in Ticino.Question 2bInterpret the model statistically and substantively. Your results section should report on descriptive and statistical findings.Question 2cYour conclusion should discuss whether the results support an effect of changes in exchange rates on the number of hours worked by Italian cross-borders commuters in Ticino. 
Solution 2a
When the Swiss Franc is stronger, more people resident in Lombardy look for jobs in Ticino, and the number of cross-border workers increases and number of hour worked increase more for cross- border workers than for natives workers when the swiss franc appreciates. 

The coefficient becomes statistically significant and increases in magnitude in correspondence with appreciation of the Swiss franc.

The results of the model show that the appreciation in the Swiss franc produces an increase in labour supply flows in Ticino near the Swiss–Italian border, which shows how the interest of Lombardy people towards the EUR/Swiss franc exchange rate increases and is correlated with the volume of job searches in Ticino.


  Source: Swiss Earnings Structure Survey (2004–2012, biennial).
Solution 2b
Descriptive statistics are shown in Table 8. 

The Mean number of hours worked per month, mean age and share of women among hourly paid employees for Swiss and Italian cross-border commuters in Ticino, Switzerland
In order to investigate the intensive labour supply response of cross-border workers, I compare the sensitivity of hours worked to changes in the exchange rate, between Swiss resident and cross-border workers on hourly employees.

 I estimate the following model:
 niy = α + n0CBCi + n1ln ey + n2ln ey  x  0CBCi + n3Yiy + n4Xy + n5Post 2007y+ εiy
 Where:
 CBC = dummy variable for cross-border commuter.
 CBC * ln e = is an interaction term between the dummy and the log of the exchange rate.
 Controls = dummies for sex, age, education level and sector of the firm.
 Yiy = vector of individual control variables: age, sex and education level of the worker, and the firm.
 niy = the log of the monthly (weekly).
 I = number of hours worked.
 Y = the worker interviewed in year.
 ln ey = is the log of the EUR-CHF nominal exchange rate.
 Xy = the log of Lombardy’s unemployment rate.
 Post2007y = the log of the Italian GDP and and include a dummy for the period after 2007.
 ε =  Robust standard error.

The results, which are reported in Table above, show that cross-border workers paid on an hourly basis respond strongly to the Swiss franc appreciation. Specifically, the average number of hours worked increases by 11% more for cross-border workers than for natives when the Swiss franc appreciates by 10%. The coefficient of the interaction term in the column regarding wage workers is also significant but closer to 0

Solution 2c
In conclusion It is reasonable to assume that the introduction of free movement of persons enabled cross-border employees to fully respond to fluctuations in the EUR/CHF exchange rate, which made Swiss wages increasingly appealing to Italian workers.

results suggest that the average number of hours worked by cross-border workers paid on an hourly basis increases when the purchasing power of their wages in their home country increases. 

Finally, I found that the results suggest that Italian workers responded to exchange-rate variations by increasing their labour supply in Switzerland.  I find that the interaction term is negative and statistically significant.


