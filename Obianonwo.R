# Title: "Predicting the relationship between Time spent on childcare or home-schooling during the UK’s coronavirus lockdown and psychological distress."
# Analysis type: "Multiple Linear Regression Analysis"
# Author: "Obianonwo chinedu. C" 
# Date: "04/05/2022"
------------------------------------------------------------------------         ------------------------------------------------------------------------
# More like clear the R studio environment
rm(list=ls(all.names = TRUE))

# Packages installed aid analysis and read the .dta file in R
install.packages("rmarkdown")
install.packages("knitr")
install.packages("haven")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("plotly")
install.packages("caret")
install.packages("tidyr")
install.packages("tidyselect")
install.packages("Hmisc")
install.packages("GGally")
install.packages("lessR")
install.packages("parameters")
install.packages("report")
install.packages("equatiomatic")
install.packages("visreg")
install.packages("ggstatsplot")
install.packages("performance")
install.packages("see")
# Import necessary libraries for the analysis 
library(rmarkdown)
library(knitr)
library(haven)
library(tidyverse)
library(ggplot2)
library(tidyr)
library(lessR)
library(GGally)
library(tidyselect)
library(dplyr)
library(parameters)
library(report)
library(equatiomatic)
library(visreg)
library(ggstatsplot)
library(see)
library(performance)

check_model(model2)
# To set the current directory or location of the file
setwd("/Users/obianonwochinedu/Downloads")

# To get the current directory or confirm location of the file
getwd()

# Storing the datasets in variable called data1 and reading the dataset with read_dta function
data1 = read_dta("ca_indresp_w_POLS0010.dta")
data1

# To view the data 
View(data1)
head(data1)
glimpse(data1)

# Number of rows before cleaning the data = 17452
nrow(data1)

# To get the datasets summary
summary(data1)

# Making sure we don't have duplicate value in the data sets
cleared_data <- distinct(data1)
cleared_data

# Checking the columns to know weather it is  Numerical and Categorical 
cleared_data %>% select_if(is.numeric) 

# Just to copy the names of the variables in the data sets
names(data1)

# Choosing the column necessary to concentrate on the Multiple regression analysis
infer_data <- cleared_data %>% select(racel_dv, ca_sex, ca_hhcompa, ca_sclonely_cv,  ca_timechcare, ca_sex, ca_scghq1_dv, ca_smoker, ca_hcond_cv96, ca_auditc3_cv,ca_hhcompb, ca_hhcompc, bornuk_dv )

infer_data

# Reading or viewing the data from different angle
head(infer_data)
 glimpse(infer_data)
str(infer_data)

# Converting Numerical Variable to categorical Variable for the column and vice - versa 

infer_data$ca_hhcompa <- as.factor(infer_data$ca_hhcompa)
infer_data$ca_hhcompb <- as.factor(infer_data$ca_hhcompb)
infer_data$bornuk_dv <- as.factor(infer_data$bornuk_dv)
infer_data$ca_sclonely_cv <- as.factor(infer_data$ca_sclonely_cv)
infer_data$ca_sex <- as.factor(infer_data$ca_sex)
infer_data$ca_smoker <- as.factor(infer_data$ca_smoker) 

infer_data$racel_dv <- as.numeric(infer_data$racel_dv)
infer_data$ca_timechcare <- as.numeric(infer_data$ca_timechcare)
infer_data$ca_scghq1_dv <- as.numeric(infer_data$ca_scghq1_dv)


# Number of rows after cleaning the data = 17452
nrow(cleared_data)

# Fitting Multiple Linear regression 
# ca_sex = "Respondent sex"
# ca_hhcompa = "Household composition - Aged 0-4"
# ca_hhcompb = "Household composition - Aged 5-15"
# ca_hhcompc = "Household composition - Aged 16-18"
# ca_auditc3_cv = "Alcohol frequency last 4 weeks"
# ca_timechcare" = Time spent on childcare or home schooling"
# ca_sclonely_cv = "How often feels lonely"

Fitting_data <- lm(ca_timechcare ~ ca_sex + ca_hhcompa + ca_hhcompb +  ca_scghq1_dv + ca_sclonely_cv, data = infer_data)

# The model would be 
summary(Fitting_data)

# The model would be ANOVA
 Anova_value <- aov(Fitting_data)
 Anova_value
 
# The model would be Anova_summary
summary(Anova_value)

# printing a summary of the model in a nicely formatted way to make the output more readable:
model_parameters(Fitting_data, summary = TRUE)

# printing a summary of the model in a nicely formatted way to make the output more readable:
model_parameters(Anova_value, summary = TRUE)

# Automatically produces reports of  Fitting_data models according to best practices and guidelines:
report(Fitting_data)

# Automatically produces reports of Anova_value models according to best practices and guidelines:
report(Anova_value)

# illustrates the relationships between the Time spent on childcare or home schooling and independent variables in different plots
visreg(Fitting_data)

# illustrates the results in one single plot, with many statistical details:
ggcoefstats(Fitting_data)


check_model(Fitting_data)
