"
Simple Multilevel Models with nlme 

Intercept Only

"
library(nlme)

Achieve <- read.table('./Datasets/Achieve.csv', header=TRUE, sep=',')

model3.0 <- lme (fixed= geread~1 , random = ~1| school, data = Achieve)

summary(model3.0)

" Adding independent variable"

model3.1 <- lme(fixed= geread~gevocab , random = ~1| school, data = Achieve)


summary(model3.1)

"
What if school size also had something to do with the predictor variable.
add at level 2
"

model3.2 <- lme(fixed = geread~gevocab + senroll, random = ~1|school, data = Achieve)

summary(model3.2)

"
Allowing for geovocab to be both fixed and random
"



model3.3 <- lme(fixed = geread~gevocab, random = ~gevocab|school, data = Achieve)

summary(model3.3)
fir







