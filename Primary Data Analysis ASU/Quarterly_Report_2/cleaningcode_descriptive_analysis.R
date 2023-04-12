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
location = here("Primary Data Analysis ASU","APHA", "Data", "cleandata", "asu_merged.xlsx")

#naming the rawdata 
asu_merged = read_excel(location)


#removing the space from the Health_Insurance variable name 
colnames(asu_merged)[which(names(asu_merged) == "Health Insurance")] <- "Health_Insurance"

#coping the data set and identifying it by the date it was merged 
April11 = asu_merged


#changing all values to missing of Number_of_children_1, Number_of_children_2 and Number_of_children_3 when Children was answered "No" (2)
April11$Number_children_1[April11$Children == 2 ] <- "*"
April11$Number_children_2[April11$Children == 2 ] <- "*"
April11$Number_children_3[April11$Children == 2 ] <- "*"

#if participants answered "no" to having kids in household then their answer to "Did your 
  #child or children also receive the COVID-19 vaccine today?" should be answer 3 or 
    "I do not have children under 18 in my household"
April11$Question_40[April11$Children == 2 ] <- "3"

#if participant is 65+ in age then the question "do you have elderly memebers in your family
  #/household?" should be answered yes 
April11$Elderly_family[April11$Age == 6 ] <- "1"
April11$Elderly_family[April11$Age == 7 ] <- "1"

#changing all values to missing of Number_elderly_1, Number_elderly_2 Elderly_family was answered "No" (2)
April11$Number_elderly_1[April11$Elderly_family == 2 ] <- "*"
April11$Number_elderly_2[April11$Elderly_family == 2 ] <- "*"


