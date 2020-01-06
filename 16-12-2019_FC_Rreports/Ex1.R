#Very simple example
#Here my comments are "regular"

mtcars

plot(mtcars$mpg,mtcars$hp)
#The more mile per gallons, the lower the horse power !
#Does heavier car consume more ?
plot(mtcars$mpg,mtcars$wt)
#It looks like it also

#What about number of cylinders ?
mtcars$cyl=factor(mtcars$cyl)
boxplot(mtcars$mpg~mtcars$cyl)

#and finally time to do a quarter mile

plot(mtcars$mpg,mtcars$qsec)

#it is less clear but ok

#can we predict mpg with other variables ?

summary(lm(mpg~cyl+hp+qsec+wt,data=mtcars))

#We have a nice model, with 85% variance explained.

#rmarkdown::render('Ex1.R',encoding="UTF-8")
