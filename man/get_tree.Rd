% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tree.R
\name{get_tree}
\alias{get_tree}
\title{Fetches a decision tree}
\usage{
get_tree(object, tree_num)
}
\arguments{
\item{object}{object of class adaboost}

\item{tree_num}{integer describing the tree to get}
}
\value{
object of class rpart
}
\description{
returns a single weak decision tree classifier which is part
of the strong classifier
}
\details{
returns an individual tree from the adaboost object
This can provide the user with some clarity on the 
individual building blocks of the strong classifier
}
\examples{
fakedata <- data.frame( X=c(rnorm(100,0,1),rnorm(100,1,1)), Y=c(rep(0,100),rep(1,100) ) )
fakedata$Y <- factor(fakedata$Y)
test_adaboost <- adaboost(Y~X, fakedata, 10)
tree <- get_tree(test_adaboost,5)
}
\seealso{
\code{\link{adaboost}}
}

