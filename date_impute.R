# Title     : Just Dates
# Objective : to imnpute dates
# Created by: Lenovo
# Created on: 14-11-2020


library(lubridate)
date <- as.character(readline(prompt="Enter a date: (Enter in YYYYmmdd format without seperators): "))
print(date)
date1 <- as.numeric(date)
print(date1)
date3 <- as.Date(date, format="%Y%m%d")
print(date3)


#date_today <- Sys.Date()
#new_date <- as.Date(date_today, format = "%B %d, %Y")
#print(new_date)


