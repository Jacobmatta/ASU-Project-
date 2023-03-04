#summarizing section 2 by race, age group and insurance from suveys up until 2/28

#library for code
library(dplyr)
library(tidyr)
library(tidyverse)
library(readxl)
library(writexl)
library(data.table)
library(stringi)

#importing the file with surveys up until Feb 28th 
#you will have to chane the file location 
ASU_Paper_Qualtrics_Merged <- read_excel("~/Desktop/ASU_Paper_Qualtrics_Merged.xlsx")


#removing the space from the health insurance variable name 
colnames(ASU_Paper_Qualtrics_Merged)[which(names(ASU_Paper_Qualtrics_Merged) == "Health Insurance")] <- "Health_Insurance"

#for the analysis you only need the questions regarding race, age and insurance as well as section 2 questions
Feb28 = subset(ASU_Paper_Qualtrics_Merged, select = c(Age, Race_Ethnicity, Health_Insurance, Question_1, 
                                                      Question_2,Question_3, Question_4, Question_5,
                                                      Question_6,Question_7, Question_8, Question_9,
                                                      Question_10,Question_11,Question_12,Question_13_Fever,
                                                      Question_13_Cough, Question_13_Shortness_of_breath,
                                                      Question_13_Fatigue, Question_13_Muscle_Body_Aches,
                                                      Question_13_Headache, Question_13_Loss_of_Taste,
                                                      Question_13_Sore_Throat, Question_13_Congestion,
                                                      Question_13_Nausea,Question_13_Diarrhea,Question_13_Asymptomatic,
                                                      Question_13_Other, Question_14, Question_15, Question_16,
                                                      Question_17,Question_18, Question_19,Question_20_Basic_Health,
                                                      Question_20_COVID_19_Vacc, Question_20_Improving_ventilation,
                                                      Question_20_Getting_tested, Question_20_Following_recommendations,
                                                      Question_20_Staying_home, Question_20_Seeking, Question_20_Avoiding,
                                                      Question_21))

#summing question 1 by age
table(Feb28$Age, Feb28$Question_1)
