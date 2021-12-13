# Simple R Program demonstrating Lists and Atomic Vectors in R
# Written by Evan Hazzard in R Research Group for IT 327 Fall 2021

mylist <- c(1:5 ,2.5 ,4 ,3 ,6 ,7 ,8 ,9 ,10 ,11 ,TRUE)

boolvec <- c(TRUE ,FALSE , TRUE ,FALSE ,TRUE ,TRUE ,FALSE ,FALSE ,TRUE)

print("List: ")
print(mylist)
print("Atomic Vector: ")
print(boolvec)

print("Mean of List and Atomic Vector: ")
mylist.mean <- mean(mylist)
print(mylist.mean)


boolvec.mean <- mean(boolvec)
print(boolvec.mean)

print("Reversed List and Atomic Vector: ")
print(rev(mylist))
print(rev(boolvec))

