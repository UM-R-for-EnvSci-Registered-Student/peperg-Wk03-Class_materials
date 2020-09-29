###########################################################################
######################      R for Env Sci - Week 03    ####################
###################             04_Useful_tools        ####################
###########################################################################

## Let's start with a black slate - Let's re-start the R session
## CAREFUL!!! do it at your own risk!

# Ctrl + Shift + Fn + F10  (PC / Linux)
# Command + Shift + Fn+ F10 (Mac OS)


# Sequences and repetition -------------------------------------------------


?seq()  # let's learn about the seq() function

d_1 <- 1:10
d_1


d_2 <- seq(from = 1, to = 15, by = 1.5)
d_2

length(d_2)

d_3 <- seq(from = -10, to = 10, length.out = 15)
d_3

seq(-10, 10, length = 15)

length(d_3)

?rep()  # Lets learn about the rep() fucntion

d_4 <- rep(5, 10)
d_4

length(d_4)


rep("Hello",10)
rep("Gene X", 10)

column_name <- c(rep("Gene X", 10), rep("Gene Y",10))


?cbind()  # we will see improved versions of these in the Tydiverse soon!

xx <- cbind(d_1, d_2)  # If strating with named vectors, it produces a named matrix! Not quite a dataframe, confusing, i know
xx

class(xx)
str(xx)
dimnames(xx)

yy <- rbind(d_1, d_2)
yy

class(yy)
str(yy)
dimnames(yy)


zz <- t(yy)  # you can transpose (flip) a matrix or data frame
zz

dim(xx); dim(yy); dim(zz)


# What happens if i try to "bind" objects of different dimmesnios?

d_1 

d_6 <- c(1, 2, 3)  

cbind(d_1, d_6)  # It doesnt work. But.... Is it only because not same length?

d_7 <- c(1,2,3,4,5)  

cbind(d_1, d_7)  # This one "works" because it is divisible! but BE CAREFUL!!!!


