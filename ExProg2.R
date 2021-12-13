my_data <- read.csv("./sample_data.csv")
summary(my_data)
new_score <- readline(prompt="Enter new score for Mike: ")
my_data[5,2] <- as.numeric(new_score)
summary(my_data)

write.csv(my_data,"./outfile")

