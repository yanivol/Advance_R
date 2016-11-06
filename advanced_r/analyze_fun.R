# arithmetic calculations

2+3

# assingning variable 
x <- 3
x= 3
x
y <- 4
y


# ploting in r

x <- c(1,2,3)
y <- c(3,4,1)
plot(x,y)

# class of variable

class(x)
class(y)

# strings

str<- "this is my script"

class(str)
length(str)

# clear my history

ls()
rm(list = ls())


# functions

# total function

# name of the function
#function statment
#some argument
#body
#return statment (optional)

my_sum <- function(input_1,input_2) {
    tot=input_1 + input_2
    return(tot)
}

# assigning values
input_1=3
input_2=4
input_1 + input_2

# calling a function
my_sum(input_1=2, input_2=4)
my_sum(input_1=5, input_2=5)
my_sum(input_1,input_2)

# native function in R
sum(input_1, input_2)

# converting fah to kelvin

fah_to_kelvin <- function(temp) {
  kelvin<- ((temp-32)*(5/9))+273.15
  return(kelvin)
}
fah_to_kelvin(temp=32)
fah_to_kelvin(32)
# converting kelvin to celsius
kel_to_cel <- function(temp) {
  celsius <- temp-273.15
  return(celsius)
}
kel_to_cel(0)

# write a function that convert fah to celsuis 
fah_to_cel <- function (temp) {
  temp_k<- fah_to_kelvin(temp)
  result<- kel_to_cel(temp_k)
  return(result)
  
}
fah_to_cel(32)

# exrecise 2 
best_practice <- c("write","programs","for","people","not","computers")
asterix <- "***"

# write a function called "fence" that takes two arguments and a new vector 
#somthing like astrix at the begingng and at the end

fence <- function(input1,input2){
  result <- c(input2,input1,input2)
  return(result)
}

fence(input1=best_practice,input2=asterix)


rm(fah_to_cel)
rm(kel_to_cel)
rm(fah_to_kelvin)
# how to call fah_to_cal_functions.R
source("fah_to_cel_functions.R")
fah_to_kelvin(temp=32)
kel_to_cel(0)
fah_to_cel(0)
# now doing somethimg with real data

dir.create("data")#creat a directory
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")

# Read file into...
dat <- read.csv("data/gapminder.csv", header=TRUE) # what if there are more than one headr line in csv file?
head(dat)
summary(dat)
str(dat)

# write a function called analyze that take cuntry as argument and display mean, min, max, lifeExp of that cuntry

# subsetting the df
country_name <- subset(dat, dat$country == "Uganda")
summary(country_name)
# calculate mean min max of lifeExp
mean(country_name[,5])
min(country_name[,5])
max(country_name[,5])

# function now
analyze <- function(count) {
  country_name <- subset(dat, dat$country == count)
  #print(mean(country[,5]))
  #print(min(country[,5]))
  #print(max(country[,5]))
  out <-c("mean_le" = mean(country_name$lifeExp),
          "min_le" = min(country_name$lifeExp),
          "max_le" = max(country_name$lifeExp))
  plot(country_name$year,country_name$lifeExp, xlab = "Year", ylab = "Life Expectancy", main = count)
  
  print(out)
  
  }

analyze("Uganda")
analyze("Japan")
analyze("Albania")




best_practice_fun <- function(some_argument){
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}

best_practice_fun(best_practice)

for (w in best_practice){
  print(w)
}

best_practice_fun2 <- function(some_argument) {
  for (w in best_practice){
    print(w)
  }
}

best_practice_fun2(best_practice)

#generate a file that contains years 1952 and 1997 and name it s gapminder_52_97
# and another file that contains years 1966 and 2007 and name it as gapmained_66_07


gapminder_52_97 <- subset(dat, dat$year == 1952 | dat$year == 1997)
gapminder_67_07 <- subset(dat, dat$year == 1967 | dat$year == 2007)

# write dataset
write.csv(gapminder_52_97, "data/file=gapminder_52_97.csv", quote = FALSE, row.names = FALSE)
write.csv(gapminder_67_07, "data/file=gapminder_67_07.csv", quote = FALSE, row.names = FALSE)

# listing the files with a pattern in a directory
list.files(path = "data", pattern = ".csv", full.names = TRUE)

# write a for loop to print each filename on a different line for the above output

filename <- list.files(path = "data", pattern = ".csv", full.names = TRUE)
 for (w in filename){
   print(w)
 }


# How to take a filename and output a country
 analyze_data <-function(file, new){
   file_out <- read.csv(file, header = TRUE)
   county_name <- subset(file_out, file_out$country == new)
   out2 <- c("Mean_le" = mean(country_name$lifeExp),
             "Min_le" = min(country_name$lifeExp),
             "Max_le" = max(country_name$lifeExp))
   print(out2)
 }



analyze_all <- function(pattern,new) {
  my_filenames <- list.files(path = "data", pattern = pattern, full.names = TRUE)
  for (w in my_filenames){
    analyze_data(w,new)
  }
}

analyze_all(".csv", "Uganda")
  
  
}