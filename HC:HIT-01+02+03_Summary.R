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

#replacing NA values with *
Q32 = Q32 %>% replace(is.na(.), "*")

#getting summary of question 32
describe(Q32) 

#making clean datatable with summary of question 32
Q32_summary = data.frame (Value  = c("Missing", "Yes","No", "Not sure", "Do not know"),
                         Frequency = c(49, 404, 17, 14, 4))
Q32_summary






