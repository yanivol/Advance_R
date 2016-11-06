# read data file 

CreatePlot <- function(cnty){
  data <- read.csv("data/gapminder.csv", header = TRUE)
  subData <- subset(data, data$country = cnty, header = TRUE )
  plot(subData[2],subData[6],xlab = "Year", ylab = "GDP")
}

CreatePlot('Algeria')
#fgf
