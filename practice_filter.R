# Title     : practice filter() from tidyverse
# Objective : same as above
# Created by: Lenovo
# Created on: 01-12-2020
library(dplyr)
#install.packages('nycflghts13')
library(tidyverse)
library(nycflights13)
library(datasets)

#filter () usage
summary(mtcars)
?mtcars
mtcars_new <- filter(mtcars, am == 0 | cyl >5)
mtcars_new

#arrange () usage
mtcar_arr <- arrange(mtcars, desc(cyl))
mtcar_arr

#select()
mtcar_sel <- select(mtcars, starts_with("AMC", ignore.case = TRUE))
mtcar_sel
?select

starwars %>% select(name:mass)