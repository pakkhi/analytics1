#modelling
#linear Regression - simple, Multiple
#y - x1 (SLR); y~x1 + x2 ...(MLR)
#y - Dependent variable , x - independent

head(women)
#y - weight, x- height
cor(women$height, women$weight) #strength and direction of relation
cov(women$height, women$weight) #correlation tells us direction of relationship here it is positive if height increase weight increase
plot(women$height, women$weight)

fit1= lm(weight~height, data=women) #lm is a command is to perform linear modelling ~used to say weight dependent on height
summary(fit1)
#f stats value is much less than 0.05 : linear model exist
#at least one independent variable is significant in predicting dependent variable

#multiple Rsquare= .991 Coeff of Determinantion ---when only one indep var then this is used
#multiple - when u have one indep var , otherwise take Adj Rsq
#99% of the variation in Y is explained by Xs
# y=mx+c : y = -87 +3.45*height = -87.51667 is giving answer
range(women$height)
#we can only do interpolation not exterpolation - that is predicting future or using data outside
#star means that variable is significant in predicting ...only not even a single star means that no signicant
women$weight
(women = -87 +3.45*  women$height) # will give predicted weights for actual heights
fitted(fit1) #same function for predicting the actual heights i had
residuals(fit1) #difference between predicted and actual weights
summary(fit1) #summary of model
summary(residuals(fit1))# helps us to know the gap between actual and predicted
summary(students$marks1)
(newdata1= data.frame(height = c(60.4, 55.9,77))) # this height dat must be same as we have given
(p1 = predict(fit1, newdata = newdata1, type = 'response')) #predic this function type is used in mlinear modelling
cbind(newdata1, p1)

# actual commands for linear modelling can be summarised in following manners
fit2= lm(cyl~vs, data= mtcars)
summary(fit2)
(p2 = predict(fit2,newdata = data.frame(vs= c(0,0,1) , type= 'response')))

#check for assumption of plot
plot(fit1)
plot(fit2)
