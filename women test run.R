#model is made on that even prediction done on that so high positive result so divide the data set
women
nrow(women)
sample(1:10, size=.7*10)
dhiraj=sample(1:nrow(women) , size = .7 * nrow(women))
index=sample(1:nrow(women), size =.7*nrow(women))
index
women[index,]
women[-index,]
train = women[dhiraj,]
test = women[-dhiraj,]

fit1 = lm(weight~height, data=train)
summary(fit1)
p4= predict(fit1, newdata= test, type='response')
cbind(predicted=p4, actual= test$weight, height=test$height)
