% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sensorreading-styles.R
\name{padTableSRS}
\alias{padTableSRS}
\title{pad a table in mono text}
\usage{
padTableSRS(data, align = "left", space = 16)
}
\arguments{
\item{data}{a data.frame with character data only. 
If \code{row.names} are present, they will be injected 
into the table output.}

\item{align}{a character vector of length 1 or of equal length to the 
number of columns in \code{data}}

\item{space}{a numeric vector of length 1 or of equal length to the 
number of columns in \code{data}. Used to layout the table. Is nchar 
width of a single column}
}
\value{
a character output for the table
}
\description{
create a simple text table
}

