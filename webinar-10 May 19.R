#webinar - 10 may 2019

mtcars
head(mtcars)
version
#https://cran.r-project.org/bin/windows/base/R-3.6.0-win.exe
#https://download1.rstudio.org/desktop/windows/RStudio-1.2.1335.exe
  
women
mtcars
?women
?mtcars

class(mtcars)
head(mtcars)
tail(mtcars)
str(mtcars)
dim(mtcars)  #dimensions of dataset
?dim
names(mtcars)
row.names(mtcars)
summary(mtcars)

#what to do
#what column is in what data scale
#nominal, ordinal, interval, ratio
head(mtcars)
#vs, am - nominal data
table(mtcars$am)

library(dplyr)    
mtcars %>% group_by(am) %>% tally()
mtcars %>% group_by(am) %>% count()
mtcars %>% group_by(am) %>% summarise(n=n())

table(mtcars$am, mtcars$vs)
table(mtcars$am, mtcars$vs, dnn=c('am','vs'))

mtcars %>% group_by(am,vs) %>% tally()
#tally is basically count which can be used inside an n 

#group by am : find count and mean mileage
mtcars %>% group_by(am) %>% summarise(n=n(),mean (mpg))

#group by cyl : find min horse power and max weight
mtcars %>% group_by(cyl) %>% summarise(n=n(), min(hp), max(wt))

#grouping by cyl and am with mean max min and std  
mtcars %>% group_by(cyl,am) %>% summarise(Total=n(), MINhp=min(hp), MAXwt=max(wt), SDMmpg = sd(mpg))
max(mtcars$wt)
min(mtcars$hp)


#list me all tars with mileage > 25
mtcars[ mtcars$mpg >25, ]
mtcars%>% filter(mpg >25)

#list me all cars with wt >1.5 and gear=4
mtcars %>% filter(wt>1.5 , gear==4)

#list me all cars with wt >1.5 and/or gear=4
mtcars %>% filter(wt>1.5 | gear==4)

#how to select few columns
table(mtcars$cyl, mtcars$gear)
mtcars%>% filter(cyl ==4, gear==4) %>% select(mpg,cyl,gear)
mtcars%>% filter(cyl ==4, gear==4) %>% select(-c(mpg,cyl,gear))
#sort in mpg
mtcars%>% filter(cyl ==6, gear==4) %>% select(mpg,wt,am,cyl,gear) %>% arrange(mpg)
#sort mpg in ascending and hp descending
mtcars %>% arrange(mpg, desc(hp))

#random selection of rows
mtcars %>% sample_n(2)
mtcars %>% sample_frac(.2)#in fraction

#see 4c and 4d files on sir's git
