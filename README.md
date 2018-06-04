as.color
=======

Really simple function that does what it sounds like. Here is a good example:
    
    library(as.color)
    #simple data frame with factorsset.seed(12345) #make results reproducible
    n <- 100
    f <- 5
    x <- sort(rnorm(n, mean = 0, sd = 50)) + rnorm(n, mean = 0, sd = 30)
    fact <- rep(letters[1:5], each=n/f)
    #call to as.color, with char vector
    colz <- as.color(fact, alpha = 0.5)
    plotx <- as.integer(as.factor(fact))
    plot(jitter(plotx), x, col=colz, pch=19, xaxt = "none")
    axis(side = 1, at = plotx, labels = fact)

