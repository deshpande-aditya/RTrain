# Title     : workflow basics
# Objective : reference for workflow basics in R
# Created by: Lenovo
# Created on: 19-11-2020

sin(pi /2)
this_is_a_really_long_name <- 3.5
seq(1, 10)

my_variable <- 10
my_variable

library( tidyverse)

?mpg
dput(mpg)
library(ggplot2)
ggplot( data =mpg) +
  geom_point( mapping = aes( x = displ, y = hwy))

filter( mpg, cyl == 8)
filter( diamonds, carat > 3)
