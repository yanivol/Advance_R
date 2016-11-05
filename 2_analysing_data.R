# Load our data into gapminder variable.
gapminder <- read.csv(('gapminder-FiveYearData.csv'), header=TRUE)

head(gapminder) # print first few lines of gapminder
class(gapminder) # how is the data stored? data.frame = table
dim(gapminder) # how much data do we have? rows columns 

# Access data. 
#gapminder[rows, columns]
gapminder[1,1] #select single value
gapminder[1,] # select single row
gapminder[1:12,] # select 12 rows
gapminder[1:12, 1:3] # select 12 rows, only 3 columns
gapminder[c(1,13,25), 1:3] # select specific rows, only 3 columns

# What if I did gapminder [,-4]
gapminder[,-4] # remove colum 4
head(gapminder[-1:-12,])

#calculating simple statistics 
pops <- gapminder[,3]
min(pops)
max(pops)
mean(pops)
sd(pops)

# EXERCISE
#Create a new dataform that contains only country names, year, and life expen

New_dat <- gapminder[,c(1,2,5)]
lifexp <- New_dat[,3]
min(lifexp)
max(lifexp)
mean(lifexp)
sd(lifexp)
