#' Create a Random Vector of Colors that Correspond to Values in a Vector.
#'
#' Provided a vector of any class, the function will return a set of colors
#' with the same length and order as the input vector.
#' @import tidyverse
#' @param x A vector of any class and length that colors should be matched to.
#' @param alpha A numeric value between 0 and 1 to control color transparency. Default is value is 0.5.
#' @return as.color returns a vector of hexadecimal colors the same length as the input vector.
#' @export
#' @examples
#simple data frame with factors
#' set.seed(12345) #make results reproducible
#' n <- 100
#' f <- 5
#' x <- sort(rnorm(n, mean = 0, sd = 50)) + rnorm(n, mean = 0, sd = 30)
#' fact <- rep(letters[1:5], each=n/f)
#' #call to as.color, with char vector
#' colz <- as.color(fact, alpha = 0.5)
#' plotx <- as.integer(as.factor(fact))
#' plot(jitter(plotx), x, col=colz, pch=19, xaxt = "none")
#' axis(side = 1, at = plotx, labels = fact)

as.color <- function(x, alpha = 0.5){

  #get the number of colors needed
  numcols <- unique(x)

  colseqR <- seq(0, 1, length.out=255)
  colseqG <- seq(0, 1, length.out=255)
  colseqB <- seq(0, 1, length.out=255)

  #check for number of input colors
  if( length(numcols) > 255){
    warning("The input vector requires a large number of colors,
	    some colors will be recycled, or appear extremely similar visually.")
  }

  #create colors
  r <- sample(colseqR, length(numcols), replace = T)
  g <- sample(colseqG, length(numcols), replace = T)
  b <- sample(colseqB, length(numcols), replace = T)
  colz <- rgb(red = r, green = g, blue = b, alpha = alpha)


  tibble(
    x = numcols,
    colz = colz
  ) %>%
    left_join(tibble(x = x), ., by = "x") %>%
    pull(colz)
}
