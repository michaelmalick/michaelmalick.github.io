#####################################################################
# Introduction to R Script
#
# Michael Malick
# 02 Jan 2013
#
# If you are a beginner R user, it is suggested that you work through 
# this script by typing each of the lines not preceded by an # into
# the R console. The more time you spend exploring and experimenting
# with the examples in this script, the faster you will learn the
# basics of R.
#
# NOTE: any line preceded with a # is a comment and is ignored by R
#
#
#####################################################################


# The basic data structure in R is the vector. There are numerous
# ways to create vectors in R. Notice in the code below the <-
# operator is used to assign a vector to a variable name. While the =
# sign can also be used for asignnment, I recommend getting in the
# habit of using <-.

# Assign the number 10 to the variable mm
mm <- 10
mm

# Assign a vector of length 3 to the variable nn
nn <- c(10, 11, 12)
nn

# Assign a sequence of numbers from 1 to 10 to the variable oo
oo <- 1:10
oo

# The assignment operator also works going to the right
1:10 -> oo
oo

# Assign a sequence of numbers from 1 to 10 by 0.5 to pp
pp <- seq(1, 10, 0.5)
pp

# Replicate 99 ten times
qq <- rep(99, 10)
qq

# Vectors can also be composed of other data types. The above vectors
# are all of class 'numeric'. We can also create 'character' vectors
# and 'logical' vectors.
class(pp)

# 'character' vector
rr <- c("A", "B", "C")
rr
class(rr)

# 'logical' vector
ss <- c(TRUE, TRUE, FALSE, TRUE, FALSE)
ss
class(ss)


# Each of the variables we created above are considered objects in R.
# We can view all the objects we created during the R session.
ls()

# If we don't need any of objects anymore we can remove them
rm(mm, nn)
ls()


# In the above examples we use two different functions, seq() and
# rep(). To look at the help pages for these functions we can use
# help() or ?.
help(seq)
?rep


# Vectors can easily be subsetted using brackets 
# Extract the third element of the vector pp 
pp[3]
# Extract the first five elements of the vector pp
pp[1:5]
# We can also extract elements using logical operators
pp[pp > 3]
pp[pp >= 3]

# If we try to extract an element that doesn't exist, R returns an NA,
# which stands for Not Available. R uses NA to designate missing
# values.
oo[11]

# R maintains a history of the commands that are run. You can use the
# up and down arrow keys in the R console to cycle through the
# history. The right assignment -> operator can be useful here.
vector(mode = "numeric", length = 10) 
vector(mode = "numeric", length = 10) -> rr


# R has powerful plotting commands. The workhorse for plotting is the
# plot() function.
?plot()
plot(pp)
plot(pp, col = "blue", pch = 19, xlab = "X", ylab = "Y")



# R can be used as a calculator
2 * pi * 3

# We can also use variables in calculations
r <- 3
2 * pi * r

# Notice that if calculations are not assigned to a object then they
# are only printed to the screen and are not available for later.

# R also does computations on whole vectors (i.e. element by element)
xx <- 1:10
yy <- 11:20
xx + yy
xx / yy
xx * yy



# R has the usual suspects for summarizing data (and many more)
sum(xx)
mean(xx)
sd(xx)
var(xx)
length(xx)
median(xx)
range(xx)
summary(xx)



# Vectors can be members of multi-dimensional matrices and arrays.
# Matrices are 2 dimensional arrays (i.e. rows x columns) where each 
# column and row can be considered a vector. Note that all elements
# in arrays and matrices have to be of the same class, that is all
# objects need to be numberic or character but a mix of the two.
mat <- matrix(1:10, ncol = 2, nrow = 5)
mat

# We can also combine existing vectors into matrices
rbind(xx, yy) # combine by row
cbind(xx, yy) # combine by column


# We can also subset matrices using brackets in the format
# [row, column]
mat[1, 1]
mat[4, ]
mat[ , 2]
mat[2:3, ]
plot(mat[ , 1]) # plot the first column in the matrix


# Besides vectors and multi-dimensional arrays, R has two additional
# data storage structures. Data frames are the most commonly used
# structure to store data. Data frames are similar to matrices in
# that they are two dimensional structures (rows x columns), however,
# they are more flexible than matrices. Data frames allow to have
# diffent classes to be stored in the same object. For example one
# column could be numeric while another column is characters.

xx <- 101:105
yy <- c("A", "A", "B", "B", "C")
zz <- c(20, 34, 65, 78, 29)

dat.fr <- data.frame(xx, yy, zz)
dat.fr

# We can use the names() function to assign names to each column
names(dat.fr) <- c("Var1", "Var2", "Var3")
dat.fr

# If we plot an entire data frame, notice that it creates a
# scatter-plot matrix of all the variables regardless of their class
plot(dat.fr)
plot(dat.fr$xx, dat.fr$zz, col = "green", pch = 19)



# We can subset data frames just like matrices using [row, column]
# indexing or we can extract columns by name using the $ operator
dat.fr[ , 3]
dat.fr$Var3
dat.fr$Var3[3]

# We can also extract elements using logicals. Below we extract
# all rows that have Var3 values greater than 30
dat.fr[dat.fr$Var3 > 30, ]


# The other data storage structure in R is the 'list' (data frames
# are actually a specific type of list). Lists are the most flexible
# storage structure. They allow you to incorporate any type of
# data structure in a single object. For example, a single list may
# contain a data frame, and a matrix.


LL <- list(Part1 = dat.fr, Part2 = mat, Part3 = oo)
LL

# Lists can be subsetted like matrices and data frames
LL$Part2
LL$Part2[2, 2]
LL$Part2[ , 2]

# Double braces can be used instead of the $ operator
LL[[2]]

