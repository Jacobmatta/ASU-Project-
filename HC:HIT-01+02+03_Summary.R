#installpackages
install.packages("gtsummary")

#loading packages 
library(here)
library(readxl)
library(Hmisc)
library(dplyr)
library(gtsummary)

#loading data 
datalocation <- here("Primary Data Analysis", "data", "raw data", "ASU_Paper_Qualtrics_Merged.xlsx")

rawdata <- readxl::read_xlsx(datalocation)

#look at data
summary(rawdata)

#getting a count for our indicator PM #5 HC-HIT 01  
Q32 = rawdata$Question_32

#getting summary of question 32
Q32_summary = describe(Q32) 