#changing all values that follow question 1(Q2.1) if this question was completed as either: no, not sure or do not know then mark Question 2 - Question 14 as missing 
April11$Question_2[April11$Question_1 > 1 ] <- "*"
April11$Question_3[April11$Question_1 > 1 ] <- "*"
April11$Question_4[April11$Question_1 > 1 ] <- "*"
April11$Question_5[April11$Question_1 > 1 ] <- "*"
April11$Question_6[April11$Question_1 > 1 ] <- "*"
April11$Question_7[April11$Question_1 > 1 ] <- "*"
April11$Question_8[April11$Question_1 > 1 ] <- "*"
April11$Question_9[April11$Question_1 > 1 ] <- "*"
April11$Question_10[April11$Question_1 > 1 ] <- "*"
April11$Question_11[April11$Question_1 > 1 ] <- "*"
April11$Question_12[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Fever[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Cough[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Shortness_of_breath[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Fatigue[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Muscle_Body_Aches[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Headache[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Loss_of_Taste[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Sore_Throat[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Congestion[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Nausea[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Diarrhea[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Asymptomatic[April11$Question_1 > 1 ] <- "*"
April11$Question_13_Other[April11$Question_1 > 1 ] <- "*"
April11$Question_14[April11$Question_1 > 1 ] <- "*"

#If question 22 (3.1) was reported as No, Not Sure or do not know then question 23 (3.2) should be reported as misssing 
April11$Question_23[April11$Question_22 > 1 ] <- "*"

#If question 25 (3.7) was reported as yes then Question 27 (were you vaccinated in the past), Question 28 (Do you plan to get vaccinated in the near future) and Question 29 (If/When you decide to get vaccinated, do you know where to get a vaccine) should all be missing 
April11$Question_27[April11$Question_25 == 1 ] <- "*"
April11$Question_28[April11$Question_25 == 1 ] <- "*"
April11$Question_29[April11$Question_25 == 1 ] <- "*"

#If question 25 was reported as no then question 26 (was this your first dose) should be reported as missing 
April11$Question_26[April11$Question_25 > 1 ] <- "*"

#if question 27(were you vaccinated in the past) was answered yes then question 28(Do you plan to get vaccinated in the near future) and Question 29 (If/When you decide to get vaccinated, do you know where to get a vaccine) should be missing 
April11$Question_28[April11$Question_27 == 1 ] <- "*"
April11$Question_29[April11$Question_27 == 1 ] <- "*"

#if question 40 (did your child or children also get the vaccine today?) was reported as yes then question 42 (was your child vaccinated in the past) and question 43 (do you plan to get your child vaccinated in the near future) should both be missing 
April11$Question_42[April11$Question_40 == 1 ] <- "*"
April11$Question_43[April11$Question_40 == 1 ] <- "*"

#if question 40 was reported as no or as "I do not have children under 18 in my household" then question 41 (was the dose your child received their first dose)should be missing 
April11$Question_41[April11$Question_40 > 1 ] <- "*"

#if question 42 was reported as yes then question 43 should be missing 
April11$Question_43[April11$Question_42 == 1 ] <- "*"

#changing numeric responses to characters for data summary
#doing this so we do not have to turn to the code book for interpretation

##Gender
April11$Gender <- ifelse(April11$Gender == 1, "Male", 
                       ifelse(April11$Gender == 2, "Female",
                              ifelse(April11$Gender == 3, "I would rather not specify", NA)))

##Age
April11$Age <- ifelse(April11$Age == 1, "18-24 years old", 
                                 ifelse(April11$Age == 2, "25-34 years old",
                                        ifelse(April11$Age == 3, "35-46 years old",
                                               ifelse(April11$Age == 4, "45-54 years old",
                                                      ifelse(April11$Age == 5, "55-64 years old",
                                                             ifelse(April11$Age == 6, "65-74 years old",
                                                                    ifelse(April11$Age == 7, "75 years or older", NA)))))))
##Race_Ethnicity
April11$Race_Ethnicity <- ifelse(April11$Race_Ethnicity == 1, "African American", 
                                            ifelse(April11$Race_Ethnicity == 2, "Caucasian",
                                                   ifelse(April11$Race_Ethnicity == 3, "Latino or Hispanic",
                                                          ifelse(April11$Race_Ethnicity == 4, "Asian",
                                                                 ifelse(April11$Race_Ethnicity == 5, "Native American",
                                                                        ifelse(April11$Race_Ethnicity == 6, "Other", NA))))))

##Education
April11$Education <- ifelse(April11$Education == 1, "Less than High School", 
                          ifelse(April11$Education == 2, "High School",
                                 ifelse(April11$Education == 3, "Bachelor's Degree or higher", NA)))

##Language
April11$Language <- ifelse(April11$Language == 1, "English", 
                         ifelse(April11$Language == 2, "Spanish",
                                ifelse(April11$Language == 3, "Other", NA)))
##Income
April11$Income <- ifelse(April11$Income == 1, "Less than $25,000", 
                       ifelse(April11$Income == 2, "$25,000-$50,000",
                              ifelse(April11$Income == 3, "$50,000-$100,000",
                                     ifelse(April11$Income == 4, "More than $100,000", NA))))

##Family_household
April11$Family_household <- ifelse(April11$Family_household == 1, 1, 
                                 ifelse(April11$Family_household == 2, 2,
                                        ifelse(April11$Family_household == 3, 3,
                                               ifelse(April11$Family_household == 4, 4,
                                                      ifelse(April11$Family_household == 5, "5 or more", NA)))))
##Children
April11$Children <- ifelse(April11$Children == 1, "Yes", 
                         ifelse(April11$Children == 2, "No", NA))
##Elderly_family
April11$Elderly_family <- ifelse(April11$Elderly_family == 1, "Yes", 
                               ifelse(April11$Elderly_family == 2, "No", NA))
##Health_Insurance
April11$Health_Insurance <- ifelse(April11$Health_Insurance == 1, "Medicaid", 
                                                ifelse(April11$Health_Insurance == 2, "Medicare",
                                                       ifelse(April11$Health_Insurance == 3, "Affordable Care Act (Obamacare)",
                                                              ifelse(April11$Health_Insurance == 4, "Uninsured",
                                                                     ifelse(April11$Health_Insurance == 5, "Private Health_Insurance",
                                                                            ifelse(April11$Health_Insurance == 6, "Other",
                                                                                   ifelse(April11$Health_Insurance == 7, "Don't Know / Not Sure", NA)))))))
##Conditions_Cancer
April11$Conditions_Cancer <- ifelse(April11$Conditions_Cancer == 1, "Yes", NA)

##Conditions_Severe_Allergies
April11$Conditions_Severe_Allergies <- ifelse(April11$Conditions_Severe_Allergies == 1, "Yes", NA)

##Conditions_Seizures
April11$Conditions_Seizures <- ifelse(April11$Conditions_Seizures == 1, "Yes", NA)

##Conditions_Obesity
April11$Conditions_Obesity <- ifelse(April11$Conditions_Obesity == 1, "Yes", NA)

##Conditions_Cardio_Disease
April11$Conditions_Cardio_Disease <- ifelse(April11$Conditions_Cardio_Disease == 1, "Yes", NA)

##Conditions_Rheumatological
April11$Conditions_Rheumatological <- ifelse(April11$Conditions_Rheumatological == 1, "Yes", NA)

##Conditions_Pulmonary
April11$Conditions_Pulmonary <- ifelse(April11$Conditions_Pulmonary == 1, "Yes", NA)

##Conditions_Diabetes
April11$Conditions_Diabetes <- ifelse(April11$Conditions_Diabetes == 1, "Yes", NA)

##Conditions_Immuno
April11$Conditions_Immuno <- ifelse(April11$Conditions_Immuno == 1, "Yes", NA)

##Conditions_Pregnancy
April11$Conditions_Pregnancy <- ifelse(April11$Conditions_Pregnancy == 1, "Yes", NA)

##Conditions_Other
April11$Conditions_Other <- ifelse(April11$Conditions_Other == 1, "Yes", NA)

##Conditions_No_Conditions
April11$Conditions_No_Conditions <- ifelse(April11$Conditions_No_Conditions == 1, "Yes", NA)

##Question_1
April11$Question_1 <- ifelse(April11$Question_1 == 1, "Yes", 
                           ifelse(April11$Question_1 == 2, "No",
                                  ifelse(April11$Question_1 == 3, "Not sure",
                                         ifelse(April11$Question_1 == 4, "Do not know", NA))))
##Question_13_Fever
April11$Question_13_Fever <- ifelse(April11$Question_13_Fever == 1, "Yes", NA)

##Question_13_Cough
April11$Question_13_Cough <- ifelse(April11$Question_13_Cough == 1, "Yes", NA)

##Question_13_Shortness_of_breath
April11$Question_13_Shortness_of_breath <- 
  ifelse(April11$Question_13_Shortness_of_breath == 1, "Yes", NA)

##Question_13_Fatigue
April11$Question_13_Fatigue <- 
  ifelse(April11$Question_13_Fatigue == 1, "Yes", NA)

##Question_13_Muscle_Body_Aches
April11$Question_13_Muscle_Body_Aches <- 
  ifelse(April11$Question_13_Muscle_Body_Aches == 1, "Yes", NA)

##Question_13_Headache
April11$Question_13_Headache <- 
  ifelse(April11$Question_13_Headache == 1, "Yes", NA)

##Question_13_Loss_of_Taste
April11$Question_13_Loss_of_Taste <- 
  ifelse(April11$Question_13_Loss_of_Taste == 1, "Yes", NA)

##Question_13_Sore_Throat
April11$Question_13_Sore_Throat <- 
  ifelse(April11$Question_13_Sore_Throat == 1, "Yes", NA)

##Question_13_Congestion
April11$Question_13_Congestion <- 
  ifelse(April11$Question_13_Congestion == 1, "Yes", NA)

##Question_13_Nausea
April11$Question_13_Nausea <- 
  ifelse(April11$Question_13_Nausea == 1, "Yes", NA)

##Question_13_Diarrhea
April11$Question_13_Diarrhea <- 
  ifelse(April11$Question_13_Diarrhea == 1, "Yes", NA)

##Question_13_Asymptomatic
April11$Question_13_Asymptomatic <- 
  ifelse(April11$Question_13_Asymptomatic == 1, "Yes", NA)

##Question_13_Other
April11$Question_13_Other <- 
  ifelse(April11$Question_13_Other == 1, "Yes", NA)

##Question_15
April11$Question_15 <- ifelse(April11$Question_15 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_15 == 2, "Disagree",
                                   ifelse(April11$Question_15 == 3, "Neutral",
                                          ifelse(April11$Question_15 == 4, "Agree",
                                                 ifelse(April11$Question_15 == 5, "Strongly Agree", NA)))))
##Question_16
April11$Question_16 <- ifelse(April11$Question_16 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_16 == 2, "Disagree",
                                   ifelse(April11$Question_16 == 3, "Neutral",
                                          ifelse(April11$Question_16 == 4, "Agree",
                                                 ifelse(April11$Question_16 == 5, "Strongly Agree", NA)))))
##Question_17
April11$Question_17 <- ifelse(April11$Question_17 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_17 == 2, "Disagree",
                                   ifelse(April11$Question_17 == 3, "Neutral",
                                          ifelse(April11$Question_17 == 4, "Agree",
                                                 ifelse(April11$Question_17 == 5, "Strongly Agree", NA)))))
##Question_18
April11$Question_18 <- ifelse(April11$Question_18 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_18 == 2, "Disagree",
                                   ifelse(April11$Question_18 == 3, "Neutral",
                                          ifelse(April11$Question_18 == 4, "Agree",
                                                 ifelse(April11$Question_18 == 5, "Strongly Agree", NA)))))
##Question_19
April11$Question_19 <- ifelse(April11$Question_19 == 1, "Yes", 
                            ifelse(April11$Question_19 == 2, "No",
                                   ifelse(April11$Question_19 == 3, "Not sure",
                                          ifelse(April11$Question_19 == 4, "Do not know", NA))))
##Question_20_Basic_Health 
April11$Question_20_Basic_Health <- 
  ifelse(April11$Question_20_Basic_Health == 1, "Yes", NA)

##Question_20_COVID_19_Vacc 
April11$Question_20_COVID_19_Vacc <- 
  ifelse(April11$Question_20_COVID_19_Vacc == 1, "Yes", NA)

##Question_20_Improving_ventilation 
April11$Question_20_Improving_ventilation <- 
  ifelse(April11$Question_20_Improving_ventilation == 1, "Yes", NA)

##Question_20_Getting_tested 
April11$Question_20_Getting_tested <- 
  ifelse(April11$Question_20_Getting_tested == 1, "Yes", NA)

##Question_20_Following_recommendations
April11$Question_20_Following_recommendations <- 
  ifelse(April11$Question_20_Following_recommendations == 1, "Yes", NA)

##Question_20_Staying_home
April11$Question_20_Staying_home <- 
  ifelse(April11$Question_20_Staying_home == 1, "Yes", NA)

##Question_20_Seeking
April11$Question_20_Seeking <- 
  ifelse(April11$Question_20_Seeking == 1, "Yes", NA)

##Question_20_Avoiding
April11$Question_20_Avoiding <- 
  ifelse(April11$Question_20_Avoiding == 1, "Yes", NA)

##Question_21
April11$Question_21 <- ifelse(April11$Question_21 == 1, "Yes", 
                            ifelse(April11$Question_21 == 2, "No",
                                   ifelse(April11$Question_21 == 3, "Not sure",
                                          ifelse(April11$Question_21 == 4, "Do not know", NA))))
##Question_22
April11$Question_22 <- ifelse(April11$Question_22 == 1, "Yes", 
                            ifelse(April11$Question_22 == 2, "No",
                                   ifelse(April11$Question_22 == 3, "Not sure",
                                          ifelse(April11$Question_22 == 4, "Do not know", NA))))
##Question_23
April11$Question_23 <- ifelse(April11$Question_23 == 1, "Yes", 
                            ifelse(April11$Question_23 == 2, "No",
                                   ifelse(April11$Question_23 == 3, "Not sure",
                                          ifelse(April11$Question_23 == 4, "Do not know", NA))))
##Question_24
April11$Question_24 <- ifelse(April11$Question_24 == 1, "Yes", 
                            ifelse(April11$Question_24 == 2, "No",
                                   ifelse(April11$Question_24 == 3, "Not sure",
                                          ifelse(April11$Question_24 == 4, "Do not know", NA))))
##Question_25
April11$Question_25 <- ifelse(April11$Question_25 == 1, "Yes", 
                            ifelse(April11$Question_25 == 2, "No", NA))

##Question_26
April11$Question_26 <- ifelse(April11$Question_26 == 1, "Yes", 
                            ifelse(April11$Question_26 == 2, "No", NA))

##Question_27
April11$Question_27 <- ifelse(April11$Question_27 == 1, "Yes", 
                            ifelse(April11$Question_27 == 2, "No", NA))

##Question_28
April11$Question_28 <- ifelse(April11$Question_28 == 1, "Yes", 
                            ifelse(April11$Question_28 == 2, "No",
                                   ifelse(April11$Question_28 == 3, "Not sure",
                                          ifelse(April11$Question_28 == 4, "Do not know", NA))))

##Question_29
April11$Question_29 <- ifelse(April11$Question_29 == 1, "Yes", 
                            ifelse(April11$Question_29 == 2, "No", NA))

##Question_30_Physician
April11$Question_30_Physician <- 
  ifelse(April11$Question_30_Physician == 1, "Yes", NA)

##Question_30_Nurse_Practitioner
April11$Question_30_Nurse_Practitioner <- 
  ifelse(April11$Question_30_Nurse_Practitioner == 1, "Yes", NA)

##Question_30_Registered_Nurse
April11$Question_30_Registered_Nurse <- 
  ifelse(April11$Question_30_Registered_Nurse == 1, "Yes", NA)

##Question_30_Community_Health_Advocate
April11$Question_30_Community_Health_Advocate <- 
  ifelse(April11$Question_30_Community_Health_Advocate == 1, "Yes", NA)

##Question_30_Community_Member
April11$Question_30_Community_Member <- 
  ifelse(April11$Question_30_Community_Member == 1, "Yes", NA)

##Question_30_Other
April11$Question_30_Other <- 
  ifelse(April11$Question_30_Other == 1, "Yes", NA)

##Question_32
April11$Question_32 <- ifelse(April11$Question_32 == 1, "Yes", 
                            ifelse(April11$Question_32 == 2, "No",
                                   ifelse(April11$Question_32 == 3, "Not sure",
                                          ifelse(April11$Question_32 == 4, "Do not know", NA))))

##Question_33
April11$Question_33 <- ifelse(April11$Question_33 == 1, "Yes", 
                            ifelse(April11$Question_33 == 2, "No",
                                   ifelse(April11$Question_33 == 3, "Not sure",
                                          ifelse(April11$Question_33 == 4, "Do not know", NA))))

##Question_34
April11$Question_34 <- ifelse(April11$Question_34 == 1, "Yes", 
                            ifelse(April11$Question_34 == 2, "No",
                                   ifelse(April11$Question_34 == 3, "Not sure",
                                          ifelse(April11$Question_34 == 4, "Do not know", NA))))

##Question_35
April11$Question_35 <- ifelse(April11$Question_35 == 1, "Very confident", 
                            ifelse(April11$Question_35 == 2, "Moderately confident",
                                   ifelse(April11$Question_35 == 3, "Moderately unconfident",
                                          ifelse(April11$Question_35 == 4, "Very unconfident", NA))))

##Question_36
April11$Question_36 <- ifelse(April11$Question_36 == 1, "local church", 
                                         ifelse(April11$Question_36 == 2, "local hospital",
                                                ifelse(April11$Question_36 == 3, "local barbershop",
                                                       ifelse(April11$Question_36 == 4, "mobile vaccine and/or testing clinics",
                                                              ifelse(April11$Question_36 == 5,  "other community event", NA)))))
##Question_38_Handout_flier
April11$Question_38_Handout_flier <- 
  ifelse(April11$Question_38_Handout_flier == 1, "Yes", NA)

##Question_38_Social_media
April11$Question_38_Social_media <- 
  ifelse(April11$Question_38_Social_media == 1, "Yes", NA)

##Question_38_Standard_media
April11$Question_38_Standard_media <- 
  ifelse(April11$Question_38_Standard_media == 1, "Yes", NA)

##Question_38_Community_Health_Advocate
April11$Question_38_Community_Health_Advocate <- 
  ifelse(April11$Question_38_Community_Health_Advocate == 1, "Yes", NA)

##Question_38_Church_service
April11$Question_38_Church_service <- 
  ifelse(April11$Question_38_Church_service == 1, "Yes", NA)

##Question_38_Barbershop
April11$Question_38_Barbershop <- 
  ifelse(April11$Question_38_Barbershop == 1, "Yes", NA)

##Question_38_Community_members
April11$Question_38_Community_members <- 
  ifelse(April11$Question_38_Community_members == 1, "Yes", NA)

##Question_38_Others
April11$Question_38_Others <- 
  ifelse(April11$Question_38_Others == 1, "Yes", NA)

##Question_40
April11$Question_40 <- ifelse(April11$Question_40 == 1, "Yes", 
                            ifelse(April11$Question_40 == 2, "No",
                                   ifelse(April11$Question_40 == 3, "I do not have childen under 18 in my household", NA)))

##Question_41
April11$Question_41 <- ifelse(April11$Question_41 == 1, "Yes", 
                            ifelse(April11$Question_41 == 2, "No", NA))

##Question_42
April11$Question_42 <- ifelse(April11$Question_42 == 1, "Yes", 
                            ifelse(April11$Question_42 == 2, "No", NA))

##Question_43
April11$Question_43 <- ifelse(April11$Question_43 == 1, "Yes", 
                                         ifelse(April11$Question_43 == 2, "No",
                                                ifelse(April11$Question_43 == 3, "Not sure",
                                                       ifelse(April11$Question_43 == 4, "Do not know", NA))))
##Question_44
April11$Question_44 <- ifelse(April11$Question_44 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_44 == 2, "Disagree",
                                   ifelse(April11$Question_44 == 3, "Neutral",
                                          ifelse(April11$Question_44 == 4, "Agree",
                                                 ifelse(April11$Question_44 == 5, "Strongly Agree", NA)))))
##Question_45
April11$Question_45 <- ifelse(April11$Question_45 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_45 == 2, "Disagree",
                                   ifelse(April11$Question_45 == 3, "Neutral",
                                          ifelse(April11$Question_45 == 4, "Agree",
                                                 ifelse(April11$Question_45 == 5, "Strongly Agree", NA)))))

##Question_46
April11$Question_46 <- ifelse(April11$Question_46 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_46 == 2, "Disagree",
                                   ifelse(April11$Question_46 == 3, "Neutral",
                                          ifelse(April11$Question_46 == 4, "Agree",
                                                 ifelse(April11$Question_46 == 5, "Strongly Agree", NA)))))

##Question_47
April11$Question_47 <- ifelse(April11$Question_47 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_47 == 2, "Disagree",
                                   ifelse(April11$Question_47 == 3, "Neutral",
                                          ifelse(April11$Question_47 == 4, "Agree",
                                                 ifelse(April11$Question_47 == 5, "Strongly Agree", NA)))))

##Question_48
April11$Question_48 <- ifelse(April11$Question_48 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_48 == 2, "Disagree",
                                   ifelse(April11$Question_48 == 3, "Neutral",
                                          ifelse(April11$Question_48 == 4, "Agree",
                                                 ifelse(April11$Question_48 == 5, "Strongly Agree", NA)))))

##Question_49
April11$Question_49 <- ifelse(April11$Question_49 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_49 == 2, "Disagree",
                                   ifelse(April11$Question_49 == 3, "Neutral",
                                          ifelse(April11$Question_49 == 4, "Agree",
                                                 ifelse(April11$Question_49 == 5, "Strongly Agree", NA)))))

##Question_50
April11$Question_50 <- ifelse(April11$Question_50 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_50 == 2, "Disagree",
                                   ifelse(April11$Question_50 == 3, "Neutral",
                                          ifelse(April11$Question_50 == 4, "Agree",
                                                 ifelse(April11$Question_50 == 5, "Strongly Agree", NA)))))

##Question_51
April11$Question_51 <- ifelse(April11$Question_51 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_51 == 2, "Disagree",
                                   ifelse(April11$Question_51 == 3, "Neutral",
                                          ifelse(April11$Question_51 == 4, "Agree",
                                                 ifelse(April11$Question_51 == 5, "Strongly Agree", NA)))))

