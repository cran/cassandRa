## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

require(bipartite)
require(cassandRa)
require(purrr)
require(dplyr)
require(tidyr)
require(ggplot2)

## -----------------------------------------------------------------------------
data(Safariland, package= 'bipartite')

Safariland[1:5, 1:2]


## -----------------------------------------------------------------------------
PredictFit <- PredictLinks(Safariland , RepeatModels = 1) # Set to 1 here for speed in the vignette

knitr::kable(head(PredictFit$Predictions), digits = 4 )


## ----fig.height=4, fig.width=8, warning=FALSE---------------------------------
PlotFit(PredictFit, Matrix_to_plot = 'SBM')

PlotFit(PredictFit,
        Matrix_to_plot = c('SBM', 'C_def'),
        Combine = '+',
        OrderBy = 'Degree', 
        title = 'Combined SBM and Coverage Deficit Model') + guides(fill= FALSE, col=FALSE)


## ----fig.height=4, fig.width=8------------------------------------------------

MetricsAfterReSampling<- RarefyNetwork(Safariland, 
                                       n_per_level = 50, # v. small for the vignette
                                       metrics = c('H2', 'nestedness', 'links per species'))

PlotRarefaction(MetricsAfterReSampling)

ComputeCI(MetricsAfterReSampling)


## ----fig.height=8, fig.width=8, message=FALSE---------------------------------
RarefyNetwork(Safariland,
              n_per_level = 50,
              abs_sample_levels = c(500, 1000, 5000),
              metrics = 'info', 
              output = 'plot')

## -----------------------------------------------------------------------------
sessionInfo()

