
#' Calculate BMI
#'
#' @description This function takes in your weight and height, calculates your BMI, and puts you in a weight class.
#'
#' @param w the weight of the person
#' @param h the height of the person
#'
#' @return BMI and weight class
#' @export
#'
#' @examples
#'
#' calc_bm_2i(w = 80, h = 1.4)
#'
#'
#'
calc_bmi_2 <- function(w,h){

  bmi <- w/(h^2)
  bmi_rounded <- round(bmi, 2)

  if (bmi_rounded < 18.50) {
    weightclass <- "underweight"
  }
  if (bmi_rounded >= 18.50  &  bmi_rounded < 25) {
    weightclass <- "of normal weight"
  }
  if (bmi_rounded >= 25) {
    weightclass <- "overweight"
  }

  output <- paste("Your BMI is", bmi_rounded, ", you are", weightclass )
  return(output)
}



