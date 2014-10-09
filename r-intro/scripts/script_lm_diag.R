lm.diag <- function(x, main.title = "Residual Diagnostic Plots") {

# Linear model residual analysis and outlier detection
#
# Gives plots of: 
#   histogram of residuals 
#   qq plot of residuals 
#   residuals vs. fitted 
#   standardized residuals vs fitted 
#   studentized residuals vs fitted 
#   cooks distance vs fitted 
#   leverages vs fitted
#
# Standardized and Studentized are calculated according to MASS
#
# Cooks distances give the influence of a point on all fitted values
#   4/(n-p-1) = poetentially influential 
#
# Leverages give influence of a point on the model fit
#   Leverages over 2p/n are considered influencial
#
# Michael Malick
# October 5, 2007

    require(MASS)
    
    fit <- x$fitted.values
    resd <- x$residuals
    std.resd <- stdres(x) # studentized residuals in Kutner
    stud.resd <- studres(x)
    n <- length(x$residuals)
    p <- length(x$coef)
    x.inf <- influence(x)


    par(mfrow = c(2,4), oma = c(0,0,2,0))

    # histogram
    hist(resd, col = "grey", main = "Histogram of Residuals", 
        xlab = "residuals")

    # qq plot                          
    qqnorm(resd, col = 4)
    qqline(resd, col = 2)

    # residuals plot
    plot(resd ~ fit, col = 4, main = "Residuals vs. Fitted Values", 
        ylab = "Residuals", xlab = "Fitted Values")
    
        abline(h=0, col = 2)


    # standardized residuals plot
    plot(std.resd ~ fit, 
        main = "Standardized Resd. vs Fitted Values", 
        ylab = "Standardized Residuals", xlab = "Fitted Values", 
        col = 4) 
    
        abline(h = 0, col = 2)

    # studentized residuals plot
    plot(stud.resd ~ fit, 
        main = "Studentized Resd. vs Fitted Values", 
        ylab = "Studentized Residuals", xlab = "Fitted Values", 
        col = 4) 
    
        abline(h = 0, col = 2)

    # cooks distance plot
    plot(cooks.distance(x) ~ fit, 
        main = "Cooks Distances vs Fitted Values", 
        ylab = "Cooks Distances", xlab = "Fitted Values", col = 4)
        
        g <- (4/(n-p-1))
        abline (h = g, col = 2)

    # leverages plot
    plot(x.inf$hat ~ fit, main = "Leverages vs Fitted Values", 
        ylab = "Leverages", xlab = "Fitted Values", col = 4)
    
        v <-  ((2*p)/n)
        abline(h = v, col = 2)

    mtext(main.title, line = 0.5, outer = TRUE, cex = 1.3)
}



#####################################################################
# TESTING
#####################################################################
if(FALSE) {
    ## Create some data
    x <- rnorm (25)
    y <- seq(1, 25, 1)
     
    ## Fit linear model
    fit <- lm(x ~ y)

    ## Run diagnostics
    lm.diag(fit)
} 




