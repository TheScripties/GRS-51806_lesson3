# Michiel Blok and Madeleine van Winkel
# 7 January 2015

# Function to check whether a year is a leap year
is.leap <- function(year) {
# The argument should be numeric
  if(!is.numeric(year)) {
    stop("argument of class numeric expected")
  } else {
    # Our calendar does not take years below 1582 into account
    if(year < 1582) {
      stop(paste(year,"is out of the valid range"))
    } else {
      # All leap years can be divided by 4
      if((year %% 4) != 0){
        answer <- FALSE
      } else {
        # If a year can be divided by 400, it's a leap year
        if ((year %% 400) == 0){
          answer <- TRUE
        } else {
          # If a year can be divided by 4 and 100, but not by 400, it's not a leap year
          if ((year %% 100) == 0) {
            answer = FALSE
          # If a year can be divided by 4, but not by 100 and 400, it's a leap yea
          } else {
            answer = TRUE
            }
          }
        }
      }
    }
  # Print whether year is leap year (TRUE) or not (FALSE)
  print (answer)
}