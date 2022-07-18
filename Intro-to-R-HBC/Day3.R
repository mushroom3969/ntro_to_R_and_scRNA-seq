animals <-  read.csv(file = "data/animals.csv")

class(animals)

rownames(animals)

nrow(animals)

ncol(animals)

dim(animals)
length(rownames(animals))
#Data wrangling
speed <- animals$speed == "40"
animals$speed[which(animals$speed == 40)]
animals[1,1]
animals$speed[1]

#Return the rows with animals that are the color Tan.

animals$color[which(animals$color == "Tan")]
animals[animals["color"] == "Tan",]

#vector of true and false, where tan is present, corresponds with a row

animals[animals$color =="Tan",] 

# display the color of the animals, 

animals[animals$speed > 50, "color", drop = F]

#change the word gey into gray
animals[animals$color == "Grey", "color"] <-  "Gray"

animals[4,2]

#visualization
load("data/new_metadata.RData")

# this data frame should have 12 rows and 5 columns
View(new_metadata)

library(ggplot2)

ggplot(new_metadata) +
  geom_point(aes(x = age_in_days, y= samplemeans))

ggplot(new_metadata) +
  geom_point(aes(x = age_in_days, y= samplemeans))

ggplot(new_metadata) +
  geom_point(aes(x = age_in_days, y= samplemeans, color = genotype)) 

ggplot(new_metadata) +
  geom_point(aes(x = age_in_days, y= samplemeans, color = genotype,
                 shape=celltype)) 
