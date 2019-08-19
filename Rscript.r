library(ggplot2) # Data visualization
library(plotly) # Interactive data visualizations
library(psych) # Will be used for correlation visualizations
library(rattle) # Graphing decision trees
library(caret) # Machine learning

data <- read.csv("~/GitHub/DSc-Project/Datasets Available/india-air-quality-data/data.csv", header=FALSE)
View(data)

head(data) #6 rows
#scatter.smooth(data)
plot(data)
