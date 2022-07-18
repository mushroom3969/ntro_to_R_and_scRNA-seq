# R exercises day 2
# check what libraries are loaded in the current R session

sessionInfo() #Print version information about R, the OS and attached or loaded packages

# OR

search() #Gives a list of attached packages

# run this once to install biocManager
# install.packages("BiocManager")
# BiocManager::repositories()
# BiocManager::install("ggplot2")
# install.packages("tidyverse")

# Load into the library
library(ggplot2)
library(tidyverse)
sessionInfo()
search()

# Dataframes

# Extract value 'Wt'
metadata[1, 1]
# Extract value '1' 
metadata[1, 3] 
# Extract third row
metadata[3, ] 
# Extract third column
metadata[ , 3]   
# Extract third column as a data frame
metadata[ , 3, drop = FALSE] 
# Dataframe containing first two columns
metadata[ , 1:2] 
# Data frame containing first, third and sixth rows
metadata[c(1,3,6), ] 
# Extract the celltype column for the first three samples
metadata[c("sample1", "sample2", "sample3") , "celltype"] 

# Check column names of metadata data frame
colnames(metadata)

# Check row names of metadata data frame
rownames(metadata)

# Extract the genotype column
metadata$genotype 

# Extract the first five values/elements of the genotype column
metadata$genotype[1:5]

#1 Return a data frame with only the genotype and replicate column values for sample2 and sample8.
metadata[c("sample2", "sample8"), c("genotype", "replicate")]

#2 Return the fourth and ninth values of the replicate column.
metadata[c("sample4", "sample9"), "replicate"]

#3 Extract the replicate column as a data frame.
metadata[ ,3, drop = F]

metadata$celltype == "typeA"
logical_idx <- metadata$celltype == "typeA"

metadata[logical_idx, ]

which(metadata$replicate > 1)

idx <- which(metadata$replicate > 1)
metadata[idx, ]
#or use nested below
metadata[which(metadata$replicate > 1), ]

sub_meta <- metadata[which(metadata$replicate > 1), ]

# Subset the metadata dataframe to return only the rows of data with a genotype of KO.
# metadata$genotype == "KO"
# which(metadata$replicate == "KO")
metadata[which(metadata$genotype == "KO"), ]
sub_geno <- metadata[which(metadata$genotype == "KO"), ]

list1[[2]]
comp2 <- list1[[2]]
class(comp2)
comp2 <- list1[[2]]
list1[[1]]
list1[[1]][1]

#Create a list named random with the following components: metadata, age, list1, samplegroup, and number.

random <- list(metadata, age, list1, samplegroup, number)

#Extract the samplegroup component.
random[[4]]

names(list1) 

# Name components of the list
names(list1) <- c("species", "df", "number")

names(list1)

# Extract 'df' component
list1$df

#Let’s practice combining ways to extract data from the data structures we have covered so far:
#Set names for the random list you created in the last exercise.
names(random) <- c("metadata", "age", "list1", "samplegroup", "number")
  
#Extract the age component using the $ notation
random$age
#read file
rpkm_data <- read.csv("data/counts.rpkm.csv")

#check what file looks like
head(rpkm_data)

#check counts of rows and columns in the data
ncol(rpkm_data)
nrow(metadata)

A <- c(1,3,5,7,9,11)   # odd numbers
B <- c(2,4,6,8,10,12)  # even numbers

A %in% B

A <- c(1,3,5,7,9,11)   # odd numbers
B <- c(2,4,6,8,1,5)  # add some odd numbers in 

A %in% B

intersection <- A %in% B
intersection

A[intersection]

any(A %in% B)

all(A %in% B)

# Using the A and B vectors created above, evaluate each element in B to see if there is a match in A

B %in% A
Bintersect <- B %in% A
B[Bintersect]

# Subset the B vector to only return those values that are also in A.
subset_b <- B[Bintersect]
subset_b

A <- c(10,20,30,40,50)
B <- c(50,40,30,20,10)  # same numbers but backwards 

# test to see if each element of A is in B
A %in% B

# test to see if each element of A is in the same position in B
A == B

# use all() to check if they are a perfect match
all(A == B)

x <- rownames(metadata)
y <- colnames(rpkm_data)
all(x %in% y)
#nested function
all(rownames(metadata) %in% colnames(rpkm_data))

#are they in same order?
x == y
all(x == y)

#We have a list of 6 marker genes that we are very interested in. Our goal is to extract count data for these genes using the %in% operator from the rpkm_data data frame, instead of scrolling through rpkm_data and finding them manually. First, let’s create a vector called important_genes with the Ensembl IDs of the 6 genes we are interested in:

important_genes <- c("ENSMUSG00000083700", "ENSMUSG00000080990", "ENSMUSG00000065619", "ENSMUSG00000047945", "ENSMUSG00000081010", "ENSMUSG00000030970")

#Use the %in% operator to determine if all of these genes are present in the row names of the rpkm_data data frame.
important_genes %in% rpkm_data
all(important_genes %in% rpkm_data)

#getting false, will proceed as if it were true since the following questions seem like this was supposed to be true

#Extract the rows from rpkm_data that correspond to these 6 genes using [] and the %in% operator. Double check the row names to ensure that you are extracting the correct rows.

geneintersect <- important_genes %in% rpkm_data
important_genes[geneintersect]
subset_genes <- important_genes[genesintersect]
subset_genes

#view answers on cheatsheet
idx <- metadata$genotype =="KO"
|metadata$genotype =="CTL"
idx
list1[[2]][1,1]


important_genes %in% rownames(rpkm_data)
idx <- which(rownames(rpkm_data) %in% important_genes)
idx
rpkm_data[idx,]

idx <- rownames(rpkm_data) %in% important_genes
ans2 <-  rpkm_data[idx, ]

ans3 <-  rpkm_data[row,]

#Bonus question: Extract the rows from rpkm_data that correspond to these 6 genes using [], but without using the %in% operator.

rpkm_data[rpkm_data == important_genes]

teaching_team <- c("Jihe", "Mary", "Meeta", "Radhika")
# Extracting values from a vector
teaching_team[c(2, 4)] 
teaching_team
# Extracting values and reordering them
teaching_team[c(4, 2)] 
# Extracting all values and reordering them
teaching_team[c(4, 2, 1, 3)]
# Saving the results to a variable
reorder_teach <- teaching_team[c(4, 2, 1, 3)] 

first <- c("A","B","C","D","E")
second <- c("B","D","E","A","C")  # same letters but different order
second_reorder <- second[c(4, 1, 5, 2, 3)]
second_reorder

match(first,second)

# Saving indices for how to reorder `second` to match `first`
reorder_idx <- match(first,second) 
reorder_idx

# Reordering the second vector to match the order of the first vector
second[reorder_idx]

# Reordering and saving the output to a variable
second_reordered <- second[reorder_idx] 

second_reordered

first <- c("A","B","C","D","E")
second <- c("D","B","A")  # remove values

match(first,second)
?match
second[match(first, second)]
# Check row names of the metadata
rownames(metadata)

# Check the column names of the counts data
colnames(rpkm_data)

genomic_idx <- match(rownames(metadata), colnames(rpkm_data))
genomic_idx

# Reorder the counts data frame to have the sample names in the same order as the metadata data frame
rpkm_ordered  <- rpkm_data[ , genomic_idx]

# View the reordered counts
View(rpkm_ordered)

all(rownames(metadata) == colnames(rpkm_ordered))

#After talking with your collaborator, it becomes clear that sample2 and sample9 were actually from a different mouse background than the other samples and should not be part of our analysis. Create a new variable called subset_rpkm that has these columns removed from the rpkm_ordered data frame.
colnames(rpkm_ordered)
colnames(rpkm_ordered[c(1,3,4,5,6,7,9,10,11,12)])

subset_rpkm <- (rpkm_ordered[c(1,3,4,5,6,7,9,10,11,12)])

colnames(subset_rpkm)

#Use the match() function to subset the metadata data frame so that the row names of the metadata data frame match the column names of the subset_rpkm data frame.

newmatch_idx <- match(colnames(subset_rpkm), rownames(metadata))

newmatch_idx

metadata_ordered  <- metadata[newmatch_idx, ]

metadata_ordered

mean(rpkm_ordered$sample1)

library(purrr)  # Load the purrr

samplemeans <- map_dbl(rpkm_ordered, mean) 

samplemeans

# Named vectors have a name assigned to each element instead of just referring to them as indices ([1], [2] and so on)
samplemeans

# Check length of the vector before adding it to the data frame
length(samplemeans)

# Create a numeric vector with ages. Note that there are 12 elements here
age_in_days <- c(40, 32, 38, 35, 41, 32, 34, 26, 28, 28, 30, 32)    

# Add the new vector as the last column to the new_metadata dataframe
new_metadata <- data.frame(metadata, samplemeans, age_in_days) 

# Take a look at the new_metadata object
View(new_metadata)
