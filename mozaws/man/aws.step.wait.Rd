% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/aws.r
\name{aws.step.wait}
\alias{aws.step.wait}
\title{Waits for a script to run}
\usage{
aws.step.wait(cl, s, verb = TRUE, mon.sec = 5)
}
\arguments{
\item{cl}{is the cluster object returned from \code{aws.clus.create} and friends}

\item{s}{is the script id, which you will find in \code{aws.clus.info()$steps} (most recent first)}

\item{verb}{be chatty?}
}
\description{
Waits for a script to run
}
\details{
This function will return once the step has finished
}

