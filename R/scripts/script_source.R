#####################################################################
# R-Tutorial To Demonstrace The source() Function
#
# Michael Malick
# 24 Apr 2012
#
#####################################################################



# Create some data
set.seed(10)
x <- rnorm(100) + 2
y <- rnorm(100)

# Set parameters
par(bg = "black", fg = "white", col.axis = "white", col.lab =
"white", col.main = "white")
 
# Plot data
plot(x, type = "l", col = 5, ylim = c(-3,5), ylab = "", xlab = "",
	axes = FALSE)

lines(y, col = 6)
abline(h = 0)
title("Two Random Vectors")
mtext("Noise", side = 2, line = 3)
mtext("Sample", side = 1, line = 3)
axis(side = 1, at = seq(0, 100, 20), pos = -3)
axis(side = 2, at = seq(-3, 5, 1), pos = 0, las = 1)
legend(50, 5.5, legend = c("X", "Y"), horiz = TRUE,
	col = c(5, 6), lty = c(1, 1), lwd = 2, box.lwd = 0, bty = "n")



