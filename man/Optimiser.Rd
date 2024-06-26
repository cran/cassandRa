% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Optimiser.R
\name{Optimiser}
\alias{Optimiser}
\title{Optimiser wrapper for network models}
\usage{
Optimiser(
  i = NULL,
  maxit = 10000,
  method = "Nelder-Mead",
  A,
  N_p,
  fixedSt_P = c(),
  N_unif_P = 0,
  func,
  ExtraSettings = NULL
)
}
\arguments{
\item{i}{RNG Seed to set}

\item{maxit}{Maximum number of iterations to be passed to optim (default is 10000)}

\item{method}{Optimiser method to pass to optim. Default is}

\item{A}{Interaction Presence-Absence matrix}

\item{N_p}{Number of parameters to draw from a normal distribution}

\item{fixedSt_P}{Vector of fixed parameters to pass}

\item{N_unif_P}{Number of parameters to take from a uniform distribution}

\item{func}{Function to optimiser}

\item{ExtraSettings}{Additional setting to pass to control}
}
\value{
A 'fit' object form optim, with a few of the input parameters attached.
}
\description{
Optimiser wrapper for network models
}
