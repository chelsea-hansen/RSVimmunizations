% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_model.R
\name{fit_model}
\alias{fit_model}
\title{Fit model parameters}
\usage{
fit_model(time_series, age_dist, parmset, yinit, yinit.vector)
}
\arguments{
\item{time_series}{An RSV hospitalization/ED visit time series}

\item{age_dist}{The proportion of RSV hospitalizations in each age group (age groups include: <6 months,6-11 months,1-4 years,5-59 years, 60+ years)}

\item{parmset}{A list of fixed parameters (retrieved in the get_data function)}

\item{yinit}{A matrix of compartment initial values (retrieved from get_data function)}

\item{yinit.vector}{A vector of compartment initial values (retrieved from get_data function)}
}
\value{
A list of fitted parameter values. Prints a plot showing the fitted model.
}
\description{
Fit model parameters
}
\examples{
dat = get_data(state_or_county="state",state_abbr="CA",county_name=NULL)
parmset=dat[[1]]
yinit=dat[[2]]
yinit.vector=dat[[3]]
weekly_rsv = round(timeseries[which(timeseries$state=="CA"),"value"])
fitLL = fit_model(time_series = weekly_rsv, age_dist = c(.19,.11,.15,.25,.30),
parmset=parmset,yinit=yinit,yinit.vector=yinit.vector)
}
