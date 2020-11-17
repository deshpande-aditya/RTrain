# Title     : Test_Lib and ggplot practice.
# Objective : to test install some package
# Created by: Lenovo
# Created on: 17-11-2020

#install.packages("tidyverse")
#just testing out sme sorce code from the book.
library(tidyverse)

dput(mtcars)
ggplot2::ggplot()

ggplot(data =mpg) +
  geom_point(mapping = aes(x = displ, y= hwy ))

#exercises
#1.
ggplot(data = mpg)
?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y= cyl ))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y= drv ))
ggplot(data =mpg) +
  geom_point(mapping = aes(x = displ, y= hwy, color = class ))

ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy, size = class))

# Top
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy, alpha = class))


# Bottom
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy, shape = class))
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy), color = "blue")
#solved Q1 - BRACKET WAS MISPLACED HENCE COLOR WAS NOT BLUE.
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy), color = "blue" )


#facets
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_wrap( ~ class, nrow = 2)

ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( drv ~ cyl)
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( . ~ cyl)

#exercise for facet
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( drv ~ .)
# left
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy))
# right
ggplot( data = mpg) + geom_smooth( mapping = aes( x = displ, y = hwy))

ggplot( data = mpg) + geom_smooth( mapping = aes( x = displ, y = hwy, linetype = drv))
