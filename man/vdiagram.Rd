% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sig-vdiagram.R
\docType{methods}
\name{vdiagram}
\alias{vdiagram}
\alias{vdiagram,character-method}
\alias{vdiagram,list-method}
\title{v-diagram report}
\usage{
vdiagram(data, ...)

\S4method{vdiagram}{list}(data, ...)

\S4method{vdiagram}{character}(data, ...)
}
\arguments{
\item{data}{local data (as list) or URL}

\item{...}{addtional params passed to GET or authenticateUser}
}
\examples{
library(jsonlite)
library(gsplot)
json_file <- system.file('extdata','vdiagram','vdiagram-example.json', package = 'repgen')
data <-fromJSON(json_file)
vdiagram(data, 'Author Name')
\dontrun{
url <- paste0('http://nwissddvasvis01.cr.usgs.gov/service/timeseries/reports/swreviewvdiagram/?',
'station=01350000&dischargeIdentifier=Discharge.ft\%5E3\%2Fs&stageIdentifier=',
 'Gage+height.ft.Work.DD002&dailyDischargeIdentifier=', 
 'Discharge.ft\%5E3\%2Fs.Mean&ratingModelIdentifier=Gage+height-Discharge.STGQ&waterYear=2014')
vdiagram(data = url, verbose = TRUE) # plot to screen with auth
}
}

