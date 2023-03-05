#summarizing section 2 by race, age group and insurance from suveys up until 2/28

#library for code
library(dplyr)
library(tidyr)
library(tidyverse)
library(readxl)
library(writexl)
library(data.table)
library(stringi)
library(Hmisc)
library(ggplot2)

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
                                            ifelse(Feb28$Race_Ethnicity == 2, "Caucasian",
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
###########################################################Summary for race, age and insurance
#creating values for race, age and insurance questions
race = Feb28$Race_Ethnicity
age = Feb28$Age
insurance = Feb28$Health_Insurance

#replacing NA values with "missing" 
race = race %>% replace(is.na(.), "missing")
age = age %>% replace(is.na(.), "missing")
insurance = insurance %>% replace(is.na(.), "missing")

#creating frequency table for race
describe(race) #offers frequency and proportion of response 
table(race)
race_tib = tibble(race) #used to make a tibble out of the count 

#making a bar graph of race of participants 
race_barplot = ggplot(race_tib , aes(x=race, fill=race)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="none") 
race_barplot + ggtitle("Count of Participant by Race")

#creating a frequency table for age 
describe(age) #offers frequency and proportion of response 
table(age)
age_tib = tibble(age) #used to make a tibble out of the count 

#making a bar graph of age of participants 
age_barplot = ggplot(age_tib , aes(x=age, fill=age)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="right", axis.title.x=element_blank(),axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) 
age_barplot + ggtitle("Count of Participant by age") 

#creating frequency table for insurance 
describe(insurance) #offers frequency and proportion of response 
table(insurance)
insurance_tib = tibble(insurance) #used to make a tibble out of the count 

#making a bar graph of insurance of participants 
insurance_barplot = ggplot(insurance_tib , aes(x=insurance, fill=insurance)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="right", axis.title.x=element_blank(),axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) 
insurance_barplot + ggtitle("Count of Participant by insurance") 

######################################################### question 1 by race, age and insurance 

#summing question 1 by age
##creating values for question 1 
Q1 = Feb28$Question_1

#replacing NA values with "missing" for both age and Q1 
Q1 = Q1 %>% replace(is.na(.), "missing")

#creating frequency table for insurance 
describe(Q1)
table(Q1)
Q1_tib = tibble(Q1)

#making a bar graph of Q1 of participants 
Q1_barplot = ggplot(Q1_tib , aes(x=Q1, fill=Q1)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="right", axis.title.x=element_blank(),axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) 
#adding a title and subtitle
Q1_barplot = Q1_barplot + labs(title = "Count of Participant by Q1", 
                                subtitle = "Has a healthcare provider or a home test ever informed you or your family members that you (or your children or other family members) had COVID-19?") 

#editing the subtitle font size
Q1_barplot = Q1_barplot + theme(plot.title = element_text(color = "black"),
                                plot.subtitle = element_text(color = "black", size = 6))
Q1_barplot

# Use table() function to get frequency table for Q1 vs Race
Q1_race_freq = table(Q1, race)
Q1_race_freq

# Use table() function to get frequency table for Q1 vs Age
Q1_age_freq = table(Q1, age)
Q1_age_freq

# Use table() function to get frequency table for Q1 vs insurance
Q1_insurance_freq = table(Q1, insurance)
Q1_insurance_freq

#########################################################question 2 by race, age and insurance 
##creating values for question 2 
Q2 = Feb28$Question_2

#replacing NA values with "missing" for both age and Q2 
Q2 = Q2 %>% replace(is.na(.), "*")

#creating frequency table for Q2 
describe(Q2)
table(Q2)
Q2_tib = tibble(Q2)

#making a bar graph of Q2 of participants 
Q2_barplot = ggplot(Q2_tib , aes(x=Q2, fill=Q2)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="right", axis.title.x=element_blank(),axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) 
#adding a title and subtitle
Q2_barplot = Q2_barplot + labs(title = "Count of Participant by Q2", 
                               subtitle = "How many members of your household tested positive for COVID-19") 

#editing the subtitle font size
Q2_barplot = Q2_barplot + theme(plot.title = element_text(color = "black"),
                                plot.subtitle = element_text(color = "black", size = 6))
Q2_barplot

# Use table() function to get frequency table for Q2 vs Race
Q2_race_freq = table(Q2, race)
Q2_race_freq

# Use table() function to get frequency table for Q2 vs Age
Q2_age_freq = table(Q2, age)
Q2_age_freq

# Use table() function to get frequency table for Q2 vs insurance
Q2_insurance_freq = table(Q2, insurance)
Q2_insurance_freq
#########################################################Summary for question 3 and 4
##creating values for question 3
Q3 = Feb28$Question_3

#replacing NA values with "missing" for both age and Q3 
Q3 = Q3 %>% replace(is.na(.), "*")

#creating frequency table for Q3 
#Q3 is an open ended question
#note that Q3 is continuous and need to treat as a continuous variable 
describe(Q3)
table(Q3)
Q3_tib = tibble(Q3)

#making a bar graph of Q3 of participants 
Q3_barplot = ggplot(Q3_tib , aes(x=Q3, fill=Q3)) + #have to use the tibble of the count of race here 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="right", axis.title.x=element_blank(),axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) 
#adding a title and subtitle
Q3_barplot = Q3_barplot + labs(title = "Count of Participant by Q3", 
                               subtitle = "Age of family member one who had COVID-19") 

#editing the subtitle font size
Q3_barplot = Q3_barplot + theme(plot.title = element_text(color = "black"),
                                plot.subtitle = element_text(color = "black", size = 6))
Q3_barplot
