#' ---
#' output:
#'    html_document:
#'      toc: true
#'      toc_float: true
#'      code_folding: show
#' ---
#' # This is a level 1 title  
#' For the table of content, you might (or not) install the last pandoc version https://pandoc.org/installing.html
#' 
#'Very simple example  
#'Here I just added a ' after the comments
#' 
#' ## Hide codes / results / plots
#' Traditionnally, we often begin with some data management. This will probably be less interesting to our colleagues. We could spare them the pain and hide the code and the results.


#+ results="hide", echo=FALSE, fig.show="hide"
mtcars
plot(mtcars$mpg,mtcars$hp)
2+2
3*3
exp(3*3)==exp(3)^3
exp(3+3)==exp(3)*exp(3)

#' or just the code, but not the results

#+ echo=FALSE
plot(mtcars$mpg,mtcars$hp)
2+2
3*3
exp(3*3)==exp(3)^3
exp(3+3)==exp(3)*exp(3)

#'The more mile per gallons, the lower the horse power !
#'Does heavier car consume more ?
plot(mtcars$mpg,mtcars$wt)
#' ## This is a level 2 title

#'It looks like it also


#'

mtcars$cyl=factor(mtcars$cyl)
boxplot(mtcars$mpg~mtcars$cyl)

#'and finally time to do a quarter mile
#' ### This is a failed level 3 title
#'
#' ### This is a level 3 title (note the empty comment line before)
#' Some other comments
plot(mtcars$mpg,mtcars$qsec)

#'it is less clear but ok

#'can we predict mpg with other variables ?

summary(lm(mpg~cyl+hp+qsec+wt,data=mtcars))

#'We have a nice model, with 85% variance explained.

#rmarkdown::render('Ex4.R',encoding="UTF-8")
#NB: run this line (without the #, file must be savec and in the current directory)

