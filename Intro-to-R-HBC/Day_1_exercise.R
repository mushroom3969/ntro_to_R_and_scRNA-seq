# exercises

# y <- 2
# 
# x <- 3
# 
# number = x + y

# Try changing the value of the variable x to 5. What happens to number? 
# -> the global variable changed into the new assigned variable
# 
# y <- 2
# 
# x <- 5
# 
# number = x + y

#   Now try changing the value of variable y to contain the value 10. What do you need to do, to update the variable number? 
# -> run the code containing the variable to update it

# y <- 10
# 
# x <- 3
# 
# number = x + y

# Create a numeric vector and store the vector as a variable called 'glengths'
# Vectors in R are different than vectors in other langauges, Vectors start at 1 instead of 0
# glengths <- c(4.6, 3000, 50000)
# glengths

# # Create a character vector and store the vector as a variable called 'species'
# species <- c("ecoli", "human", "corn")
# species

# Forget to put quotes around corn
# -> object corn not found
# species <- c("ecoli", "human", corn)

#Try to create a vector of numeric and character values by combining the two vectors that we just created (glengths and species). Assign this combined vector to a new variable called combined. Hint: you will need to use the combine c() function to do this. Print the combined vector in the console, what looks different compared to the original vectors?
# -> the vector combined was transformed to represent all strings.
# combined = c(species, glengths)
# combined

# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")

# Turn 'expression' vector into a factor
expression <- factor(expression)

# Exercise
samplegroup <- c("CTL", "CTL", "CTL", "KO", "KO", "KO", "OE", "OE", "OE")
samplegroup <- factor(samplegroup)

# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)
df

#Create a data frame called favorite_books with the following vectors as columns
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
favorite_books <- data.frame(titles, pages)
favorite_books

#Create a data frame called favorite_books with the following vectors as columns:
list1 <- list(species, df, number)
list1

#Create a list called list2 containing species, glengths, and number
list2 <- list(species, glengths, number)
list2

glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning

sqrt(81)

sqrt(glengths)

round(3.14159)

?round
args(round)
example("round")
round(3.14159, digits=2)
round(3.14159, 2)

#exercise
mean(glengths)
test <- c(1, NA, 2, 3, NA, 4)
# result was NA
mean(test, na.rm=TRUE)

sort(glengths)

square_it <- function(x) {
  square <- x * x
  return(square)
}

square_it(5)

# Write a function called multiply_it, which takes two inputs: a numeric value x, and a numeric value y. The function will return the product of these two numeric values, which is x * y. For example, multiply_it(x=4, y=6) will return output 24.

multiply_it <- function(x, y) {
  product <- x * y
  return(product)
}

multiply_it(x=4, y=6)

?read.csv
metadata <- read.csv(file="data/mouse_exp_design.csv")

# OR 
# metadata <- read.csv(file="data/mouse_exp_design.txt")

#exercise

proj_summary <- read.table(file="data/project-summary.txt", header = T, row.names =1)
proj_summary

# header is an important argument we enter, it will convert the header to a row rather than make the first row the column names

metadata
head(metadata)

#exercise 2
# Use the class() function on glengths and metadata, how does the output differ between the two? 
# -> glength is described as a numeric vector and metadata is described as a dataframe
class(glengths)
class(metadata)
#   Use the summary() function on the proj_summary dataframe, what is the median “rRNA_rate”?
# -> 0.03340 
summary(proj_summary)

#   How long is the samplegroup factor?
#->9
length(samplegroup)

#   What are the dimensions of the proj_summary dataframe?
#->8, 9
dim(proj_summary)

#   When you use the rownames() function on metadata, what is the data structure of the output?
# looks like a vector of charactes
rownames(metadata)

#   [Optional] How many elements in (how long is) the output of colnames(proj_summary)? Don’t count, but use another function to determine this.
# ->9
length(rownames(proj_summary))


# Into to R 2022-1-28

metadata<- read.csv(file="data/mouse_exp_design.csv", header = T, row.names =1)
metadata

# header is an important argument we enter, it will convert the header to a row rather than make the first row the column names