##Question_52
April11$Question_52 <- ifelse(April11$Question_52 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_52 == 2, "Disagree",
                                   ifelse(April11$Question_52 == 3, "Neutral",
                                          ifelse(April11$Question_52 == 4, "Agree",
                                                 ifelse(April11$Question_52 == 5, "Strongly Agree", NA)))))

##Question_53
April11$Question_53 <- ifelse(April11$Question_53 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_53 == 2, "Disagree",
                                   ifelse(April11$Question_53 == 3, "Neutral",
                                          ifelse(April11$Question_53 == 4, "Agree",
                                                 ifelse(April11$Question_53 == 5, "Strongly Agree", NA)))))

##Question_54
April11$Question_54 <- ifelse(April11$Question_54 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_54 == 2, "Disagree",
                                   ifelse(April11$Question_54 == 3, "Neutral",
                                          ifelse(April11$Question_54 == 4, "Agree",
                                                 ifelse(April11$Question_54 == 5, "Strongly Agree", NA)))))

##Question_55
April11$Question_55 <- ifelse(April11$Question_55 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_55 == 2, "Disagree",
                                   ifelse(April11$Question_55 == 3, "Neutral",
                                          ifelse(April11$Question_55 == 4, "Agree",
                                                 ifelse(April11$Question_55 == 5, "Strongly Agree", NA)))))

