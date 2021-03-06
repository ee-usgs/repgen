% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sig-uvhydrograph.R
\docType{methods}
\name{uvhydrograph}
\alias{uvhydrograph}
\alias{uvhydrograph,character-method}
\alias{uvhydrograph,list-method}
\title{UV Hydrograph report}
\usage{
uvhydrograph(data, ...)

\S4method{uvhydrograph}{list}(data, ...)

\S4method{uvhydrograph}{character}(data, ...)
}
\arguments{
\item{data}{local data (as list) or URL}

\item{...}{additional params passed to GET or authenticateUser}
}
\examples{
library(gsplot)
library(jsonlite)
library(lubridate)
library(dplyr)
gwData <- fromJSON(system.file('extdata','uvhydrograph','uvhydro-groundwater.json', package = 'repgen'))
uvhydrograph(gwData, 'Author Name')
\dontrun{
url <- paste0('https://nwissddvasvis01.cr.usgs.gov/service/timeseries/reports/swuvhydrograph/',
'?station=05421682&dischargeIdentifier=Discharge.ft\%5E3\%2Fs&stageIdentifier=',
'Gage+height.ft.Work&dailyDischargeIdentifier=Discharge.ft\%5E3\%2Fs.Mean',
'&ratingModelIdentifier=Gage+height-Discharge.STGQ&waterYear=2011')

# pass in additional params to authenticateUser
uvhydrograph(url, verbose = TRUE, username = 'bbadger', password = '12345')
uvhydrograph(url, 'Author Name')
}
}

