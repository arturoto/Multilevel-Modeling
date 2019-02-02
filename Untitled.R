library(EPSY905R)

#LOAD INTERNAL R DATA SET
data("dataSexHeightWeight")

"
General Linear Model
"

model1 <- lm(weightLB~1, data=data01)
summary(model1)

model2 <- lm(weightLB~heightIN, data=data01)
summary(model2)



anova(model1, model2)

"centering, makes a good amount of difference when
interactions are used"

data01$heightIN_MC = data01$heightIN - mean(data01$heightIN)


mode02a <- lm(weightLB~heightIN_MC, data=data01)
summary(mode02a)


"Wald test t"











