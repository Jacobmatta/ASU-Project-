#cleaning in preparation for descriptive summary of data

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
library(DescTools)
library(here)

#importing the file with surveys up until Feb 28th 
location = here("Primary Data Analysis ASU","descriptive_summary_asu", "Data", "rawdata", "ASU_Paper_Qualtrics_Merged_Feb28.xlsx")

#naming the rawdata 
ASU_Paper_Qualtrics_Merged = read_excel(location)


#removing the space from the Health_Insurance variable name 
colnames(ASU_Paper_Qualtrics_Merged)[which(names(ASU_Paper_Qualtrics_Merged) == "Health Insurance")] <- "Health_Insurance"

#coping the data set and identifying it by the date it was merged 
Feb28 = ASU_Paper_Qualtrics_Merged

#changing all values that follow question 1(Q2.1) if this question was completed as either: no, not sure or do not know then mark Question 2 - Question 14 as missing 
Feb28$Question_2[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_3[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_4[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_5[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_6[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_7[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_8[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_9[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_10[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_11[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_12[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Fever[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Cough[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Shortness_of_breath[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Fatigue[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Muscle_Body_Aches[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Headache[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Loss_of_Taste[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Sore_Throat[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Congestion[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Nausea[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Diarrhea[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Asymptomatic[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_13_Other[Feb28$Question_1 > 1 ] <- "*"
Feb28$Question_14[Feb28$Question_1 > 1 ] <- "*"

#If question 22 (3.1) was reported as No, Not Sure or do not know then question 23 (3.2) should be reported as misssing 
Feb28$Question_23[Feb28$Question_22 > 1 ] <- "*"

#If question 25 (3.7) was reported as yes then Question 27 (were you vaccinated in the past), Question 28 (Do you plan to get vaccinated in the near future) and Question 29 (If/When you decide to get vaccinated, do you know where to get a vaccine) should all be missing 
Feb28$Question_27[Feb28$Question_25 == 1 ] <- "*"
Feb28$Question_28[Feb28$Question_25 == 1 ] <- "*"
Feb28$Question_29[Feb28$Question_25 == 1 ] <- "*"

#If question 25 was reported as no then question 26 (was this your first dose) should be reported as missing 
Feb28$Question_26[Feb28$Question_25 > 1 ] <- "*"

#if question 27(were you vaccinated in the past) was answered yes then question 28(Do you plan to get vaccinated in the near future) and Question 29 (If/When you decide to get vaccinated, do you know where to get a vaccine) should be missing 
Feb28$Question_28[Feb28$Question_27 == 1 ] <- "*"
Feb28$Question_29[Feb28$Question_27 == 1 ] <- "*"

#if question 40 (did your child or children also get the vaccine today?) was reported as yes then question 42 (was your child vaccinated in the past) and question 43 (do you plan to get your child vaccinated in the near future) should both be missing 
Feb28$Question_42[Feb28$Question_40 == 1 ] <- "*"
Feb28$Question_43[Feb28$Question_40 == 1 ] <- "*"

#if question 40 was reported as no or as "I do not have children under 18 in my household" then question 41 (was the dose your child received their first dose)should be missing 
Feb28$Question_41[Feb28$Question_40 > 1 ] <- "*"

#if question 42 was reported as yes then question 43 should be missing 
Feb28$Question_43[Feb28$Question_42 == 1 ] <- "*"

#changing numeric responses to characters for data summary
#doing this so we do not have to turn to the code book for interpretation

##Gender
Feb28$Gender <- ifelse(Feb28$Gender == 1, "Male", 
                       ifelse(Feb28$Gender == 2, "Female",
                              ifelse(Feb28$Gender == 3, "I would rather not specify", NA)))

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

##Education
Feb28$Education <- ifelse(Feb28$Education == 1, "Less than High School", 
                          ifelse(Feb28$Education == 2, "High School",
                                 ifelse(Feb28$Education == 3, "Bachelor's Degree or higher", NA)))

##Language
Feb28$Language <- ifelse(Feb28$Language == 1, "English", 
                         ifelse(Feb28$Language == 2, "Spanish",
                                ifelse(Feb28$Language == 3, "Other", NA)))
##Income
Feb28$Income <- ifelse(Feb28$Income == 1, "Less than $25,000", 
                       ifelse(Feb28$Income == 2, "$25,000-$50,000",
                              ifelse(Feb28$Income == 3, "$50,000-$100,000",
                                     ifelse(Feb28$Income == 4, "More than $100,000", NA))))

##Family_household
Feb28$Family_household <- ifelse(Feb28$Family_household == 1, 1, 
                                 ifelse(Feb28$Family_household == 2, 2,
                                        ifelse(Feb28$Family_household == 3, 3,
                                               ifelse(Feb28$Family_household == 4, 4,
                                                      ifelse(Feb28$Family_household == 5, "5 or more", NA)))))
##Children
Feb28$Children <- ifelse(Feb28$Children == 1, "Yes", 
                         ifelse(Feb28$Children == 2, "No", NA))
##Elderly_family
Feb28$Elderly_family <- ifelse(Feb28$Elderly_family == 1, "Yes", 
                               ifelse(Feb28$Elderly_family == 2, "No", NA))
##Health_Insurance
Feb28$Health_Insurance <- ifelse(Feb28$Health_Insurance == 1, "Medicaid", 
                                                ifelse(Feb28$Health_Insurance == 2, "Medicare",
                                                       ifelse(Feb28$Health_Insurance == 3, "Affordable Care Act (Obamacare)",
                                                              ifelse(Feb28$Health_Insurance == 4, "Uninsured",
                                                                     ifelse(Feb28$Health_Insurance == 5, "Private Health_Insurance",
                                                                            ifelse(Feb28$Health_Insurance == 6, "Other",
                                                                                   ifelse(Feb28$Health_Insurance == 7, "Don't Know / Not Sure", NA)))))))
##Conditions_Cancer
Feb28$Conditions_Cancer <- ifelse(Feb28$Conditions_Cancer == 1, "Yes", NA)

##Conditions_Severe_Allergies
Feb28$Conditions_Severe_Allergies <- ifelse(Feb28$Conditions_Severe_Allergies == 1, "Yes", NA)

##Conditions_Seizures
Feb28$Conditions_Seizures <- ifelse(Feb28$Conditions_Seizures == 1, "Yes", NA)

##Conditions_Obesity
Feb28$Conditions_Obesity <- ifelse(Feb28$Conditions_Obesity == 1, "Yes", NA)

##Conditions_Cardio_Disease
Feb28$Conditions_Cardio_Disease <- ifelse(Feb28$Conditions_Cardio_Disease == 1, "Yes", NA)

##Conditions_Rheumatological
Feb28$Conditions_Rheumatological <- ifelse(Feb28$Conditions_Rheumatological == 1, "Yes", NA)

##Conditions_Pulmonary
Feb28$Conditions_Pulmonary <- ifelse(Feb28$Conditions_Pulmonary == 1, "Yes", NA)

##Conditions_Diabetes
Feb28$Conditions_Diabetes <- ifelse(Feb28$Conditions_Diabetes == 1, "Yes", NA)

##Conditions_Immuno
Feb28$Conditions_Immuno <- ifelse(Feb28$Conditions_Immuno == 1, "Yes", NA)

##Conditions_Pregnancy
Feb28$Conditions_Pregnancy <- ifelse(Feb28$Conditions_Pregnancy == 1, "Yes", NA)

##Conditions_Other
Feb28$Conditions_Other <- ifelse(Feb28$Conditions_Other == 1, "Yes", NA)

##Conditions_No_Conditions
Feb28$Conditions_No_Conditions <- ifelse(Feb28$Conditions_No_Conditions == 1, "Yes", NA)

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
##Question_22
Feb28$Question_22 <- ifelse(Feb28$Question_22 == 1, "Yes", 
                            ifelse(Feb28$Question_22 == 2, "No",
                                   ifelse(Feb28$Question_22 == 3, "Not sure",
                                          ifelse(Feb28$Question_22 == 4, "Do not know", NA))))
##Question_23
Feb28$Question_23 <- ifelse(Feb28$Question_23 == 1, "Yes", 
                            ifelse(Feb28$Question_23 == 2, "No",
                                   ifelse(Feb28$Question_23 == 3, "Not sure",
                                          ifelse(Feb28$Question_23 == 4, "Do not know", NA))))
##Question_24
Feb28$Question_24 <- ifelse(Feb28$Question_24 == 1, "Yes", 
                            ifelse(Feb28$Question_24 == 2, "No",
                                   ifelse(Feb28$Question_24 == 3, "Not sure",
                                          ifelse(Feb28$Question_24 == 4, "Do not know", NA))))
##Question_25
Feb28$Question_25 <- ifelse(Feb28$Question_25 == 1, "Yes", 
                            ifelse(Feb28$Question_25 == 2, "No", NA))

##Question_26
Feb28$Question_26 <- ifelse(Feb28$Question_26 == 1, "Yes", 
                            ifelse(Feb28$Question_26 == 2, "No", NA))

##Question_27
Feb28$Question_27 <- ifelse(Feb28$Question_27 == 1, "Yes", 
                            ifelse(Feb28$Question_27 == 2, "No", NA))

##Question_28
Feb28$Question_28 <- ifelse(Feb28$Question_28 == 1, "Yes", 
                            ifelse(Feb28$Question_28 == 2, "No",
                                   ifelse(Feb28$Question_28 == 3, "Not sure",
                                          ifelse(Feb28$Question_28 == 4, "Do not know", NA))))

##Question_29
Feb28$Question_29 <- ifelse(Feb28$Question_29 == 1, "Yes", 
                            ifelse(Feb28$Question_29 == 2, "No", NA))

##Question_30_Physician
Feb28$Question_30_Physician <- 
  ifelse(Feb28$Question_30_Physician == 1, "Yes", NA)

##Question_30_Nurse_Practitioner
Feb28$Question_30_Nurse_Practitioner <- 
  ifelse(Feb28$Question_30_Nurse_Practitioner == 1, "Yes", NA)

##Question_30_Registered_Nurse
Feb28$Question_30_Registered_Nurse <- 
  ifelse(Feb28$Question_30_Registered_Nurse == 1, "Yes", NA)

##Question_30_Community_Health_Advocate
Feb28$Question_30_Community_Health_Advocate <- 
  ifelse(Feb28$Question_30_Community_Health_Advocate == 1, "Yes", NA)

##Question_30_Community_Member
Feb28$Question_30_Community_Member <- 
  ifelse(Feb28$Question_30_Community_Member == 1, "Yes", NA)

##Question_30_Other
Feb28$Question_30_Other <- 
  ifelse(Feb28$Question_30_Other == 1, "Yes", NA)

##Question_32
Feb28$Question_32 <- ifelse(Feb28$Question_32 == 1, "Yes", 
                            ifelse(Feb28$Question_32 == 2, "No",
                                   ifelse(Feb28$Question_32 == 3, "Not sure",
                                          ifelse(Feb28$Question_32 == 4, "Do not know", NA))))

##Question_33
Feb28$Question_33 <- ifelse(Feb28$Question_33 == 1, "Yes", 
                            ifelse(Feb28$Question_33 == 2, "No",
                                   ifelse(Feb28$Question_33 == 3, "Not sure",
                                          ifelse(Feb28$Question_33 == 4, "Do not know", NA))))

##Question_34
Feb28$Question_34 <- ifelse(Feb28$Question_34 == 1, "Yes", 
                            ifelse(Feb28$Question_34 == 2, "No",
                                   ifelse(Feb28$Question_34 == 3, "Not sure",
                                          ifelse(Feb28$Question_34 == 4, "Do not know", NA))))

##Question_35
Feb28$Question_35 <- ifelse(Feb28$Question_35 == 1, "Very confident", 
                            ifelse(Feb28$Question_35 == 2, "Moderately confident",
                                   ifelse(Feb28$Question_35 == 3, "Moderately unconfident",
                                          ifelse(Feb28$Question_35 == 4, "Very unconfident", NA))))

##Question_36
Feb28$Question_36 <- ifelse(Feb28$Question_36 == 1, "local church", 
                                         ifelse(Feb28$Question_36 == 2, "local hospital",
                                                ifelse(Feb28$Question_36 == 3, "local barbershop",
                                                       ifelse(Feb28$Question_36 == 4, "mobile vaccine and/or testing clinics",
                                                              ifelse(Feb28$Question_36 == 5,  "other community event", NA)))))
##Question_38_Handout_flier
Feb28$Question_38_Handout_flier <- 
  ifelse(Feb28$Question_38_Handout_flier == 1, "Yes", NA)

##Question_38_Social_media
Feb28$Question_38_Social_media <- 
  ifelse(Feb28$Question_38_Social_media == 1, "Yes", NA)

##Question_38_Standard_media
Feb28$Question_38_Standard_media <- 
  ifelse(Feb28$Question_38_Standard_media == 1, "Yes", NA)

##Question_38_Community_Health_Advocate
Feb28$Question_38_Community_Health_Advocate <- 
  ifelse(Feb28$Question_38_Community_Health_Advocate == 1, "Yes", NA)

##Question_38_Church_service
Feb28$Question_38_Church_service <- 
  ifelse(Feb28$Question_38_Church_service == 1, "Yes", NA)

##Question_38_Barbershop
Feb28$Question_38_Barbershop <- 
  ifelse(Feb28$Question_38_Barbershop == 1, "Yes", NA)

##Question_38_Community_members
Feb28$Question_38_Community_members <- 
  ifelse(Feb28$Question_38_Community_members == 1, "Yes", NA)

##Question_38_Others
Feb28$Question_38_Others <- 
  ifelse(Feb28$Question_38_Others == 1, "Yes", NA)

##Question_40
Feb28$Question_40 <- ifelse(Feb28$Question_40 == 1, "Yes", 
                            ifelse(Feb28$Question_40 == 2, "No",
                                   ifelse(Feb28$Question_40 == 3, "I do not have childen under 18 in my household", NA)))

##Question_41
Feb28$Question_41 <- ifelse(Feb28$Question_41 == 1, "Yes", 
                            ifelse(Feb28$Question_41 == 2, "No", NA))

##Question_42
Feb28$Question_42 <- ifelse(Feb28$Question_42 == 1, "Yes", 
                            ifelse(Feb28$Question_42 == 2, "No", NA))

##Question_43
Feb28$Question_43 <- ifelse(Feb28$Question_43 == 1, "Yes", 
                                         ifelse(Feb28$Question_43 == 2, "No",
                                                ifelse(Feb28$Question_43 == 3, "Not sure",
                                                       ifelse(Feb28$Question_43 == 4, "Do not know", NA))))
##Question_44
Feb28$Question_44 <- ifelse(Feb28$Question_44 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_44 == 2, "Disagree",
                                   ifelse(Feb28$Question_44 == 3, "Neutral",
                                          ifelse(Feb28$Question_44 == 4, "Agree",
                                                 ifelse(Feb28$Question_44 == 5, "Strongly Agree", NA)))))
##Question_45
Feb28$Question_45 <- ifelse(Feb28$Question_45 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_45 == 2, "Disagree",
                                   ifelse(Feb28$Question_45 == 3, "Neutral",
                                          ifelse(Feb28$Question_45 == 4, "Agree",
                                                 ifelse(Feb28$Question_45 == 5, "Strongly Agree", NA)))))

##Question_46
Feb28$Question_46 <- ifelse(Feb28$Question_46 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_46 == 2, "Disagree",
                                   ifelse(Feb28$Question_46 == 3, "Neutral",
                                          ifelse(Feb28$Question_46 == 4, "Agree",
                                                 ifelse(Feb28$Question_46 == 5, "Strongly Agree", NA)))))

##Question_47
Feb28$Question_47 <- ifelse(Feb28$Question_47 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_47 == 2, "Disagree",
                                   ifelse(Feb28$Question_47 == 3, "Neutral",
                                          ifelse(Feb28$Question_47 == 4, "Agree",
                                                 ifelse(Feb28$Question_47 == 5, "Strongly Agree", NA)))))

##Question_48
Feb28$Question_48 <- ifelse(Feb28$Question_48 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_48 == 2, "Disagree",
                                   ifelse(Feb28$Question_48 == 3, "Neutral",
                                          ifelse(Feb28$Question_48 == 4, "Agree",
                                                 ifelse(Feb28$Question_48 == 5, "Strongly Agree", NA)))))

##Question_49
Feb28$Question_49 <- ifelse(Feb28$Question_49 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_49 == 2, "Disagree",
                                   ifelse(Feb28$Question_49 == 3, "Neutral",
                                          ifelse(Feb28$Question_49 == 4, "Agree",
                                                 ifelse(Feb28$Question_49 == 5, "Strongly Agree", NA)))))

##Question_50
Feb28$Question_50 <- ifelse(Feb28$Question_50 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_50 == 2, "Disagree",
                                   ifelse(Feb28$Question_50 == 3, "Neutral",
                                          ifelse(Feb28$Question_50 == 4, "Agree",
                                                 ifelse(Feb28$Question_50 == 5, "Strongly Agree", NA)))))

##Question_51
Feb28$Question_51 <- ifelse(Feb28$Question_51 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_51 == 2, "Disagree",
                                   ifelse(Feb28$Question_51 == 3, "Neutral",
                                          ifelse(Feb28$Question_51 == 4, "Agree",
                                                 ifelse(Feb28$Question_51 == 5, "Strongly Agree", NA)))))

##Question_52
Feb28$Question_52 <- ifelse(Feb28$Question_52 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_52 == 2, "Disagree",
                                   ifelse(Feb28$Question_52 == 3, "Neutral",
                                          ifelse(Feb28$Question_52 == 4, "Agree",
                                                 ifelse(Feb28$Question_52 == 5, "Strongly Agree", NA)))))

##Question_53
Feb28$Question_53 <- ifelse(Feb28$Question_53 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_53 == 2, "Disagree",
                                   ifelse(Feb28$Question_53 == 3, "Neutral",
                                          ifelse(Feb28$Question_53 == 4, "Agree",
                                                 ifelse(Feb28$Question_53 == 5, "Strongly Agree", NA)))))

##Question_54
Feb28$Question_54 <- ifelse(Feb28$Question_54 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_54 == 2, "Disagree",
                                   ifelse(Feb28$Question_54 == 3, "Neutral",
                                          ifelse(Feb28$Question_54 == 4, "Agree",
                                                 ifelse(Feb28$Question_54 == 5, "Strongly Agree", NA)))))

##Question_55
Feb28$Question_55 <- ifelse(Feb28$Question_55 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_55 == 2, "Disagree",
                                   ifelse(Feb28$Question_55 == 3, "Neutral",
                                          ifelse(Feb28$Question_55 == 4, "Agree",
                                                 ifelse(Feb28$Question_55 == 5, "Strongly Agree", NA)))))

##Question_56
Feb28$Question_56 <- ifelse(Feb28$Question_56 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_56 == 2, "Disagree",
                                   ifelse(Feb28$Question_56 == 3, "Neutral",
                                          ifelse(Feb28$Question_56 == 4, "Agree",
                                                 ifelse(Feb28$Question_56 == 5, "Strongly Agree", NA)))))

##Question_57
Feb28$Question_57 <- ifelse(Feb28$Question_57 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_57 == 2, "Disagree",
                                   ifelse(Feb28$Question_57 == 3, "Neutral",
                                          ifelse(Feb28$Question_57 == 4, "Agree",
                                                 ifelse(Feb28$Question_57 == 5, "Strongly Agree", NA)))))

##Question_58
Feb28$Question_58 <- ifelse(Feb28$Question_58 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_58 == 2, "Disagree",
                                   ifelse(Feb28$Question_58 == 3, "Neutral",
                                          ifelse(Feb28$Question_58 == 4, "Agree",
                                                 ifelse(Feb28$Question_58 == 5, "Strongly Agree", NA)))))

##Question_59
Feb28$Question_59 <- ifelse(Feb28$Question_59 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_59 == 2, "Disagree",
                                   ifelse(Feb28$Question_59 == 3, "Neutral",
                                          ifelse(Feb28$Question_59 == 4, "Agree",
                                                 ifelse(Feb28$Question_59 == 5, "Strongly Agree", NA)))))

##Question_60
Feb28$Question_60 <- ifelse(Feb28$Question_60 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_60 == 2, "Disagree",
                                   ifelse(Feb28$Question_60 == 3, "Neutral",
                                          ifelse(Feb28$Question_60 == 4, "Agree",
                                                 ifelse(Feb28$Question_60 == 5, "Strongly Agree", NA)))))

##Question_61
Feb28$Question_61 <- ifelse(Feb28$Question_61 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_61 == 2, "Disagree",
                                   ifelse(Feb28$Question_61 == 3, "Neutral",
                                          ifelse(Feb28$Question_61 == 4, "Agree",
                                                 ifelse(Feb28$Question_61 == 5, "Strongly Agree", NA)))))

##Question_62
Feb28$Question_62 <- ifelse(Feb28$Question_62 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_62 == 2, "Disagree",
                                   ifelse(Feb28$Question_62 == 3, "Neutral",
                                          ifelse(Feb28$Question_62 == 4, "Agree",
                                                 ifelse(Feb28$Question_62 == 5, "Strongly Agree", NA)))))

##Question_63
Feb28$Question_63 <- ifelse(Feb28$Question_63 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_63 == 2, "Disagree",
                                   ifelse(Feb28$Question_63 == 3, "Neutral",
                                          ifelse(Feb28$Question_63 == 4, "Agree",
                                                 ifelse(Feb28$Question_63 == 5, "Strongly Agree", NA)))))

##Question_64
Feb28$Question_64 <- ifelse(Feb28$Question_64 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_64 == 2, "Disagree",
                                   ifelse(Feb28$Question_64 == 3, "Neutral",
                                          ifelse(Feb28$Question_64 == 4, "Agree",
                                                 ifelse(Feb28$Question_64 == 5, "Strongly Agree", NA)))))

##Question_65
Feb28$Question_65 <- ifelse(Feb28$Question_65 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_65 == 2, "Disagree",
                                   ifelse(Feb28$Question_65 == 3, "Neutral",
                                          ifelse(Feb28$Question_65 == 4, "Agree",
                                                 ifelse(Feb28$Question_65 == 5, "Strongly Agree", NA)))))

##Question_66
Feb28$Question_66 <- ifelse(Feb28$Question_66 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_66 == 2, "Disagree",
                                   ifelse(Feb28$Question_66 == 3, "Neutral",
                                          ifelse(Feb28$Question_66 == 4, "Agree",
                                                 ifelse(Feb28$Question_66 == 5, "Strongly Agree", NA)))))

