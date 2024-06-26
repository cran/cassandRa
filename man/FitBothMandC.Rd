% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FitBothMandC.R
\name{FitBothMandC}
\alias{FitBothMandC}
\title{Fit Matching-Centrality Model}
\usage{
FitBothMandC(
  list,
  N_runs = 10,
  maxit = 10000,
  method = "Nelder-Mead",
  ExtraSettings = NULL
)
}
\arguments{
\item{list}{Network List}

\item{N_runs}{Number of different start points for k2 and lambda to try. The best (maximum likelihood)
half will be used to construct the probability matrix}

\item{maxit}{Default = 10'000}

\item{method}{Passed to optim, default = 'Nelder-Mead'}

\item{ExtraSettings}{Other control settings to pass to optim()}
}
\value{
Network list with added 'B_par',the best fitting parameters, 'M_ProbsMatrix', the probability matrix
}
\description{
Fit a model that contains both a trait-matching and a centrality term based on Rohr et al. (2016)
}
\references{
Rohr, R.P., Naisbit, R.E., Mazza, C. & Bersier, L.-F. (2016). Matching-centrality
decomposition and the forecasting of new links in networks. Proc. R. Soc. B Biol. Sci., 283, 20152702
}
