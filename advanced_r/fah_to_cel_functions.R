# function converts  fah to kelvin

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


# function converts  fah to celsuis 
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