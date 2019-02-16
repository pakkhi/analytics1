#my first r file
#start any comment by putting hasgtag- commentg start by #
women
#control+enter to execute command
?women
?mean
#women was dataset while mean is built in function here we put ?before functio to seek help
mtcars
?mtcars
mean(mtcars$mpg)
mean(mtcars$hp)
names(mtcars)
#to find mean use above function $ is to select the column u want mean for
#names function to remember the names of the columns
colMeans(mtcars)
#to find mean of all columns
rowMeans(mtcars)
head(mtcars,1)
?head
#head function gives first six rows automatically if u dont mention the 1 
tail(mtcars)
#to know the last six rows
head(mtcars,-1)# -1 will give all, except last 1 row
hist(mtcars$mpg) #to draw a histogram for mileges
hist(mtcars$mpg,breaks=3)
tail(mtcars,-1) #to remove first row


#vectors- we created data here unlike what we were doing before using build in data 
x = c(1,2,5,7)
x
class(x) #class tell u type of object like here it is numeric data set
x1 =c(2L, 8L) #see environment tab at right side  L is for--
class(x1)
class(mtcars)
x3 = c('a','B','dhiraj')
x3
class(x3)
x4 = c(true,false,t,f)
x4 = c(TRUE,FALSE,T,F)
x4
(x5= 1:100000) #to directly execute this function put brackets
x5
class(x5)
x6<-2 #same as equal to sign; another way of assignment of value , but there are circumstances where this function can be wrong as we could have mistakenly put space in between
(x7=rnorm(1000))# rnorm is for normal distribution
mean(x7)
sd(x7)
(xl= rnorm(10000000))
plot(density(x7))
hist(x7)
hist(x7, freq=F)# we are putting frequency false then we execute this line only then we 
points(density(x7))

(x9=rnorm(100, mean = 60, sd=10))
?rnorm
hist(x9)           
(hist(x9, freq = F))
points(density(x9))  

library(e1071)
kurtosis(x9)#tells us shape of frequency chart
skewness(x9)#the minus value in kurtosis and skewness it means it is playto 


x8 = runif(100,30,90)
x8
trunc(x8)#it removes the decimal places
round(x8,1)#round off to 1 decimal point or any given point
floor (x8) # dont round off
ceiling(x8) # round off even when 37.2=38 and 37.8=38
x10=ceiling(x8)
x10
mean(x10)
median(x10)
sort(x10)
sort(x10, decreasing=T)
x10[x10 > 60]# the nos int []brackets are showing position of nos
x10[1:10]
x10[20:30]
x10[ -c(1:20)] #-c is removing the first 20 nos.
x10[c(1,5,7)]
#vector are one dimensional one column or one row


#matrices - again a vector but got two rows and columns 
m1 = matrix(1:24, nrow=6)
m1
dim(m1)
m2 = matrix(1:56,ncol=8)#the total nos given must be divisible by columns no.
m2
m3 = matrix(1:24, ncol=6, byrow=T) #now default way of storing data is column wise now we are filling it row wise
m3
colnames(m3)=month.abb[1:6]#r got a month built in so we r using that
m3
rownames(m3)=paste('products',1:4, sep='_') #paste is like concatinate in excel where we combine two strings
m3
rowMeans(m3)
colMeans(m3)
colSums(m3)
rowSums(m3)

x11=-10.23
trunc(x11)
floor(x11)

m1
m1[ ,1:2]
m3
m3[ ,1:2]
m3[c(1:3), ]
m3[1:3, ]
m3[-(1:3), ]
colMeans(m3[c(1,3), ])
m3[ , c('Apr','Jun')]#c is used as we r not using contionus data we r picking some particular value
max(m3)
min(m3)
range(m3)

#questions

#data.frame - combination of data with equal frame
n=30
rollno = paste('F',1:30, sep = '-')
sname = paste('Student',1:30, sep='&')
sname  
rollno
set.seed(1234) # to generate same pattern of data when we execute this again
(gender = sample(c('M','F'),size = n, replace = T)) #we are assigning random value for male and female 
(t1=table(gender))#calculated frequency count
(gender = sample(c('M','F'),size = n, replace = T, prob = c(.7,.3)))# we changed the probability by deafult it was 50-50
#c gives combines value?, [] used for specifying the things inside a function
prop.table(t1) #giving proportion


(college = sample(c('SRCC','FMS','IIM'),size=n, replace=T, prob=c(.4,.3,.3)))
table(college)
(t2=table(college))
prop.table(t2)

#we changed the size to greater than 30 that is 1000 to make the probability more closer to our given values of 40% 30% and 30%



(marks1 = round(rnorm(size=n, mean=60, sd=10),0))
?rnorm #in previous function we r getting an error so check using this what r u doing wrong we found that instead of using size=n we just need to write n 
(marks1 = round(rnorm(n=n, mean=60, sd=10),0))
(marks2= round(rnorm(n=n, mean = 55, sd=15),0))
rollno; sname; gender; college; marks1; marks2
length(gender)


students = data.frame(rollno, sname, gender, college, marks1, marks2)
students
#a matrix should have numeric or _____ ? while the statement we r genrated now can have any kind of values

head(students)
students$rollno
students[ ,c(2,5:6)]
students[ ,c('sname','marks1','marks2')]
str(students)
#by default all characters become factors like rollno is not a factor it is a text string

summary(students)
quantile(students$marks1) #it says person with 40 marks has 0%, till 52.75 has 25% etc
quantile(students$marks1, probs = seq(0,1,.1))
?sequence
#quantile every 25 % as it divides by 4
?seq
seq(1,100,3)# between 1 and100 with gap of 3
#or
seq(from=1, to=100,b=3)


summary(students)
?str

students$rollno = as.character(students$rollno)#we changed the rollno and name from factor to character to make par with excel
students$sname= as.character((students$sname))
str(students)
summary(students)

head(students)
write.csv(students, 'fms.csv', row.names=F)# we created the excel file

students2 = read.csv('fms.csv')
head(students2)

students3 = read.csv(file.choose()) # here when we ctrl plus enter a pop up appear to choose the file froma different path source
library(dplyr)
head(students)
students[students$marks1>60, ]
students[students$gender=='F', ]# when we r checking equality double equality
students[students$gender=='F'| students$college=='SRCC', ] # use pipe for or

#highest from al colleges

students %>% filter(gender=='M') #%>% is pipe operator means send data from one side of pipe to another side of it 
students %>% group_by(gender)%>% summarise(mean(marks1),mean(marks2)) 
students %>% group_by(college) %>% summarise(max(marks1),max(marks2))
students %>% filter(college =='FMS') %>% select(marks1, marks2)
