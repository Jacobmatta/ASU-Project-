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
ASU_Paper_Qualtrics_Merged <- read_excel("~/Desktop/ASU_Paper_Qualtrics_Merged_Feb28.xlsx")


#removing the space from the Health_Insurance variable name 
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
#changing numeric responses to characters for data summary
#doing this so we do not have to turn to the codebook for interpretation
##Age
Feb28$Age <- ifelse(Feb28$Age == 1, "18-24 years old", 
                                 ifelse(Feb28$Age == 2, "25-34 years old",
                                        ifelse(Feb28$Age == 3, "35-46 years old",
                                               ifelse(Feb28$Age == 4, "45-54 years old",
                                                      ifelse(Feb28$Age == 5, "55-64 years old",
                                                             ifelse(Feb28$Age == 6, "65-74 years old",
                                                                    ifelse(Feb28$Age == 7, "75 years or older", NA)))))))
##Race_Ethnicity
Feb28$Race_Ethnicity <- ifelse(Feb28$Race_Ethnicity == 1, "African American", 
                                            ifelse(Feb28$Race_Ethnicity == 1, "Caucasian",
                                                   ifelse(Feb28$Race_Ethnicity == 3, "Latino or Hispanic",
                                                          ifelse(Feb28$Race_Ethnicity == 4, "Asian",
                                                                 ifelse(Feb28$Race_Ethnicity == 5, "Native American",
                                                                        ifelse(Feb28$Race_Ethnicity == 6, "Other", NA))))))
##Health_Insurance
Feb28$Health_Insurance <- ifelse(Feb28$Health_Insurance == 1, "Medicaid", 
                                                ifelse(Feb28$Health_Insurance == 2, "Medicare",
                                                       ifelse(Feb28$Health_Insurance == 3, "Affordable Care Act (Obamacare)",
                                                              ifelse(Feb28$Health_Insurance == 4, "Uninsured",
                                                                     ifelse(Feb28$Health_Insurance == 5, "Private Health_Insurance",
                                                                            ifelse(Feb28$Health_Insurance == 6, "Other",
                                                                                   ifelse(Feb28$Health_Insurance == 7, "Don't Know / Not Sure", NA)))))))
##Question_1
Feb28$Question_1 <- ifelse(Feb28$Question_1 == 1, "Yes", 
                           ifelse(Feb28$Question_1 == 2, "No",
                                  ifelse(Feb28$Question_1 == 3, "Not sure",
                                         ifelse(Feb28$Question_1 == 4, "Do not know", NA))))
##Question_13_Fever
Feb28$Question_13_Fever <- ifelse(Feb28$Question_13_Fever == 1, "Yes", NA)

##Question_13_Cough
Feb28$Question_13_Cough <- ifelse(Feb28$Question_13_Cough == 1, "Yes", NA)

##Question_13_Shortness_of_breath
Feb28$Question_13_Shortness_of_breath <- 
  ifelse(Feb28$Question_13_Shortness_of_breath == 1, "Yes", NA)

##Question_13_Fatigue
Feb28$Question_13_Fatigue <- 
  ifelse(Feb28$Question_13_Fatigue == 1, "Yes", NA)

##Question_13_Muscle_Body_Aches
Feb28$Question_13_Muscle_Body_Aches <- 
  ifelse(Feb28$Question_13_Muscle_Body_Aches == 1, "Yes", NA)

##Question_13_Headache
Feb28$Question_13_Headache <- 
  ifelse(Feb28$Question_13_Headache == 1, "Yes", NA)

##Question_13_Loss_of_Taste
Feb28$Question_13_Loss_of_Taste <- 
  ifelse(Feb28$Question_13_Loss_of_Taste == 1, "Yes", NA)

##Question_13_Sore_Throat
Feb28$Question_13_Sore_Throat <- 
  ifelse(Feb28$Question_13_Sore_Throat == 1, "Yes", NA)

##Question_13_Congestion
Feb28$Question_13_Congestion <- 
  ifelse(Feb28$Question_13_Congestion == 1, "Yes", NA)

##Question_13_Nausea
Feb28$Question_13_Nausea <- 
  ifelse(Feb28$Question_13_Nausea == 1, "Yes", NA)

##Question_13_Diarrhea
Feb28$Question_13_Diarrhea <- 
  ifelse(Feb28$Question_13_Diarrhea == 1, "Yes", NA)

##Question_13_Asymptomatic
Feb28$Question_13_Asymptomatic <- 
  ifelse(Feb28$Question_13_Asymptomatic == 1, "Yes", NA)

