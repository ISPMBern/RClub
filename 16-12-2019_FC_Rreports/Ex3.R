#' # This is a level 1 title
#'Very simple example
#'Here I just added a ' after the comments

mtcars

plot(mtcars$mpg,mtcars$hp)
#'The more mile per gallons, the lower the horse power !
#'Does heavier car consume more ?
plot(mtcars$mpg,mtcars$wt)
#' ## This is a level 2 title

#'It looks like it also

#'What about number of cylinders ?
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

#rmarkdown::render('Ex3.R',encoding="UTF-8")
#NB: run this line (without the #, file must be savec and in the current directory)