% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddPCRclust.R
\name{shearCorrection}
\alias{shearCorrection}
\title{Correct for DNA shearing}
\usage{
shearCorrection(counts, lengthControl, stableControl)
}
\arguments{
\item{counts}{The counts per marker as provided by \link{calculateCPDs}.}

\item{lengthControl}{The name of the length Control. If the template name is for example CPT2, 
the name in the template should be CPT2-125, where 125 represents the number of basepairs.}

\item{stableControl}{The name of the stable Control used as a reference for this experiment.}
}
\value{
A linear regression model fitting the length vs ln(ratio) (see \link{lm} for details on linear regression).
}
\description{
Longer DNA templates produce a lower droplet count due to DNA shearing.
This function normalizes the ddPCRclust result based on a stable marker of different lengths 
to negate the effect of differences in the lengths of the actual markers of interest.
(Work in progress)
}