##Question_56
April11$Question_56 <- ifelse(April11$Question_56 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_56 == 2, "Disagree",
                                   ifelse(April11$Question_56 == 3, "Neutral",
                                          ifelse(April11$Question_56 == 4, "Agree",
                                                 ifelse(April11$Question_56 == 5, "Strongly Agree", NA)))))

##Question_57
April11$Question_57 <- ifelse(April11$Question_57 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_57 == 2, "Disagree",
                                   ifelse(April11$Question_57 == 3, "Neutral",
                                          ifelse(April11$Question_57 == 4, "Agree",
                                                 ifelse(April11$Question_57 == 5, "Strongly Agree", NA)))))

##Question_58
April11$Question_58 <- ifelse(April11$Question_58 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_58 == 2, "Disagree",
                                   ifelse(April11$Question_58 == 3, "Neutral",
                                          ifelse(April11$Question_58 == 4, "Agree",
                                                 ifelse(April11$Question_58 == 5, "Strongly Agree", NA)))))

##Question_59
April11$Question_59 <- ifelse(April11$Question_59 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_59 == 2, "Disagree",
                                   ifelse(April11$Question_59 == 3, "Neutral",
                                          ifelse(April11$Question_59 == 4, "Agree",
                                                 ifelse(April11$Question_59 == 5, "Strongly Agree", NA)))))

