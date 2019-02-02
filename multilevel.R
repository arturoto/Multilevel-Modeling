library(nlme)

"
Simple Linear Model

Starting with Null Model. A model that has no independant variables. This model is useful for
obtaining estimates of the residual and intercept variance when only clustering is considered.
"

Achieve <- read.table('/Users/atorres/desktop/Multilevel-Modeling/Datasets/Achieve.csv', header=TRUE, sep=',')

model3.0 <- lme(fixed= geread~1, random = ~1|school, data=Achieve)
summary(model3.0)
"
output:
Linear mixed-effects model fit by REML
 Data: Achieve 
    AIC      BIC    logLik
46274.31 46296.03 -23134.15

Random effects:
Formula: ~1 | school
(Intercept) Residual
StdDev:   0.6257119  2.24611

Fixed effects: geread ~ 1 
              Value  Std.Error    DF t-value p-value
(Intercept) 4.306753 0.05497501 10160 78.3402       0

Standardized Within-Group Residuals:
      Min         Q1        Med         Q3        Max 
-2.3229469 -0.6377948 -0.2137753  0.2849664  3.8811630 

Number of Observations: 10320
Number of Groups: 160 
"

"
From the above model, the AIC and BIC will be the useful when comparing models with more IV's.
Also:
sigma^2, the variance among the individuals 
tao^2, the variance among the clusters.

These values can be used to calculate the ICC, roh1: 

from the StandDev:
0.6257119^2/(0.6257119^2 + 2.24611^2) = ICC = .072

^^ the correlation of reading test scores among students within the same school is approx .07
"
