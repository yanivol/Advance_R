
CreatePlot <- function(cnty){
  dat <- read.csv("data/gapminder.csv", header = TRUE)
  subData <- subset(dat, dat$country == cnty, header = TRUE )
  plot(subData$year,subData$gdpPercap,xlab = "Year", ylab = "GDP", main = cnty)
}



Cuntry_input <- c('Algeria', 'Afghanistan', 'Israel')

for(x in Cuntry_input){
  
  CreatePlot(x)
}



dat <- read.csv("data/gapminder.csv", header = TRUE)
conlist <- c('Asia' ,  'Africa' , 'Americas')
for (x in conlist){
datCon <- subset(dat,dat$continent == x)
print(x)
print(mean(datCon$lifeExp))
print(min(datCon$lifeExp))
print(max(datCon$lifeExp))
}

hist(dat$lifeExp)
hist(dat$lifeExp,breaks = 100)