##Question_13_Other
Feb28$Question_13_Other <- 
  ifelse(Feb28$Question_13_Other == 1, "Yes", NA)

##Question_15
Feb28$Question_15 <- ifelse(Feb28$Question_15 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_15 == 2, "Disagree",
                                   ifelse(Feb28$Question_15 == 3, "Neutral",
                                          ifelse(Feb28$Question_15 == 4, "Agree",
                                                 ifelse(Feb28$Question_15 == 5, "Strongly Agree", NA)))))
##Question_16
Feb28$Question_16 <- ifelse(Feb28$Question_16 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_16 == 2, "Disagree",
                                   ifelse(Feb28$Question_16 == 3, "Neutral",
                                          ifelse(Feb28$Question_16 == 4, "Agree",
                                                 ifelse(Feb28$Question_16 == 5, "Strongly Agree", NA)))))
##Question_17
Feb28$Question_17 <- ifelse(Feb28$Question_17 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_17 == 2, "Disagree",
                                   ifelse(Feb28$Question_17 == 3, "Neutral",
                                          ifelse(Feb28$Question_17 == 4, "Agree",
                                                 ifelse(Feb28$Question_17 == 5, "Strongly Agree", NA)))))
##Question_18
Feb28$Question_18 <- ifelse(Feb28$Question_18 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_18 == 2, "Disagree",
                                   ifelse(Feb28$Question_18 == 3, "Neutral",
                                          ifelse(Feb28$Question_18 == 4, "Agree",
                                                 ifelse(Feb28$Question_18 == 5, "Strongly Agree", NA)))))
##Question_19
Feb28$Question_19 <- ifelse(Feb28$Question_19 == 1, "Yes", 
                            ifelse(Feb28$Question_19 == 2, "No",
                                   ifelse(Feb28$Question_19 == 3, "Not sure",
                                          ifelse(Feb28$Question_19 == 4, "Do not know", NA))))
##Question_20_Basic_Health 
Feb28$Question_20_Basic_Health <- 
  ifelse(Feb28$Question_20_Basic_Health == 1, "Yes", NA)

##Question_20_COVID_19_Vacc 
Feb28$Question_20_COVID_19_Vacc <- 
  ifelse(Feb28$Question_20_COVID_19_Vacc == 1, "Yes", NA)

##Question_20_Improving_ventilation 
Feb28$Question_20_Improving_ventilation <- 
  ifelse(Feb28$Question_20_Improving_ventilation == 1, "Yes", NA)

##Question_20_Getting_tested 
Feb28$Question_20_Getting_tested <- 
  ifelse(Feb28$Question_20_Getting_tested == 1, "Yes", NA)

##Question_20_Following_recommendations
Feb28$Question_20_Following_recommendations <- 
  ifelse(Feb28$Question_20_Following_recommendations == 1, "Yes", NA)

##Question_20_Staying_home
Feb28$Question_20_Staying_home <- 
  ifelse(Feb28$Question_20_Staying_home == 1, "Yes", NA)

##Question_20_Seeking
Feb28$Question_20_Seeking <- 
  ifelse(Feb28$Question_20_Seeking == 1, "Yes", NA)

##Question_20_Avoiding
Feb28$Question_20_Avoiding <- 
  ifelse(Feb28$Question_20_Avoiding == 1, "Yes", NA)

##Question_21
Feb28$Question_21 <- ifelse(Feb28$Question_21 == 1, "Yes", 
                            ifelse(Feb28$Question_21 == 2, "No",
                                   ifelse(Feb28$Question_21 == 3, "Not sure",
                                          ifelse(Feb28$Question_21 == 4, "Do not know", NA))))

#summing question 1 by age
Q1_by_age = table(Feb28$Age, Feb28$Question_1)

Q1_by_age_tibble = as_tibble(Q1_by_age, rownames= "Missing", )



#trying to summarize with the summarise funtion
Feb28_arranged = Feb28 %>%
  arrange(Age, Race_Ethnicity, Health_Insurance) 

df <- data.frame(
  gender = c("Male", "Female", "Male", "Male", "Female", "Female"),
  age = c(25, 30, 35, 25, 30, 35)
)

# Use table() function to get frequency table
freq_table <- table(df$gender, df$age)

# Convert the frequency table to a tibble
freq_tibble <- as_tibble(freq_table, rownames = "gender", colnames = "age")

# View the resulting tibble
freq_tibble
