#graphs

mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$cyl, mtcars$am)
mtcars$mpg

#continous data - histogram, boxplot- first quantile third quantile n middle value, size of box represent range or variations in first and last values 
hist(mtcars$mpg)
boxplot(mtcars$mpg, horizontal = T)
boxplot(mpg~gear,data = mtcars,col=1:3)
t1= table(mtcars$gear)
t1
barplot(t1,col=1:3)
barplot(c(10,20,5))#c was given here just to pass some static value as in data was not taken from a table
pie(c(10,20,5))

students
t2 = table(students$college)
barplot(t2)

t3 = table(students$gender)
barplot(t3)
pie(t3)
#now we can export this image to be used in powerpoint
