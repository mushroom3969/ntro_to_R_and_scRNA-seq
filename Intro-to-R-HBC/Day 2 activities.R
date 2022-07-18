# create a function to convert f to c
f_to_c <- function(temp_f) {
  temp_c <- (temp_f-32)*5/9
  return(temp_c)
}

c_to_k <- function(temp_c) {
  temp_k = temp_c + 273.15 
  return(temp_k)
}

c_to_k(0)

# nesting functions to gain multiple calculations from one value
c_to_k(f_to_c(32))

age <- c(15, 22, 45, 52, 73, 81)
# age in the 5th element
age[5]

# age in elements 1 through 5
age[-5]

## nested
age[c(3,5,6)]  

## lists every element that we want in the combined function. you cannot just give the indices that you want age[3,5,6] because vectors are 1 dimensional objects. R resisters the comma as a different dimension

## OR

## you can create a vector first with the combined function and use that to select the indices you care about within another vector
# idx <- c(3,5,6) # create vector of the elements of interest
# age[idx]

# age in elements 1 through 4
age[1:4]

alphabets <- c("C", "D", "X", "L", "F")
alphabets[c(1, 2, 5)]
alphabets[-3]
alphabets[5:1]

# logical
age > 50
# if element is greater than 50, = T, if not true = F

# displays ages that are greater than 50
age[age > 50]

# over 50, less than 18
age > 50 | age < 18

age

age[age > 50 | age < 18]  ## nested

# OR

## create a vector first then select
idx <- age > 50 | age < 18
age[idx]

which(age > 50 | age < 18)
age[which(age > 50 | age < 18)] ## nested

# OR

## create a vector first then select
idx_num <- which(age > 50 | age < 18)
age[idx_num]

# Factor
expression[expression == "high"]    ## This will only return those elements in the factor equal to "high"

expression

# select the levels of high specifically
#== logical expression of equal
expression == "high"

samplegroup

str(expression)
samplegroup[samplegroup!="KO"]

#levels is an argument and you can specify how you want the expression to be re-leveled

# leveling can be important if you want to restructure your data so that statistical tool can recognize and use the correct groups in the analysis.
expression <- factor(expression, levels=c("low", "medium", "high"))     # you can re-factor a factor 


