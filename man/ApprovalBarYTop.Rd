% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-shared.R
\name{ApprovalBarYTop}
\alias{ApprovalBarYTop}
\title{Compute top position of approval bars.}
\usage{
ApprovalBarYTop(lim, ylog, reverse)
}
\arguments{
\item{lim}{The y-axis real interval, as two element vector.}

\item{ylog}{A Boolean, indicating whether the y-axis is log_10 scale:
TRUE => log_10; FALSE => linear.}

\item{reverse}{A Boolean, indicating whether the y-axis is inverted:
TRUE => inverted y-axis; FALSE => not inverted.}
}
\value{
Approval bar, vertical top extent, in world coordinates.
}
\description{
Compute top position of approval bars.
}

