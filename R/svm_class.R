#' @title A function to generate the decision values for svm classification.
#' @return a \code{vector} that is the same length of y containing the decision values on testing set.
#' @details \code{svm_f} conduct binary classification using SVM.
#'
#' @param y a \code{factor} that contains the binary response variable with levels 1,0 for prediction.
#' @param X_train a \code{matrix} that contains the features for tarining set, nrow(X) = length(y).
#' @param X_test a \code{matrix} that contains the features for testing set.
#' @param ... additional arguments passed to \code{svm} defined in the package \code{e1071}.
#'
#' @importFrom e1071 svm
#' @export
svm_class <- function(y, X_train, X_test, ...) {
  svm_model <- svm(y = y, x = X_train, probability = T, ...)

  svm_dec_prob <-  attributes(predict(
    object = svm_model,
    newdata = X_test,
    probability = TRUE
  ))$probabilities

  return(as.vector(svm_dec_prob[,"1"]))

}
