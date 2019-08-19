library(ggplot2) # Data visualization
library(plotly) # Interactive data visualizations
library(psych) # Will be used for correlation visualizations
library(rattle) # Graphing decision trees
library(caret) # Machine learning
library(RColorBrewer) #for colors?
library(dplyr) #for data manipulation
library(maps) #for maps?
data <- read.csv("~/GitHub/DSc-Project/Datasets Available/india-air-quality-data/data.csv", header=TRUE)
data <- data[1:1000,] #since the data set was huge(50k entries), i sliced the data to 1000 entries,
View(data)
head(data,n=7) #top 7 rows
tail(data,n=7) #bottom 7 rows

str(data) #It displays the internal structure of an R object and gives a quick overview of the rows and columns of the dataset.

summary(data) #The summary method displays descriptive statistics for every variable in the dataset, depending upon the type of the variable.

scatter.smooth(data$location, data$type)

?density

plot(data$location_monitoring_station,type="o",na.rm = TRUE)
plot(density(data$rspm,na.rm = TRUE))
plot(density(data$so2,na.rm = TRUE))
plot(density(data$no2,na.rm = TRUE))
plot(density(data$pm2_5,na.rm = TRUE))
plot(data)
boxplot(data$no2)
map(database = "india")
?map
