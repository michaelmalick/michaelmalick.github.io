#####################################################################
# Pink Salmon Problem Set
#
# Michael Malick
# 05 Feb 2013
#
#####################################################################
#
# The data for this problem set are contained in the pinks.csv file.
#
# There are four columns of data:
#   - Stock: identifies the pink salmon stock (there are four)
#   - BY: identifies the brood year (i.e., the year of reproduction)
#   - Spawners: The total number of spawners for that stock and brood
#               year
#   - Recruits: The total number of recruits resulting from the
#               spawners identified in the Spawners column
#
#####################################################################



#####################################################################
# PROBLEM 1.
#
# - Read in the pinks.csv data file and assign it the name pinks
#
#####################################################################



#####################################################################
# PROBLEM 2.
#
# - What is the class of the pinks object you just created?
# - What is the class of the Stock column in the pinks object?
# - What is the class of the Spawners column in the pinks object?
#
#####################################################################



#####################################################################
# PROBLEM 3.
#
# - Create four new dataframes, each a subset of the pinks objects.
#   Each new dataframe should only include data for a single stock.
#   Name each new dataframe according to the stock it subsets out.
#   - HINT: you can use the subset() function
#
#####################################################################



#####################################################################
# PROBLEM 4.
#
# - Compute summary statistics for the recruits variable in the pinks
#   dataframe
#   - HINT: use the summary() function
#
# - Compute summary statistics for the recruits variable for each
#   stock separately
#   - HINT: use the dataframes you created in problem 3
#
#####################################################################



#####################################################################
# PROBLEM 5.
#
# - Transform the spawner and recruits variables by dividing them by
#   one million and save them as new columns to the pinks dataframe
#   - HINT: you can create new columns using the syntax:
#     pinks$newcolumn <- newdata
#
#####################################################################



#####################################################################
# PROBLEM 6.
#
# - Create a graphic (use the plot() function) that plots recruits vs.
#   brood year for each stock. That is, the plot should have four
#   lines, one for each stock.
#   - HINT: use the subsets created in problem 3
#   - HINT: you may need to set the ylim in the original plot call
#   - HINT: the lines() function adds lines to an existing plot
#
#####################################################################



#####################################################################
# PROBLEM 7.
#
# - Create a graphic (use the plot() function) that has four plots,
#   each plot should be recruits vs. spawners for a single stock.
#   - HINT: use the mfrow command in the par settings to create
#           multiple plots on a single graphic
#
#####################################################################



#####################################################################
# PROBLEM 8.
#
# - Recreate the plots in problems 6 and 7 using the xyplot()
#   function
#   - HINT: you need to load the lattice library
#
#####################################################################



#####################################################################
# PROBLEM 9.
#
# - Create a boxplot (use the bwplot() function in the lattice
#   package) for recruitment conditioned by stock. That is, there
#   should be four boxes on a single plot, each box representing
#   recruitment for a different stock
#
#####################################################################



#####################################################################
# PROBLEM 10.
#
# - Redo the second part of problem 4 using the by() function
#
#####################################################################



#####################################################################
# PROBLEM 11.
#
# - Redo the second part of problem 4 using a for() loop
#   HINT: save the output to a list
#
#####################################################################



#####################################################################
# PROBLEM 12.
#
# - Write a function that takes as input a vector of spawners and a
#   vector of recruits and produces a plot of recruits vs. spawners.
#
#####################################################################



