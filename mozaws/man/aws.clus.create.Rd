% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/aws.r
\name{aws.clus.create}
\alias{aws.clus.create}
\title{Create a cluster}
\usage{
aws.clus.create(name = NULL, workers = NULL, master = NULL,
  hadoopops = NULL, timeout = NULL, verbose = FALSE, emrfs = FALSE,
  steps = NULL, bsactions = NULL, wait = TRUE, spark = FALSE,
  enableDebug = FALSE, applications = c("Spark", "Hive", "Zeppelin",
  "Hadoop"), spotForCore = NULL, opts = NULL)
}
\arguments{
\item{name}{is the name of the cluster, if not provided one will be created for you}

\item{workers}{defines the workers, see details}

\item{master}{defines master , see details}

\item{hadoopops}{options that overide 'hadoopops' from aws.options()}

\item{timeout}{over timeout from the options (minutes)}

\item{verbose}{be catty?}

\item{emrfs}{turns on emrfs and consistency}

\item{steps}{a list of character vector of EMR 'steps' to run. These could be shell files which are downloaded and executed (see \code{aws.step.run}). The format is a named vector.}

\item{bsactions}{a character vector of bootstrap actions formatted according to \code{aws emr create-cluster help}}

\item{wait}{TRUE or FALSE for waiting. If FALSE, the function returns immediately or waits}

\item{enableDebug}{TRUE or FALSE(FALSE), turns on hadoop debugging}

\item{applications}{one or more of  Hadoop, Spark, Hue, Hive, Pig, HBase, Ganglia and Impala (default Hadoop and Spark)}

\item{spotForCore}{if NULL(default) uses on demand nodes for core. Otherwise the value is the bid price. If set to NA, then a bid price is chosen for you.}

\item{opts}{list of options to modify string. Mysterious}
}
\description{
Create a cluster
}
\details{
The arguments \code{hadoopops, timeout, customscript} can
also be set in options. If \code{wait} is FALSE, the function will
return immediately and can be monitored using
\code{aws.clus.wait}. If \code{workers} is a number, then the type
is taken from aws.options(). If a string, this corresponds
to the instance type and the number is taken from
aws.options()$numworkers. If a list, it needs to of the
form \code{list(number, type)}. For \code{master}, it is enough to
leave as NULL (and will be inferred from options) or you pass a
type. The \code{timeout} is a set number of hours after which the
cluster is killed. You'll thank me later.
}
\examples{
\dontrun{
s <- aws.clus.create(workers=1,wait=TRUE,customscript='https://raw.githubusercontent.com/saptarshiguha/mozaws/master/bootscriptsAndR/sample.sh')
s <- aws.clus.create(workers=1)
s <- aws.clus.wait(s)
}
}

