# Michiel Blok and Madeleine van Winkel
# 7 January 2015

# Source functions
source('R/is.leap.R')

# Then the actual commands
is.leap("john") # Error in is.leap("john") : argument of class numeric expected
is.leap(1580) # Error in is.leap(1580) : 1580 is out of the valid range
is.leap(2002) # FALSE
is.leap(1900) # FALSE
is.leap(2000) # TRUE
is.leap(2004) # TRUE
