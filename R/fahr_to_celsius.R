
# Converting Air Temperatures from F to C and creating a Function

airtemps <- c(212, 30.3, 78, 32)

# copying and pasting all these changes increases chance of error
celsius1 <- (airtemps[1]-32)*5/9
celsius2 <- (airtemps[2]-32)*5/9
celsius3 <- (airtemps[3]-32)*5/9
# lets write a function instead

# Format: function_name <- function(some variable that represents what you want to put into the function){this is the meat of the function}
#  To document the function, put cursor on function, Code -> Insert Roxygen Skeleton

#' Fahrenheit to Celsius
#'
#' @param fahr Temperature in Fahrenheit as a vector
#'
#' @return Temperature in Celsius
#' @export
#'
#' @examples
#' fahr_to_celsius(c(212, 32))
fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}
# this function returns a vector named Celsius
# check to see that our function works
celsius4 <- fahr_to_celsius(airtemps[1])
celsius1 == celsius4

airtemps_c <- fahr_to_celsius(airtemps)
# creates a new vector with airtemps in celsius

# Try to convert from celsius back to fahrenheit
celsius_to_fahr <- function(celsius){
  fahr <- celsius*9/5 + 32
  return(fahr)
}

airtemps_f <- celsius_to_fahr(airtemps_c)
airtemps_f == airtemps


# Create a function that converts all fahrenheit temps to celsius and kelvin
convert_temps <- function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <- celsius + 273.15
  return(data.frame(fahrenheit = fahr, 
              celsius = celsius, 
              kelvin = kelvin))
}

convert_temps(airtemps)
