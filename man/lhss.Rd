% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lhss.R
\name{lhss}
\alias{lhss}
\title{Least-squares heterodistributional subspace search}
\usage{
lhss(
  nu,
  de,
  m = 1,
  sigma = NULL,
  lambda = 1,
  ncenters = nrow(nu),
  centers = NULL,
  maxit = 200
)
}
\arguments{
\item{nu}{Numeric matrix with numerator samples}

\item{de}{Numeric matrix with denominator samples (must have the same
variables as \code{nu})}

\item{m}{Scalar indicating the dimensionality of the reduced subspace}

\item{sigma}{\code{NULL} or a scalar value to determine the bandwidth of the
Gaussian kernel gram matrix. If \code{NULL}, sigma is the median Euclidean
interpoint distance.}

\item{lambda}{\code{NULL} or a scalar value to determine the regularization
imposed on the Gaussian kernel gram matrix of the denominator samples. If
\code{NULL}, \code{lambda} is chosen to be \eqn{\sqrt{N}}.}

\item{ncenters}{Maximum number of Gaussian centers in the kernel gram
matrix. Defaults to all numerator samples.}

\item{centers}{Numeric matrix with the same variables as \code{nu} and
\code{de} that are used as Gaussian centers in the kernel Gram matrix. By
default, the matrix \code{nu} is used as the matrix with Gaussian centers.}

\item{maxit}{Maximum number of iterations in the updating scheme.}
}
\value{
\code{lhss} returns \code{rhat}, the estimated density ratio.
}
\description{
Least-squares heterodistributional subspace search
}
\examples{
set.seed(1)
N <- 1000
X <- cbind(rnorm(N), rnorm(N, 0, 0.5))
Y <- cbind(rnorm(N), sample(rep(c(-1, 1), times = N/2)) + rnorm(N))
out <- lhss(X, Y, m = 1, ncenters = 100)
}
