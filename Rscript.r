library(ggplot2) # Data visualization
library(plotly) # Interactive data visualizations
library(psych) # Will be used for correlation visualizations
library(rattle) # Graphing decision trees
library(caret) # Machine learning
library(RColorBrewer) #for colors?

data <- read.csv("~/GitHub/DSc-Project/Datasets Available/india-air-quality-data/data.csv", header=TRUE)

View(data)
#head(data$) #6 rows
#scatter.smooth(data$location, data$type)

?density

plot(data$location_monitoring_station,type="o")
plot(density(data$rspm,na.rm = TRUE))
plot(density(data$so2,na.rm = TRUE))
plot(density(data$no2,na.rm = TRUE))
plot(density(data$pm2_5,na.rm = TRUE))

