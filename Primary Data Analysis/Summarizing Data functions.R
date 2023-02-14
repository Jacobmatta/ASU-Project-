library(readxl)
htl <- read_excel("~/Downloads/Health Literacy Survey (full survey)_December 14, 2022_11.03-2.xlsx")
names(htl)

#provides min, max median, mean
#by using the $ you can specify to one varibale 
summary(htl)

newdata <- htl[htl$Date > "2022-12-07 16:24:46.50", ]


#summary functions for seconday data 
libray(DescTools)
library(data.table)
PerCTable()
#good at comparing two varbiables 
library(readr)
Table()

#other useful for data summary
stat.desc()
