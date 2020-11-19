# Title     : ggplot examples
# Objective : reference for ggplot
# Created by: Lenovo
# Created on: 19-11-2020

library(tidyverse)

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
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_wrap( ~ class, nrow = 2)


#facets

ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( drv ~ cyl)
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( . ~ cyl)

#exercise for facet
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy)) + facet_grid( drv ~ .)
# left
ggplot( data = mpg) + geom_point( mapping = aes( x = displ, y = hwy))
# right
ggplot( data = mpg) + geom_smooth( mapping = aes( x = displ, y = hwy))

ggplot( data = mpg) + geom_smooth( mapping = aes( x = displ, y = hwy, linetype = drv))


ggplot( data = mpg) +
  geom_smooth( mapping = aes( x = displ, y = hwy, group = drv))


ggplot( data = mpg) + geom_smooth( mapping = aes( x = displ, y = hwy, color = drv), show.legend = FALSE )


#To display multiple geoms in the same plot, add multiple geom functions to ggplot():
ggplot( data = mpg) +
  geom_point( mapping = aes( x = displ, y = hwy)) +
  geom_smooth( mapping = aes( x = displ, y = hwy))

#same as above code - global mapping example.
ggplot( data = mpg, mapping = aes( x = displ, y = hwy)) +
  geom_point() + geom_smooth()

#specify local options for geom_point in this case.
ggplot( data = mpg, mapping = aes( x = displ, y = hwy)) +
  geom_point( mapping = aes( color = class)) +
  geom_smooth()

#overriding global options by giving specific local options.
ggplot( data = mpg, mapping = aes( x = displ, y = hwy)) +
  geom_point( mapping = aes( color = class)) +
  geom_smooth( data = filter( mpg, class == "subcompact"), se = FALSE )

#try using geom_line/
ggplot( data = mpg) +
  geom_line( mapping = aes( x = displ, y = hwy))

ggplot( data = mpg, mapping = aes( x = displ, y = hwy, color = drv) ) +
  geom_point() +
  geom_smooth( se = FALSE)

#SE displays CI around the line.
ggplot( data = mpg, mapping = aes( x = displ, y = hwy, color = drv) ) +
  geom_point() +
  geom_smooth()

#WHY TO USE SHOW.LEGEND
ggplot( data = mpg) +
  geom_smooth( mapping = aes( x = displ, y = hwy, color = drv), show.legend = FALSE )

#not using show.legend
ggplot( data = mpg) +
  geom_smooth( mapping = aes( x = displ, y = hwy, color = drv) )


##BAR CHARTS##

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut))
#use stat_count instead of geom_bar for above plot.

ggplot(data = diamonds) +
  stat_count(mapping = aes(x=cut))

###demonstrate stat=identity.
demo <- tribble( ~ a, ~ b,
                 "bar_1", 20,
                 "bar_2", 30,
                 "bar_3", 40
              )
ggplot( data = demo) +
  geom_bar( mapping = aes( x = a, y = b), stat = "identity" )

#using stat_summary.
ggplot( data = diamonds) +
  stat_summary( mapping = aes( x = cut, y = depth), fun.ymin = min, fun.ymax = max, fun.y = median )

ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, color = cut))
ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, fill = cut))
ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, fill = clarity))

#stacking - concept for bar charts.
ggplot( data = diamonds, mapping = aes( x = cut, fill = clarity) ) +
  geom_bar( alpha = 1/ 5, position = "identity")

ggplot( data = diamonds, mapping = aes( x = cut, color = clarity) ) +
  geom_bar( fill = NA, position = "identity")

ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, fill = clarity), position = "fill" )

##this can display side by side bars - useful info..
ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, fill = clarity), position = "dodge" )

###position =jitter to avoid overlapping of points.
ggplot( data = mpg) +
  geom_point( mapping = aes( x = displ, y = hwy), position = "jitter" )

##exercises
ggplot( data = mpg, mapping = aes( x = cty, y = hwy)) +
  geom_point()

###box plots
ggplot( data = mpg, mapping = aes( x = class, y = hwy)) +
  geom_boxplot()
##improvise above plot
ggplot( data = mpg, mapping = aes( x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip()

install.packages("maps")
nz <- map_data("nz")
ggplot(nz, aes( long, lat, group = group)) +
  geom_polygon( fill = "white", color = "black")
ggplot( nz, aes( long, lat, group = group)) +
  geom_polygon( fill = "white", color = "black") +
  coord_quickmap()

?labs()


bar <- ggplot( data = diamonds) +
  geom_bar( mapping = aes( x = cut, fill = cut), show.legend = FALSE, width = 1 ) +
  theme( aspect.ratio = 1) +
  labs( x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()

ggplot( data = mpg, mapping = aes( x = cty, y = hwy)) +
  geom_point() +
  geom_abline() +
  coord_fixed()

