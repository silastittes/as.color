% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.color.R
\name{as.color}
\alias{as.color}
\title{Create a Random Vector of Colors that Correspond to Values in a Vector.}
\usage{
as.color(x, alpha = 0.5)
}
\arguments{
\item{x}{A vector of any class and length that colors should be matched to.}

\item{alpha}{A numeric value between 0 and 1 to control color transparency. Default is value is 0.5.}
}
\value{
as.color returns a vector of hexadecimal colors the same length as the input vector.
}
\description{
Provided a vector of any class, the function will return a set of colors
with the same length and order as the input vector.
}
\examples{
set.seed(12345) #make results reproducible
n <- 100
f <- 5
x <- sort(rnorm(n, mean = 0, sd = 50)) + rnorm(n, mean = 0, sd = 30)
fact <- rep(letters[1:5], each=n/f)
#call to as.color, with char vector
colz <- as.color(fact, alpha = 0.5)
plotx <- as.integer(as.factor(fact))
plot(jitter(plotx), x, col=colz, pch=19, xaxt = "none")
axis(side = 1, at = plotx, labels = fact)
}
