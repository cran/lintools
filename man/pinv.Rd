% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinv.R
\name{pinv}
\alias{pinv}
\title{Moore-Penrose pseudoinverse}
\usage{
pinv(A, eps = 1e-08)
}
\arguments{
\item{A}{[numeric] matrix}

\item{eps}{[numeric] tolerance for determining zero singular values}
}
\description{
Compute the pseudoinverse of a matrix using the
SVD-construction
}
\section{Details}{


The Moore-Penrose pseudoinverse (sometimes called the generalized inverse) \eqn{\boldsymbol{A}^+} of a matrix \eqn{\boldsymbol{A}}
has the property that \eqn{\boldsymbol{A}^+\boldsymbol{AA}^+ = \boldsymbol{A}}. It can be constructed as follows.

\itemize{
\item{Compute the singular value decomposition \eqn{\boldsymbol{A} = \boldsymbol{UDV}^T}}
\item{Replace diagonal elements in \eqn{\boldsymbol{D}} of which the absolute values are larger than some limit \code{eps} with their reciprocal values}
\item{Compute \eqn{\boldsymbol{A}^+ = \boldsymbol{UDV}^T}}
}
}

\examples{
A <- matrix(c(
 1,  1, -1,  2,
 2,  2, -1,  3,
 -1, -1,  2, -3
),byrow=TRUE,nrow=3)
# multiply by 55 to retrieve whole numbers
pinv(A) * 55

}
\references{
S Lipshutz and M Lipson (2009) Linear Algebra. In: Schuam's outlines. McGraw-Hill
}