##Question_67
Feb28$Question_67 <- ifelse(Feb28$Question_67 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_67 == 2, "Disagree",
                                   ifelse(Feb28$Question_67 == 3, "Neutral",
                                          ifelse(Feb28$Question_67 == 4, "Agree",
                                                 ifelse(Feb28$Question_67 == 5, "Strongly Agree", NA)))))
##Question_68
Feb28$Question_68 <- ifelse(Feb28$Question_68 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_68 == 2, "Disagree",
                                   ifelse(Feb28$Question_68 == 3, "Neutral",
                                          ifelse(Feb28$Question_68 == 4, "Agree",
                                                 ifelse(Feb28$Question_68 == 5, "Strongly Agree", NA)))))
##Question_69
Feb28$Question_69 <- ifelse(Feb28$Question_69 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_69 == 2, "Disagree",
                                   ifelse(Feb28$Question_69 == 3, "Neutral",
                                          ifelse(Feb28$Question_69 == 4, "Agree",
                                                 ifelse(Feb28$Question_69 == 5, "Strongly Agree", NA)))))

##Question_70
Feb28$Question_70 <- ifelse(Feb28$Question_70 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_70 == 2, "Disagree",
                                   ifelse(Feb28$Question_70 == 3, "Neutral",
                                          ifelse(Feb28$Question_70 == 4, "Agree",
                                                 ifelse(Feb28$Question_70 == 5, "Strongly Agree", NA)))))