##Question_60
April11$Question_60 <- ifelse(April11$Question_60 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_60 == 2, "Disagree",
                                   ifelse(April11$Question_60 == 3, "Neutral",
                                          ifelse(April11$Question_60 == 4, "Agree",
                                                 ifelse(April11$Question_60 == 5, "Strongly Agree", NA)))))

##Question_61
April11$Question_61 <- ifelse(April11$Question_61 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_61 == 2, "Disagree",
                                   ifelse(April11$Question_61 == 3, "Neutral",
                                          ifelse(April11$Question_61 == 4, "Agree",
                                                 ifelse(April11$Question_61 == 5, "Strongly Agree", NA)))))

##Question_62
April11$Question_62 <- ifelse(April11$Question_62 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_62 == 2, "Disagree",
                                   ifelse(April11$Question_62 == 3, "Neutral",
                                          ifelse(April11$Question_62 == 4, "Agree",
                                                 ifelse(April11$Question_62 == 5, "Strongly Agree", NA)))))

##Question_63
April11$Question_63 <- ifelse(April11$Question_63 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_63 == 2, "Disagree",
                                   ifelse(April11$Question_63 == 3, "Neutral",
                                          ifelse(April11$Question_63 == 4, "Agree",
                                                 ifelse(April11$Question_63 == 5, "Strongly Agree", NA)))))

