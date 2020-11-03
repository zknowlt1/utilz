#' Random Letter Generator
#' @param n the number of random letters you want to select
#' @param letter_probs a vector of probabilities for each of the 26 letters (optional), default is 1/26
#' @param wreplacement if you want multiple letters, logical TRUE/FALSE for sampling with replacement (optional), FALSE default
#' @return a random letter based on probabilities
#' @export
#' @examples
#' randomLetter(1) # select 1 random letter
#' randomLetter(2) # select 2 random letters

randomLetter = function(n,letter_probs=rep(1/26,26),wreplacement=FALSE){
  iter = sample(26,n,replace=wreplacement,prob=letter_probs)
  letter_selection = letters[iter]
  return(letter_selection)
}