##Question_71
Feb28$Question_71 <- ifelse(Feb28$Question_71 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_71 == 2, "Disagree",
                                   ifelse(Feb28$Question_71 == 3, "Neutral",
                                          ifelse(Feb28$Question_71 == 4, "Agree",
                                                 ifelse(Feb28$Question_71 == 5, "Strongly Agree", NA)))))

##Question_72
Feb28$Question_72 <- ifelse(Feb28$Question_72 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_72 == 2, "Disagree",
                                   ifelse(Feb28$Question_72 == 3, "Neutral",
                                          ifelse(Feb28$Question_72 == 4, "Agree",
                                                 ifelse(Feb28$Question_72 == 5, "Strongly Agree", NA)))))

##Question_73
Feb28$Question_73 <- ifelse(Feb28$Question_73 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_73 == 2, "Disagree",
                                   ifelse(Feb28$Question_73 == 3, "Neutral",
                                          ifelse(Feb28$Question_73 == 4, "Agree",
                                                 ifelse(Feb28$Question_73 == 5, "Strongly Agree", NA)))))

##Question_74
Feb28$Question_74 <- ifelse(Feb28$Question_74 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_74 == 2, "Disagree",
                                   ifelse(Feb28$Question_74 == 3, "Neutral",
                                          ifelse(Feb28$Question_74 == 4, "Agree",
                                                 ifelse(Feb28$Question_74 == 5, "Strongly Agree", NA)))))

