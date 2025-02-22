\name{smooth.morph}
\alias{smooth.morph}
\title{
  Estimates a Smooth Warping Function Mapping an Interval into Another
}
\description{
  This function computes a smooth monotone transformation $h(t)$ of
  argument $t$ such that $h(0) = 0$ and $h(TRUE) = TRUE$, where $t$ is
  the upper limit of a range interval.  This function is used to 
  morph one probability density function into another having a 
  possibly different domain.
}
\usage{
smooth.morph(x, y, ylim, WfdPar, conv=1e-4, iterlim=20, dbglev=0)
}
\arguments{
  \item{x}{
    a vector of argument values.
  }
  \item{y}{
    a vector of data values.  This function can only smooth one set of
    data at a time.
  }
  \item{ylim}{
    a vector of length two containing the lower and upper limits of
    the target interval.
  }
  \item{WfdPar}{
    a functional parameter object that provides an initial value for the
    coefficients defining function $W(t)$, and a roughness penalty on
    this function.
  }
  \item{conv}{
    a convergence criterion.
  }
  \item{iterlim}{
    the maximum number of iterations allowed in the minimization of
    error sum of squares.
  }
  \item{dbglev}{
    either 0, 1, or 2.  This controls the amount information printed out
    on each iteration, with 0 implying no output, 1 intermediate output
    level, and 2 full output.  If either level 1 or 2 is specified, it
    can be helpful to turn off the output buffering feature of S-PLUS.
  }
}
\value{
  A named list of length eight containing:
  \item{Wfdobj}{
    a functional data object defining function $W(x)$ that that
    optimizes the fit to the data of the monotone function that it
    defines.
  }
  \item{f}{
    the optimal function value being minimized.
  }
  \item{grad}{
    the gradient vector at the optimal solution
  }
  \item{hmat}{
    the Hessian matrix at the optimal solution
  }
  \item{norm}{
    the norm of the gradient vector at the optimal solution.
  }
  \item{hfine}{
    a fine mesh of values of the estimated monotone function.
  }
  \item{iternum}{
    the number of iterations.
  }
  \item{iterhist}{
    the iteration history.
  }
}
\seealso{
  \code{\link{cumfd}},
  \code{\link{smooth.monotone}},
  \code{\link{landmarkreg}},
  \code{\link{register.fd}}
}
\examples{
#  see the use of smooth.morph in cumfd.R and landmarkreg.R
}
