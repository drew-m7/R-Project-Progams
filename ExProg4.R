#Program4 by R Language Group for IT 327 R Language Report
#This program will take a sample dataset as input and perform various analysis.
install.packages("psych")
library(psych)
library(aod)
library(ggplot2)
custdata <- read.csv(file = 'storedata_total.csv')
print("Welcome to our customer retention program. In this program you will analyze customer data from an online store and draw statistical conclusions.")
print("1. Summary of the dataset")
print("2. Types of the dataset")
print("3. Basic stats of the dataset")
print("4. Average customer order")
print("5. Histogram of favorite days")
print("6. Exit")
selection <- readline(prompt="Enter your selection: ")

while(selection !=6) {
  result = switch(selection, 
          "1" = summary(custdata),
          "2" = str(custdata),
          "3" = describe(custdata),
          "4" = mean(custdata$avgorder),
          "5" = qplot(custdata$favday)
           )
  print(result)
  selection <- readline(prompt="Enter your selection: ")
}
