#' calculating Probability of getting right and wrong by Rasch model
#'
#' return A vector of length n that represents Pij for each question and
#' A vector of length n that represents Pij.
#'
#' @param raschObj A numeric value of Rasch values including a and y.
#' @param theta A numeric vector containing my poisson data
#'
#' @return A single numeric value that is the negative LL
#' @author Lim
#' 
#' @rdname Probability
#' @export
setGeneric(name = "Probability",
           def = function(raschObj, theta) {
             standardGeneric("Probability")
           })
#' @export
setMethod(f="Probability",
          def=function(raschObj,theta){

            a<-raschObj@a
            y<-raschObj@y
  