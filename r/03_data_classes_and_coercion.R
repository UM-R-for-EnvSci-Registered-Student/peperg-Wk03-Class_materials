###########################################################################
######################      R for Env Sci - Week 03    ####################
###################      03_Data_classes_and_coercion     #################
###########################################################################

## Let's start with a black slate - Let's re-start the R session
## CAREFUL!!! do it at your own risk!

# Ctrl + Shift + Fn + F10  (PC / Linux)
# Command + Shift + Fn+ F10 (Mac OS)


# Data classes do not mix ------------------------------------------------

a <- 3
a
gene <- "Gene X"
gene

gene*a # try to multiply, it doesn't work -> Key term "non-numeric"

class(a)        # a is a number
class(gene)     # gene is a string of characters



# Coercion ----------------------------------------------------------------

# let's make two vectors, one numeric, one of characters:

numbers <- c(1,2,3,4)
characters <- c("#2", "two", "2nd", "2")

# let's look at them

numbers
characters

# now let's try to convert between classes and see what hapens

as.character(numbers)   

# If we try to make the numeric vector "numbers" into characters. 
# It works! because numbers are ALSO strings!

as.numeric(characters)   

# If we try to turn "characters" into numeric.
# That doesnt quite work... what happned??
# R tries! it does it best... but some things just can't be...



# Factors - A special type ------------------------------------------------


numbers

class(numbers)

characters

class(characters)

as.factor(numbers)        # Turn our numeric vector into factor. Look similar, but new "levels" section
as.factor(characters)     # Turn our character vector into factors

characters_fct <- as.factor(characters)  # so far we have just been asking R to DO things but we have not taken advantage of it to CHANGE things. But you can always KEEP the new product


# Lets create a new vector which is made of factors from the start

factors <- factor(c(10,10,10,20,20,20))

length(factors)

factors

levels(factors)

class(factors)

# you can have factors that disnt show up in any sample

factors <- factor(c(10,10,10,20,20,20), levels = c("10", "20", "30"))


# What would happen if i try to turn this vector into a numeric or a character??

as.character(factors)                
# Ok, that seems to work

as.numeric(factors)                  
# That does not quite work! 
# Even if the factors look like numbers, a factorial vector is not numbers!!
# it provides the ordinal number of each factor. KEEP IN MIND!

as.numeric(as.character(factors))    
# But we can get to where we want to go we just need to be creative



# Can i add elements to a factors vector?

factors

length(factors)

factors[7] <- 30
factors[8] <- 40

