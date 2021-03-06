% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_functions.R
\name{fars_map_state}
\alias{fars_map_state}
\title{Map FARS Crash Fatalities}
\usage{
fars_map_state(state.num, year)
}
\arguments{
\item{state.num}{Two digit FARS state reference number.}

\item{year}{Two digit year, coerced to integer.}
}
\value{
This function produces a plot of the fatal crashes on a map of the state.
}
\description{
Reads a Fatality Analysis Reporting System (FARS) file and plots a map of fatal crashes.
}
\note{
If the \code{state.num} provided is not in the FARS file, an error is produced.

If there are no fatal crashes for the state and year, a message is provided.

LONGITUD values > 900 are set to NA, LATITUDE values > 90 are set to NA
}
\examples{
\dontrun{fars_map_state('01','2014')}

}
\references{
FARS data: \url{https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars};
State reference numbers: \url{https://crashstats.nhtsa.dot.gov} see publication 812296
}

