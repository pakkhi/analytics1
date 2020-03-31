 round(2,4271)
mean(1:10) 
#a=1:10
b<-mean(a)#making objects(functions) code remains light
c=round(b)
print(b)
print(c)

#args(function.name) - returns the arguments a function take
function (x, digits = 0) #function(the data we are applying f(x)to, digits after the decimal (optional))
round(1.344, digits=2) 
#both will return same answer even if the sequence is different since we specified digits =2
round(digits = 2, 1.344)


#-----BUILDING A FUNCTION----------
  
deck = c("captain", "ambassador", "duke","contessa","assasin")
print(deck)

hand = sample(deck, size=3, replace=T) #replace allow similar looking card to be drawn
print(hand)

draw= function(){
  deck = c("captain", "ambassador", "duke","contessa","assasin")
  hand = sample(deck, size=3, replace=T)
  print(hand)
}

draw()


#vector recycling a vector acts as a matrice...and functions are applied elemnt wise but in case one matrice is bigger than the other ...R applies the function to first group of same no only
vec = 2:5
vic = 1:4
h= vec + vic
#but what if they are different
vec = 2:10
print(h)

#naming a vector
age = c(23,24,25,26)
attributes(age)
names(age)
names(age)= c("george", "john","paul","ringo")
age
names(age)= NULL

#indexing the vector
n.deck=c(6,7,8,9,10)
deck

deck[4]
deck[-4]
deck[c(1,3,5)]

names(n.deck)=deck
n.deck

n.deck["contessa"]
n.deck[c("contessa","duke")]

#slicing -a sequence of consecutive numbers using colon

n.deck[3:5]
lv= seq(10,100, by=10)
lv
lv[-(4:7)]
lv[lv>30]







#dimensions

a=seq(10,120,by=10)
a
dim(a)=c(3,4)#creates a matrix
a
class(a)#gives different for above two functions first is a numeric while dimensions is making it a matrix
typeof(a)
