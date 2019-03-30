library(ggplot2)
mtcars
plot(mtcars[,c('wt','mpg')])

ggplot(data = mtcars, mapping = aes(x=wt, y= mpg)) +
geom_point()


ggplot(data = mtcars, mapping = aes(x=wt, y= mpg)) +
  geom_point()+ stat_smooth(method ='lm')
ggplot(data = mtcars, mapping = aes(x= qsec, y = hp)) +
  geom_point() # this line is a predictioon line

#more asthetics
#colour as cyl categories
ggplot(data = mtcars, mapping = aes(x= wt, y= mpg, color = as.factor(cyl) , size = as.factor(gear), shape=as.factor(am))) + 
  geom_point()
#the colour shape size should be in the form of factors in form of levels 
#shape size as discrete value not continuos value

#continuos variable as size
ggplot(data = mtcars, mapping = aes(x=wt, y= mpg, size= qsec)) +geom_point()

#combine asthetics + layers
ggplot(data=mtcars, mapping = aes(x=wt, y= mpg, color = as.factor(cyl))) + geom_point() +stat_smooth(method = 'lm')
# stat smooth create new layer for each colour and each colour represents a different cylinder line 9 different from this as we had defined different colours for cylinder

#faceting- separaing all cylinders..used to plot different cars cylinder separately 
ggplot(data=mtcars, mapping = aes(x=wt, y= mpg, color = as.factor(cyl))) + geom_point() +stat_smooth(method = 'lm') +facet_wrap(~cyl)


ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, color=as.factor(am))) + geom_point() + facet_wrap(~ cyl)
#we can see from this that different colurs of a particular cylinder ...facet as per variable defined

#scale of x free- allow the axis to adjust accordingly so that we can view it in magnified version
ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point() + stat_smooth(method = 'lm') + facet_wrap(~ cyl, scales ='free')
ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point() + stat_smooth(method = 'lm') + facet_wrap(~ cyl, scales ='free_x')

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point() + stat_smooth(method = 'lm') + facet_grid(am~cyl) 

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point() + stat_smooth(method = 'lm') + facet_grid(am~cyl, scales = 'free') 

#histogram
hist(mtcars$mpg)

#Histogram
hist(mtcars$mpg)
ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=3)

g <- ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5)
g
g + xlab('Miles per Gallon')+ylab('Number of Cars')

g1 <- ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5, color='red', fill='green')
g1 + xlab('Miles per Gallon')+ylab('Number of Cars')
#refer last code from ggplot git hub .....https://github.com/dupadhyaya/Rgraphs/blob/master/ggplot/gg%20-%20mtcars.R

