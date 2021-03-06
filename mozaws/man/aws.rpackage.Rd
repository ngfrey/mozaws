% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/aws.r
\name{aws.rpackage}
\alias{aws.rpackage}
\title{Installs R Packages on the cluster}
\usage{
aws.rpackage(cl, cran = NULL, github = NULL, wait = TRUE)
}
\arguments{
\item{cl}{is the cluster object}

\item{cran}{is a character vector of R packages to install from CRAN}

\item{github}{is a character vector of R packages to install from GitHub}

\item{wait}{wait for package installation to complete}
}
\description{
Installs R Packages on the cluster
}