##Question_64
April11$Question_64 <- ifelse(April11$Question_64 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_64 == 2, "Disagree",
                                   ifelse(April11$Question_64 == 3, "Neutral",
                                          ifelse(April11$Question_64 == 4, "Agree",
                                                 ifelse(April11$Question_64 == 5, "Strongly Agree", NA)))))

##Question_65
April11$Question_65 <- ifelse(April11$Question_65 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_65 == 2, "Disagree",
                                   ifelse(April11$Question_65 == 3, "Neutral",
                                          ifelse(April11$Question_65 == 4, "Agree",
                                                 ifelse(April11$Question_65 == 5, "Strongly Agree", NA)))))

##Question_66
April11$Question_66 <- ifelse(April11$Question_66 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_66 == 2, "Disagree",
                                   ifelse(April11$Question_66 == 3, "Neutral",
                                          ifelse(April11$Question_66 == 4, "Agree",
                                                 ifelse(April11$Question_66 == 5, "Strongly Agree", NA)))))

##Question_67
April11$Question_67 <- ifelse(April11$Question_67 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_67 == 2, "Disagree",
                                   ifelse(April11$Question_67 == 3, "Neutral",
                                          ifelse(April11$Question_67 == 4, "Agree",
                                                 ifelse(April11$Question_67 == 5, "Strongly Agree", NA)))))