##Question_75
Feb28$Question_75 <- ifelse(Feb28$Question_75 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_75 == 2, "Disagree",
                                   ifelse(Feb28$Question_75 == 3, "Neutral",
                                          ifelse(Feb28$Question_75 == 4, "Agree",
                                                 ifelse(Feb28$Question_75 == 5, "Strongly Agree", NA)))))

##Question_76
Feb28$Question_76 <- ifelse(Feb28$Question_76 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_76 == 2, "Disagree",
                                   ifelse(Feb28$Question_76 == 3, "Neutral",
                                          ifelse(Feb28$Question_76 == 4, "Agree",
                                                 ifelse(Feb28$Question_76 == 5, "Strongly Agree", NA)))))

##Question_77
Feb28$Question_77 <- ifelse(Feb28$Question_77 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_77 == 2, "Disagree",
                                   ifelse(Feb28$Question_77 == 3, "Neutral",
                                          ifelse(Feb28$Question_77 == 4, "Agree",
                                                 ifelse(Feb28$Question_77 == 5, "Strongly Agree", NA)))))

##Question_78
Feb28$Question_78 <- ifelse(Feb28$Question_78 == 1, "Strongly Disagree", 
                            ifelse(Feb28$Question_78 == 2, "Disagree",
                                   ifelse(Feb28$Question_78 == 3, "Neutral",
                                          ifelse(Feb28$Question_78 == 4, "Agree",
                                                 ifelse(Feb28$Question_78 == 5, "Strongly Agree", NA)))))

##data_source
Feb28$data_source <- ifelse(Feb28$data_source == 1, "Pen and Paper survey", 
                            ifelse(Feb28$data_source == 2, "Pen and Paper survey",
                                   ifelse(Feb28$data_source == 3, "Qualtrics", NA)))

#saving clean data to cleandata folder
save_data_location = here("Primary Data Analysis ASU", "descriptive_summary_asu","Data", "cleandata", "Feb28.rds")
saveRDS(Feb28, file = save_data_location)