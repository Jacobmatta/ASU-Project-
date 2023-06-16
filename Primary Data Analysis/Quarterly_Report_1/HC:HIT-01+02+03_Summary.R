############################################################### HC-HIT-01

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

#removing rows from 310 and higher because only dates up until Dec. 31st are needed
Rawdata_dec31st <- rawdata[-c(310:488),]

View(Rawdata_dec31st)

#getting a count for our indicator PM #5 HC-HIT 01  
Q32 = Rawdata_dec31st$Question_32

#replacing NA values with *
Q32 = Q32 %>% replace(is.na(.), "*")

#getting summary of question 32
describe(Q32) 

#making clean datatable with summary of question 32
Q32_summary = data.frame (Value  = c("Missing", "Yes","No", "Not sure", "Do not know"),
                          Frequency = c(38, 247, 12, 9, 3))
Q32_summary

############################################################### HC-HIT-02

#getting a count for our indicator PM #5 HC-HIT 01  
Q33 = Rawdata_dec31st$Question_33

#replacing NA values with *
Q33 = Q33 %>% replace(is.na(.), "*")

#getting summary of question 33
describe(Q33) 

#making clean datatable with summary of question 33
Q33_summary = data.frame (Value  = c("Missing", "Yes","No", "Not sure", "Do not know"),
                          Frequency = c(38, 258, 4, 6, 3))
Q33_summary

############################################################### HC-HIT-03

Q34 = Rawdata_dec31st$Question_34

#replacing NA values with *
Q34 = Q34 %>% replace(is.na(.), "*")

#getting summary of question 34
describe(Q34) 

#making clean datatable with summary of question 34
Q34_summary = data.frame (Value  = c("Missing", "Yes","No", "Not sure", "Do not know"),
                          Frequency = c(46, 189, 55, 14, 5))
Q34_summary