##Question_68
April11$Question_68 <- ifelse(April11$Question_68 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_68 == 2, "Disagree",
                                   ifelse(April11$Question_68 == 3, "Neutral",
                                          ifelse(April11$Question_68 == 4, "Agree",
                                                 ifelse(April11$Question_68 == 5, "Strongly Agree", NA)))))
##Question_69
April11$Question_69 <- ifelse(April11$Question_69 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_69 == 2, "Disagree",
                                   ifelse(April11$Question_69 == 3, "Neutral",
                                          ifelse(April11$Question_69 == 4, "Agree",
                                                 ifelse(April11$Question_69 == 5, "Strongly Agree", NA)))))

##Question_70
April11$Question_70 <- ifelse(April11$Question_70 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_70 == 2, "Disagree",
                                   ifelse(April11$Question_70 == 3, "Neutral",
                                          ifelse(April11$Question_70 == 4, "Agree",
                                                 ifelse(April11$Question_70 == 5, "Strongly Agree", NA)))))
##Question_71
April11$Question_71 <- ifelse(April11$Question_71 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_71 == 2, "Disagree",
                                   ifelse(April11$Question_71 == 3, "Neutral",
                                          ifelse(April11$Question_71 == 4, "Agree",
                                                 ifelse(April11$Question_71 == 5, "Strongly Agree", NA)))))

