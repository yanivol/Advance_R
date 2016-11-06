# read data file 

CreatePlot <- function(cnty){
  data <- read.csv("data/gapminder.csv", header = TRUE)
  subData <- subset(data, data$country == cnty, header = TRUE )
  plot(subData$year,subData$gdpPercap,xlab = "Year", ylab = "GDP", main = cnty)
}

#CreatePlot('Algeria')

Cuntry_input <- c('Algeria', 'Afghanistan', 'Israel')

for(x in Cuntry_input){
  
  CreatePlot(x)
}
