#objects - store data - revision
bob=7
bob*2
print(bob)

a= 1:10

print(a)
a*2 #operations carried out element wise

#vectors - a sequence of data elements that are of the same type
is.vector(bob)
is.vector(a)
#both are vectors

int = c(5,6,7,8)#but this is displayed as num and not integer hence we use L -ensures numbers to be saved as integers instead of doubles
int = c(5L,6L,7L,8L)
#now it is integer instead of default doubles (stires regular no. like positive,negative,no.without the decimals or after it)
#since object name can be overwritten without warning ls can be used to view all the objects 
ls()

#character type saves data or text value of data either in long /short strings (can even include no. , symbols and letters)
char = c("the answer to", "everything is", 42)#coercion rule - if a vector has one string element(character) all other elements will be converted to strings...like here 42 became character
char1 = c(the answer to, everything is, 42)#use quotations

#boolean data - true false type
spock = c(FALSE, TRUE, F, F, T, FALSE)#use capitals as r is case sensitive
typeof(spock)
#coercion rule- similarily if there is only logical and number type true become 1 and false become 0
spock1 = c(F,1,2,T,34)
typeof(spock1)