##Question_72
April11$Question_72 <- ifelse(April11$Question_72 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_72 == 2, "Disagree",
                                   ifelse(April11$Question_72 == 3, "Neutral",
                                          ifelse(April11$Question_72 == 4, "Agree",
                                                 ifelse(April11$Question_72 == 5, "Strongly Agree", NA)))))

##Question_73
April11$Question_73 <- ifelse(April11$Question_73 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_73 == 2, "Disagree",
                                   ifelse(April11$Question_73 == 3, "Neutral",
                                          ifelse(April11$Question_73 == 4, "Agree",
                                                 ifelse(April11$Question_73 == 5, "Strongly Agree", NA)))))

##Question_74
April11$Question_74 <- ifelse(April11$Question_74 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_74 == 2, "Disagree",
                                   ifelse(April11$Question_74 == 3, "Neutral",
                                          ifelse(April11$Question_74 == 4, "Agree",
                                                 ifelse(April11$Question_74 == 5, "Strongly Agree", NA)))))

##Question_75
April11$Question_75 <- ifelse(April11$Question_75 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_75 == 2, "Disagree",
                                   ifelse(April11$Question_75 == 3, "Neutral",
                                          ifelse(April11$Question_75 == 4, "Agree",
                                                 ifelse(April11$Question_75 == 5, "Strongly Agree", NA)))))

##Question_76
April11$Question_76 <- ifelse(April11$Question_76 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_76 == 2, "Disagree",
                                   ifelse(April11$Question_76 == 3, "Neutral",
                                          ifelse(April11$Question_76 == 4, "Agree",
                                                 ifelse(April11$Question_76 == 5, "Strongly Agree", NA)))))

##Question_77
April11$Question_77 <- ifelse(April11$Question_77 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_77 == 2, "Disagree",
                                   ifelse(April11$Question_77 == 3, "Neutral",
                                          ifelse(April11$Question_77 == 4, "Agree",
                                                 ifelse(April11$Question_77 == 5, "Strongly Agree", NA)))))

##Question_78
April11$Question_78 <- ifelse(April11$Question_78 == 1, "Strongly Disagree", 
                            ifelse(April11$Question_78 == 2, "Disagree",
                                   ifelse(April11$Question_78 == 3, "Neutral",
                                          ifelse(April11$Question_78 == 4, "Agree",
                                                 ifelse(April11$Question_78 == 5, "Strongly Agree", NA)))))

##data_source
April11$data_source <- ifelse(April11$data_source == 1, "Pen and Paper survey", 
                            ifelse(April11$data_source == 2, "Pen and Paper survey",
                                   ifelse(April11$data_source == 3, "Qualtrics", NA)))

#saving clean data to cleandata folder
save_data_location = here("Primary Data Analysis ASU", "APHA","Data", "cleandata", "April11.rds")
saveRDS(April11, file = save_data_location)