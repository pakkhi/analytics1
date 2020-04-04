#building a function
coup = matrix(rep(c("Duke", "Assasssin", "captain", "amassador", "contessa"), 3), ncol = 1)

deal = function(deck){
  cards = deck[1:3, ]
  print(cards)
}
 
deal(deck = coup) #vector(function deck applied in it be = to coup)

cit = matrix(c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","s","o","p","q","r","t","w","z","x"),ncol=1)

deal(cit)

shuffle = function(deck){
  random = sample(1:23, size = 23)
  deck.s = deck[random, , drop = FALSE]
  print(deck.s)
}

shuffle(cit)

#using return


shuffle = function(deck){
  random = sample(1:23, size = 23)
  deck.s = deck[random, , drop = FALSE]
  return(deck.s)
}

deal = function(deck){
  shuffled = shuffle(deck)
  cards = shuffled[1:3, ]
  return(cards)
}
deal(cit)

#default values- are assigned to deal vector
deal = function(deck = matrix(1:23, nrow = 23)){
  shuffled = shuffle(deck)
  cards = shuffled[1:3, ]
  return(cards)
}
deal(cit)
deal()#gives default values
