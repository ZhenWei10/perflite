% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/performance_regression.R
\name{performance_regression}
\alias{performance_regression}
\title{A function to generate the performance evaluation metrices based on cross validation results.}
\usage{
performance_regression(y, X, pred_f = list(LR = lm_regression, RR_SVR =
  svm_regression, RF_R = randomForest_regression),
  performance_metrices = c("COR", "MAE", "RMSE", "RAE", "RRSE"),
  k = 10, p = 1, save_table = T, ...)
}
\arguments{
\item{y}{a \code{numeric} that contains the response vector for regression. This argument could be a \code{list} of numeric vectors.}

\item{X}{a \code{matrix} that contains the features, nrow(X) = length(y). This argument could be a \code{list} of matrixes.}

\item{k}{the number of folds used in cross validation, default 10.}

\item{p}{the number of parallels used, default equals 1, recommend to use p = k on server.}

\item{save_table}{save the performance table or not, default TRUE.}

\item{...}{additional arguments passed to \code{pred_f}}

\item{performance_matrices}{a character vector indicating the performance metrices returned, default is \code{c("COR","MAE","RMSE","RAE","RRSE")},

"COR" represents: Correlation coefficient.

"MAE" represents: Mean absolute error.

"RMSE" represents: Root mean squared error.

"RAE" represents: Relative absolute error.

"RRSE" represents: Root relative squared error.}
}
\value{
a \code{data.frame} that contains comprehensive performance report after cross validation.
}
\description{
A function to generate the performance evaluation metrices based on cross validation results.
}
\details{
\code{performance_regression} conduct performance evaluation on a machine learning regressor using cross validation.
This is a convenient function to get a neat and efficient result of performance evaluation after cross validation.

The missing values will not be imputed by default, and the dimensions containing missing values will be dropped.
}
\seealso{
\code{\link{view_tables}} to visualize the output.
}
