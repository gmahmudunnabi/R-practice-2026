
#creating a functions------------


fahrenheit_to_celsius <- function (temp_F) {
  
  temp_C <- (temp_F - 32) * 5/9
  
  return(temp_C)
  
}


celsius_to_kelvin <- function(temp_C) {
  
  temp_K <- temp_C + 273.15
  
  return(temp_K)
}


fahrenheit_to_kelvin <- function(temp_F) {
  
  temp_C <- fahrenheit_to_celsius(temp_F)
  
  temp_K <- celsius_to_kelvin(temp_C)
  
  return(temp_K)
}

fahrenheit_to_kelvin(32.0)

celsius_to_kelvin(fahrenheit_to_celsius(32.0))

#creating a function to combine the vector

vec1 <- c("a", "b")

vec2 <- c("****")


highlight <- function(vec1, vec2){
  
  vec <- c(vec1, vec2)
  
  return(vec)
}

highlight(vec1, vec2)







