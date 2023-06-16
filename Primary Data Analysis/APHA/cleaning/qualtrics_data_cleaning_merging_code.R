#Loading packages into R
library(dplyr)
library(tidyr)
library(tidyverse)
library(readxl)
library(writexl)
library(data.table)
library(stringi)
library(here)
library(openxlsx) #for saving excel file 


#Step 1: Preparing the data
  ##Loading the Qualtrics Data
    asu_qualtrics_data <- read_excel(here("Primary Data Analysis ASU", "APHA", "Data", "rawdata", "Health Literacy Survey (full survey)_May 17, 2023_09.11.xlsx"))
    names(asu_qualtrics_data)
    View(asu_qualtrics_data)
  ##Removing unwanted columns and rows
    asu_qualtrics_data <- asu_qualtrics_data[-1, -c(1:17)]
    names(asu_qualtrics_data)
  ##Renaming the variables to match with pen and paper survey
    setnames(asu_qualtrics_data, old = c('Q2_1', 'Q2_5', 'Q2_2', 'Q2_3', 'Q3...22', 'Q4...23', 'Q5...24', 'Q6...25', 'Q7...26', 'Q8', 'Q9', 'Q10...29', 'Q58', 'Q11...31', 'Q12_1', 'Q12_2', 'Q12_3', 'Q46', 'Q47_1', 'Q47_2', 'Q48', 'Q13...39', 'Q3...40', 'Q50', 'Q49_1', 'Q49_2', 'Q51_1', 'Q51_2', 'Q52_1', 'Q52_2', 'Q53_1', 'Q53_2', 'Q54_1', 'Q54_2', 'Q4...52', 'Q16', 'Q15_1', 'Q15_2', 'Q15_3', 'Q15_4', 'Q5...58', 'Q7...59', 'Q56', 'Q17', 'Q18', 'Q22', 'Q11...64', 'Q23', 'Q10...66', 'Q12', 'Q55', 'Q13...69', 'Q6...70', 'Q25', 'Q26', 'Q27', 'Q28', 'Q29', 'Q31', 'Q30', 'Q32', 'Q33', 'Q34', 'Q35', 'Q36', 'Q37_1', 'Q37_2', 'Q37_3', 'Q37_4', 'Q37_5', 'Q37_6', 'Q37_7', 'Q37_8', 'Q37_9', 'Q37_10', 'Q37_11', 'Q37_12', 'Q37_13', 'Q37_14', 'Q37_15', 'Q37_16', 'Q37_17', 'Q37_18', 'Q37_19', 'Q37_20', 'Q37_21', 'Q37_22', 'Q37_23', 'Q37_24', 'Q37_25', 'Q37_26', 'Q37_27', 'Q37_28', 'Q38_1', 'Q38_2', 'Q38_3', 'Q38_4', 'Q38_5', 'Q38_6', 'Q38_7'),
             new = c('Date', 'Zip', 'Participant_name', 'Participant_dob', 'Gender', 'Age', 'Race_Ethnicity', 'Specifiy Race', 'Education', 'Language', 'Specifiy Language', 'Income', 'Family_household', 'Children', 'Number_children_1', 'Number_children_2', 'Number_children_3', 'Elderly_family', 'Number_elderly_1', 'Number_elderly_2', 'Health Insurance', 'Conditions', 'Question_1', 'Question_2', 'Question_3', 'Question_4', 'Question_5', 'Question_6', 'Question_7', 'Question_8', 'Question_9', 'Question_10', 'Question_11', 'Question_12', 'Question_13', 'Question_14', 'Question_15', 'Question_16', 'Question_17', 'Question_18', 'Question_19', 'Question_20', 'Question_21', 'Question_22', 'Question_23', 'Question_24', 'Question_25', 'Question_26', 'Question_27', 'Question_28', 'Question_29', 'Question_30', 'Question_31', 'Question_32', 'Question_33', 'Question_34', 'Question_35', 'Question_36', 'Question_37', 'Question_38', 'Question_39', 'Question_40', 'Question_41', 'Question_42', 'Question_43', 'Question_44', 'Question_45', 'Question_46', 'Question_47', 'Question_48', 'Question_49', 'Question_50', 'Question_51', 'Question_52', 'Question_53', 'Question_54', 'Question_55', 'Question_56', 'Question_57', 'Question_58', 'Question_59', 'Question_60', 'Question_61', 'Question_62', 'Question_63', 'Question_64', 'Question_65', 'Question_66', 'Question_67', 'Question_68', 'Question_69', 'Question_70', 'Question_71', 'Question_72', 'Question_73', 'Question_74', 'Question_75', 'Question_76', 'Question_77', 'Question_78'))



#Step 2: Creating participant IDs
  ##Restructuring the DOB
    asu_qualtrics_data$Participant_dob <- gsub('[^[:alnum:] ]', '', asu_qualtrics_data$Participant_dob) #Removes all special characters from DOB
    asu_qualtrics_data$Participant_dob_new <- paste(str_sub(asu_qualtrics_data$Participant_dob, start = 1, end = 2), str_sub(asu_qualtrics_data$Participant_dob, -4), sep = "") #Formatting the date of birth as MMYYYY
  ##Restructuring the Participant Name
    setDT(asu_qualtrics_data)[, paste0("Participant_name", 1:4) := tstrsplit(Participant_name," ")] #separating the participate name into three columns
    asu_qualtrics_data$Participant_name1 <- ifelse(is.na(asu_qualtrics_data$Participant_name1), "", asu_qualtrics_data$Participant_name1)
    asu_qualtrics_data$Participant_name2 <- ifelse(is.na(asu_qualtrics_data$Participant_name2), "", asu_qualtrics_data$Participant_name2)
    asu_qualtrics_data$Participant_name3 <- ifelse(is.na(asu_qualtrics_data$Participant_name3), "", asu_qualtrics_data$Participant_name3)
    asu_qualtrics_data$Participant_name1 <- ifelse(str_length(asu_qualtrics_data$Participant_name1) > 3,
                                                       str_sub(asu_qualtrics_data$Participant_name1, end = 1),
                                                       asu_qualtrics_data$Participant_name1) #Since few of participants had provided full name instead of initials and for few participants the initials were correct, we filter the initial of first name for those who provided first name and leave the ones with correct initials as it is
    asu_qualtrics_data$Participant_name_new <- paste(asu_qualtrics_data$Participant_name1, str_sub(asu_qualtrics_data$Participant_name2, end = 1), str_sub(asu_qualtrics_data$Participant_name3, end = 1), sep = "") # Combining the initials of first, second and third name
    asu_qualtrics_data$Participant_name_new <- toupper(asu_qualtrics_data$Participant_name_new)
  ##Creating participant ID
    asu_qualtrics_data$ParticipantID <- paste(asu_qualtrics_data$Participant_name_new, asu_qualtrics_data$Participant_dob_new, sep = "")



#Step 3: Change the responses of variables to match with pen and paper
  ##Gender
    asu_qualtrics_data$Gender <- ifelse(asu_qualtrics_data$Gender == "Male", 1, 
                                        ifelse(asu_qualtrics_data$Gender == "Female", 2,
                                               ifelse(asu_qualtrics_data$Gender == "I would rather not specify", 3, NA)))
  ##Age
    asu_qualtrics_data$Age <- ifelse(asu_qualtrics_data$Age == "18-24 years old", 1, 
                                     ifelse(asu_qualtrics_data$Age == "25-34 years old", 2,
                                            ifelse(asu_qualtrics_data$Age == "35-46 years old", 3,
                                                   ifelse(asu_qualtrics_data$Age == "45-54 years old", 4,
                                                          ifelse(asu_qualtrics_data$Age == "55-64 years old", 5,
                                                                 ifelse(asu_qualtrics_data$Age == "65-74 years old", 6,
                                                                        ifelse(asu_qualtrics_data$Age == "75 years or older", 7, NA)))))))
  ##Race_Ethnicity
    asu_qualtrics_data$Race_Ethnicity <- ifelse(asu_qualtrics_data$Race_Ethnicity == "African American", 1, 
                                     ifelse(asu_qualtrics_data$Race_Ethnicity == "Caucasian", 2,
                                            ifelse(asu_qualtrics_data$Race_Ethnicity == "Latino or Hispanic", 3,
                                                   ifelse(asu_qualtrics_data$Race_Ethnicity == "Asian", 4,
                                                          ifelse(asu_qualtrics_data$Race_Ethnicity == "Native American", 5,
                                                                 ifelse(asu_qualtrics_data$Race_Ethnicity == "Other", 6, NA))))))
  ##Education
    asu_qualtrics_data$Education <- ifelse(asu_qualtrics_data$Education == "Less than High School", 1, 
                                                ifelse(asu_qualtrics_data$Education == "High School", 2,
                                                       ifelse(asu_qualtrics_data$Education == "Bachelor's Degree or higher", 3, NA)))
  ##Language
    asu_qualtrics_data$Language <- ifelse(asu_qualtrics_data$Language == "English", 1, 
                                           ifelse(asu_qualtrics_data$Language == "Spanish", 2,
                                                  ifelse(asu_qualtrics_data$Language == "Other", 3, NA)))
  ##Income
    asu_qualtrics_data$Income <- ifelse(asu_qualtrics_data$Income == "Less than $25,000", 1, 
                                          ifelse(asu_qualtrics_data$Income == "$25,000-$50,000", 2,
                                                 ifelse(asu_qualtrics_data$Income == "$50,000-$100,000", 3,
                                                        ifelse(asu_qualtrics_data$Income == "More than $100,000", 4, NA))))
  ##Family_household
    asu_qualtrics_data$Family_household <- ifelse(asu_qualtrics_data$Family_household == 1, 1, 
                                                ifelse(asu_qualtrics_data$Family_household == 2, 2,
                                                       ifelse(asu_qualtrics_data$Family_household == 3, 3,
                                                              ifelse(asu_qualtrics_data$Family_household == 4, 4,
                                                                     ifelse(asu_qualtrics_data$Family_household == "5 or more", 5, NA)))))
  ##Children
    asu_qualtrics_data$Children <- ifelse(asu_qualtrics_data$Children == "Yes", 1, 
                                        ifelse(asu_qualtrics_data$Children == "No", 2, NA))
    ##Elderly_family
    asu_qualtrics_data$Elderly_family <- ifelse(asu_qualtrics_data$Elderly_family == "Yes", 1, 
                                          ifelse(asu_qualtrics_data$Elderly_family == "No", 2, NA))
    ##Health Insurance
    asu_qualtrics_data$`Health Insurance` <- ifelse(asu_qualtrics_data$`Health Insurance` == "Medicaid", 1, 
                                     ifelse(asu_qualtrics_data$`Health Insurance` == "Medicare", 2,
                                            ifelse(asu_qualtrics_data$`Health Insurance` == "Affordable Care Act (Obamacare)", 3,
                                                   ifelse(asu_qualtrics_data$`Health Insurance` == "Uninsured", 4,
                                                          ifelse(asu_qualtrics_data$`Health Insurance` == "Private health insurance", 5,
                                                                 ifelse(asu_qualtrics_data$`Health Insurance` == "Other", 6,
                                                                        ifelse(asu_qualtrics_data$`Health Insurance` == "Don't Know / Not Sure", 7, NA)))))))
  ##Question_1
    asu_qualtrics_data$Question_1 <- ifelse(asu_qualtrics_data$Question_1 == "Yes", 1, 
                                        ifelse(asu_qualtrics_data$Question_1 == "No", 2,
                                               ifelse(asu_qualtrics_data$Question_1 == "Not sure", 3,
                                                      ifelse(asu_qualtrics_data$Question_1 == "Do not know", 4, NA))))
  ##Question_15
    asu_qualtrics_data$Question_15 <- ifelse(asu_qualtrics_data$Question_15 == "Strongly Disagree", 1, 
                                            ifelse(asu_qualtrics_data$Question_15 == "Disagree", 2,
                                                   ifelse(asu_qualtrics_data$Question_15 == "Neutral", 3,
                                                          ifelse(asu_qualtrics_data$Question_15 == "Agree", 4,
                                                                 ifelse(asu_qualtrics_data$Question_15 == "Strongly Agree", 5, NA)))))
  ##Question_16
    asu_qualtrics_data$Question_16 <- ifelse(asu_qualtrics_data$Question_16 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_16 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_16 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_16 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_16 == "Strongly Agree", 5, NA)))))
  ##Question_17
    asu_qualtrics_data$Question_17 <- ifelse(asu_qualtrics_data$Question_17 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_17 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_17 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_17 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_17 == "Strongly Agree", 5, NA)))))
  ##Question_18
    asu_qualtrics_data$Question_18 <- ifelse(asu_qualtrics_data$Question_18 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_18 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_18 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_18 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_18 == "Strongly Agree", 5, NA)))))
  ##Question_19
    asu_qualtrics_data$Question_19 <- ifelse(asu_qualtrics_data$Question_19 == "Yes", 1, 
                                            ifelse(asu_qualtrics_data$Question_19 == "No", 2,
                                                   ifelse(asu_qualtrics_data$Question_19 == "Not sure", 3,
                                                          ifelse(asu_qualtrics_data$Question_19 == "Do not know", 4, NA))))
  ##Question_21
    asu_qualtrics_data$Question_21 <- ifelse(asu_qualtrics_data$Question_21 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_21 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_21 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_21 == "Do not know", 4, NA))))
  ##Question_22
    asu_qualtrics_data$Question_22 <- ifelse(asu_qualtrics_data$Question_22 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_22 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_22 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_22 == "Do not know", 4, NA))))
  ##Question_23
    asu_qualtrics_data$Question_23 <- ifelse(asu_qualtrics_data$Question_23 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_23 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_23 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_23 == "Do not know", 4, NA))))
  ##Question_24
    asu_qualtrics_data$Question_24 <- ifelse(asu_qualtrics_data$Question_24 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_24 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_24 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_24 == "Do not know", 4, NA))))
  ##Question_25
    asu_qualtrics_data$Question_25 <- ifelse(asu_qualtrics_data$Question_25 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_25 == "No", 2, NA))
  ##Question_26
    asu_qualtrics_data$Question_26 <- ifelse(asu_qualtrics_data$Question_26 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_26 == "No", 2, NA))
  ##Question_27
    asu_qualtrics_data$Question_27 <- ifelse(asu_qualtrics_data$Question_27 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_27 == "No", 2, NA))
  ##Question_28        
    asu_qualtrics_data$Question_28 <- ifelse(asu_qualtrics_data$Question_28 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_28 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_28 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_28 == "Do not know", 4, NA))))
  ##Question_29
    asu_qualtrics_data$Question_29 <- ifelse(asu_qualtrics_data$Question_29 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_29 == "No", 2, NA))
  ##Question_32
    asu_qualtrics_data$Question_32 <- ifelse(asu_qualtrics_data$Question_32 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_32 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_32 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_32 == "Do not know", 4, NA))))
  ##Question_33         
    asu_qualtrics_data$Question_33 <- ifelse(asu_qualtrics_data$Question_33 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_33 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_33 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_33 == "Do not know", 4, NA))))
  ##Question_34
    asu_qualtrics_data$Question_34 <- ifelse(asu_qualtrics_data$Question_34 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_34 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_34 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_34 == "Do not know", 4, NA))))
  ##Question_35
    asu_qualtrics_data$Question_35 <- ifelse(asu_qualtrics_data$Question_35 == "Very confident", 1, 
                                             ifelse(asu_qualtrics_data$Question_35 == "Moderately confident", 2,
                                                    ifelse(asu_qualtrics_data$Question_35 == "Moderately unconfident", 3,
                                                           ifelse(asu_qualtrics_data$Question_35 == "Very unconfident", 4, NA))))
  ##Question_36
    asu_qualtrics_data$Question_36 <- ifelse(asu_qualtrics_data$Question_36 == "local church", 1, 
                                             ifelse(asu_qualtrics_data$Question_36 == "local hospital", 2,
                                                    ifelse(asu_qualtrics_data$Question_36 == "local barbershop", 3,
                                                           ifelse(asu_qualtrics_data$Question_36 == "mobile vaccine and/or testing clinics", 4,
                                                                  ifelse(asu_qualtrics_data$Question_36 == "other community event", 5, NA)))))
  ##Question_40
    asu_qualtrics_data$Question_40 <- ifelse(asu_qualtrics_data$Question_40 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_40 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_40 == "I do not have childen under 18 in my household", 3, NA)))
  ##Question_41
    asu_qualtrics_data$Question_41 <- ifelse(asu_qualtrics_data$Question_41 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_41 == "No", 2, NA))
  ##Question_42
    asu_qualtrics_data$Question_42 <- ifelse(asu_qualtrics_data$Question_42 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_42 == "No", 2, NA))
  ##Question_43
    asu_qualtrics_data$Question_43 <- ifelse(asu_qualtrics_data$Question_43 == "Yes", 1, 
                                             ifelse(asu_qualtrics_data$Question_43 == "No", 2,
                                                    ifelse(asu_qualtrics_data$Question_43 == "Not sure", 3,
                                                           ifelse(asu_qualtrics_data$Question_43 == "Do not know", 4, NA))))
  ##Question_44
    asu_qualtrics_data$Question_44 <- ifelse(asu_qualtrics_data$Question_44 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_44 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_44 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_44 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_44 == "Strongly Agree", 5, NA)))))
  ##Question_45
    asu_qualtrics_data$Question_45 <- ifelse(asu_qualtrics_data$Question_45 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_45 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_45 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_45 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_45 == "Strongly Agree", 5, NA)))))
  ##Question_46
    asu_qualtrics_data$Question_46 <- ifelse(asu_qualtrics_data$Question_46 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_46 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_46 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_46 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_46 == "Strongly Agree", 5, NA)))))
  ##Question_47
    asu_qualtrics_data$Question_47 <- ifelse(asu_qualtrics_data$Question_47 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_47 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_47 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_47 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_47 == "Strongly Agree", 5, NA)))))
  ##Question_48         
    asu_qualtrics_data$Question_48 <- ifelse(asu_qualtrics_data$Question_48 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_48 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_48 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_48 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_48 == "Strongly Agree", 5, NA)))))
  ##Question_49
    asu_qualtrics_data$Question_49 <- ifelse(asu_qualtrics_data$Question_49 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_49 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_49 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_49 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_49 == "Strongly Agree", 5, NA)))))
  ##Question_50
    asu_qualtrics_data$Question_50 <- ifelse(asu_qualtrics_data$Question_50 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_50 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_50 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_50 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_50 == "Strongly Agree", 5, NA)))))
  ##Question_51
    asu_qualtrics_data$Question_51 <- ifelse(asu_qualtrics_data$Question_51 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_51 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_51 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_51 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_51 == "Strongly Agree", 5, NA)))))
  ##Question_52
    asu_qualtrics_data$Question_52 <- ifelse(asu_qualtrics_data$Question_52 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_52 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_52 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_52 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_52 == "Strongly Agree", 5, NA)))))
  ##Question_53         
    asu_qualtrics_data$Question_53 <- ifelse(asu_qualtrics_data$Question_53 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_53 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_53 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_53 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_53 == "Strongly Agree", 5, NA)))))
  ##Question_54
    asu_qualtrics_data$Question_54 <- ifelse(asu_qualtrics_data$Question_54 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_54 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_54 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_54 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_54 == "Strongly Agree", 5, NA)))))
  ##Question_55
    asu_qualtrics_data$Question_55 <- ifelse(asu_qualtrics_data$Question_55 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_55 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_55 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_55 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_55 == "Strongly Agree", 5, NA)))))
  ##Question_56
    asu_qualtrics_data$Question_56 <- ifelse(asu_qualtrics_data$Question_56 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_56 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_56 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_56 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_56 == "Strongly Agree", 5, NA)))))
  ##Question_57
    asu_qualtrics_data$Question_57 <- ifelse(asu_qualtrics_data$Question_57 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_57 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_57 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_57 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_57 == "Strongly Agree", 5, NA)))))
  ##Question_58         
    asu_qualtrics_data$Question_58 <- ifelse(asu_qualtrics_data$Question_58 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_58 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_58 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_58 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_58 == "Strongly Agree", 5, NA)))))
  ##Question_59
    asu_qualtrics_data$Question_59 <- ifelse(asu_qualtrics_data$Question_59 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_59 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_59 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_59 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_59 == "Strongly Agree", 5, NA)))))
  ##Question_60
    asu_qualtrics_data$Question_60 <- ifelse(asu_qualtrics_data$Question_60 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_60 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_60 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_60 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_60 == "Strongly Agree", 5, NA)))))
  ##Question_61
    asu_qualtrics_data$Question_61 <- ifelse(asu_qualtrics_data$Question_61 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_61 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_61 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_61 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_61 == "Strongly Agree", 5, NA)))))
  ##Question_62
    asu_qualtrics_data$Question_62 <- ifelse(asu_qualtrics_data$Question_62 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_62 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_62 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_62 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_62 == "Strongly Agree", 5, NA)))))
  ##Question_63         
    asu_qualtrics_data$Question_63 <- ifelse(asu_qualtrics_data$Question_63 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_63 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_63 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_63 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_63 == "Strongly Agree", 5, NA)))))
  ##Question_64
    asu_qualtrics_data$Question_64 <- ifelse(asu_qualtrics_data$Question_64 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_64 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_64 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_64 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_64 == "Strongly Agree", 5, NA)))))
  ##Question_65
    asu_qualtrics_data$Question_65 <- ifelse(asu_qualtrics_data$Question_65 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_65 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_65 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_65 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_65 == "Strongly Agree", 5, NA)))))
  ##Question_66
    asu_qualtrics_data$Question_66 <- ifelse(asu_qualtrics_data$Question_66 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_66 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_66 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_66 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_66 == "Strongly Agree", 5, NA)))))
  ##Question_67
    asu_qualtrics_data$Question_67 <- ifelse(asu_qualtrics_data$Question_67 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_67 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_67 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_67 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_67 == "Strongly Agree", 5, NA)))))
  ##Question_68         
    asu_qualtrics_data$Question_68 <- ifelse(asu_qualtrics_data$Question_68 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_68 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_68 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_68 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_68 == "Strongly Agree", 5, NA)))))
  ##Question_69
    asu_qualtrics_data$Question_69 <- ifelse(asu_qualtrics_data$Question_69 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_69 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_69 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_69 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_69 == "Strongly Agree", 5, NA)))))
  ##Question_70
    asu_qualtrics_data$Question_70 <- ifelse(asu_qualtrics_data$Question_70 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_70 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_70 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_70 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_70 == "Strongly Agree", 5, NA)))))
  ##Question_71
    asu_qualtrics_data$Question_71 <- ifelse(asu_qualtrics_data$Question_71 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_71 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_71 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_71 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_71 == "Strongly Agree", 5, NA)))))
  ##Question_72
    asu_qualtrics_data$Question_72 <- ifelse(asu_qualtrics_data$Question_72 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_72 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_72 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_72 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_72 == "Strongly Agree", 5, NA)))))
  ##Question_73         
    asu_qualtrics_data$Question_73 <- ifelse(asu_qualtrics_data$Question_73 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_73 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_73 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_73 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_73 == "Strongly Agree", 5, NA)))))
  ##Question_74
    asu_qualtrics_data$Question_74 <- ifelse(asu_qualtrics_data$Question_74 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_74 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_74 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_74 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_74 == "Strongly Agree", 5, NA)))))
  ##Question_75
    asu_qualtrics_data$Question_75 <- ifelse(asu_qualtrics_data$Question_75 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_75 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_75 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_75 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_75 == "Strongly Agree", 5, NA)))))
  ##Question_76
    asu_qualtrics_data$Question_76 <- ifelse(asu_qualtrics_data$Question_76 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_76 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_76 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_76 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_76 == "Strongly Agree", 5, NA)))))
  ##Question_77
    asu_qualtrics_data$Question_77 <- ifelse(asu_qualtrics_data$Question_77 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_77 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_77 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_77 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_77 == "Strongly Agree", 5, NA)))))
  ##Question_78
    asu_qualtrics_data$Question_78 <- ifelse(asu_qualtrics_data$Question_78 == "Strongly Disagree", 1, 
                                             ifelse(asu_qualtrics_data$Question_78 == "Disagree", 2,
                                                    ifelse(asu_qualtrics_data$Question_78 == "Neutral", 3,
                                                           ifelse(asu_qualtrics_data$Question_78 == "Agree", 4,
                                                                  ifelse(asu_qualtrics_data$Question_78 == "Strongly Agree", 5, NA)))))



#Step 4: Cleaning the multiple response questions
  ##Conditions
    setDT(asu_qualtrics_data)[, paste0("Conditions", 1:7) := tstrsplit(Conditions, ",")] #separating the conditions into 7 columns (maximum number of condition a participant has mentioned to have had)
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Cancer = ifelse(Conditions1 == "Cancer" | Conditions2 == "Cancer" | Conditions3 == "Cancer" | Conditions4 == "Cancer" | Conditions5 == "Cancer" | Conditions6 == "Cancer" | Conditions7 == "Cancer", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Severe_Allergies = ifelse(Conditions1 == "Severe allergies" | Conditions2 == "Severe allergies" | Conditions3 == "Severe allergies" | Conditions4 == "Severe allergies" | Conditions5 == "Severe allergies" | Conditions6 == "Severe allergies" | Conditions7 == "Severe allergies", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Seizures = ifelse(Conditions1 == "Seizures" | Conditions2 == "Seizures" | Conditions3 == "Seizures" | Conditions4 == "Seizures" | Conditions5 == "Seizures" | Conditions6 == "Seizures" | Conditions7 == "Seizures", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Obesity = ifelse(Conditions1 == "Obesity" | Conditions2 == "Obesity" | Conditions3 == "Obesity" | Conditions4 == "Obesity" | Conditions5 == "Obesity" | Conditions6 == "Obesity" | Conditions7 == "Obesity", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Cardio_Disease = ifelse(Conditions1 == "Cardiovascular disease" | Conditions2 == "Cardiovascular disease" | Conditions3 == "Cardiovascular disease" | Conditions4 == "Cardiovascular disease" | Conditions5 == "Cardiovascular disease" | Conditions6 == "Cardiovascular disease" | Conditions7 == "Cardiovascular disease", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Rheumatological = ifelse(Conditions1 == "Rheumatological condition (like arthritis)" | Conditions2 == "Rheumatological condition (like arthritis)" | Conditions3 == "Rheumatological condition (like arthritis)" | Conditions4 == "Rheumatological condition (like arthritis)" | Conditions5 == "Rheumatological condition (like arthritis)" | Conditions6 == "Rheumatological condition (like arthritis)" | Conditions7 == "Rheumatological condition (like arthritis)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Pulmonary = ifelse(Conditions1 == "Pulmonary disease (like Asthma)" | Conditions2 == "Pulmonary disease (like Asthma)" | Conditions3 == "Pulmonary disease (like Asthma)" | Conditions4 == "Pulmonary disease (like Asthma)" | Conditions5 == "Pulmonary disease (like Asthma)" | Conditions6 == "Pulmonary disease (like Asthma)" | Conditions7 == "Pulmonary disease (like Asthma)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Diabetes = ifelse(Conditions1 == "Diabetes (type 1 or 2)" | Conditions2 == "Diabetes (type 1 or 2)" | Conditions3 == "Diabetes (type 1 or 2)" | Conditions4 == "Diabetes (type 1 or 2)" | Conditions5 == "Diabetes (type 1 or 2)" | Conditions6 == "Diabetes (type 1 or 2)" | Conditions7 == "Diabetes (type 1 or 2)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Immuno = ifelse(Conditions1 == "Immunocompromised state due to therapy or disease" | Conditions2 == "Immunocompromised state due to therapy or disease" | Conditions3 == "Immunocompromised state due to therapy or disease" | Conditions4 == "Immunocompromised state due to therapy or disease" | Conditions5 == "Immunocompromised state due to therapy or disease" | Conditions6 == "Immunocompromised state due to therapy or disease" | Conditions7 == "Immunocompromised state due to therapy or disease", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Pregnancy = ifelse(Conditions1 == "Pregnancy" | Conditions2 == "Pregnancy" | Conditions3 == "Pregnancy" | Conditions4 == "Pregnancy" | Conditions5 == "Pregnancy" | Conditions6 == "Pregnancy" | Conditions7 == "Pregnancy", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_Other = ifelse(Conditions1 == "Other" | Conditions2 == "Other" | Conditions3 == "Other" | Conditions4 == "Other" | Conditions5 == "Other" | Conditions6 == "Other" | Conditions7 == "Other", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Conditions_No_Conditions = ifelse(Conditions1 == "No conditions" | Conditions2 == "No conditions" | Conditions3 == "No conditions" | Conditions4 == "No conditions" | Conditions5 == "No conditions" | Conditions6 == "No conditions" | Conditions7 == "No conditions", 1, NA))
  ##Question_13
    setDT(asu_qualtrics_data)[, paste0("Question_13", 1:12) := tstrsplit(Question_13, " ,")] #separating the symptoms into 11 columns (maximum number of symptoms a participant has mentioned to have had) 
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Fever = ifelse(Question_131 == "Fever or chills" | Question_132 == "Fever or chills" | Question_133 == "Fever or chills" | Question_134 == "Fever or chills" | Question_135 == "Fever or chills" | Question_136 == "Fever or chills" | Question_137 == "Fever or chills" | Question_138 == "Fever or chills" | Question_139 == "Fever or chills" | Question_1310 == "Fever or chills" | Question_1311 == "Fever or chills ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Cough = ifelse(Question_131 == "Cough" | Question_132 == "Cough" | Question_133 == "Cough" | Question_134 == "Cough" | Question_135 == "Cough" | Question_136 == "Cough" | Question_137 == "Cough" | Question_138 == "Cough" | Question_139 == "Cough" | Question_1310 == "Cough" | Question_1311 == "Cough ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Shortness_of_breath = ifelse(Question_131 == "Shortness of breath or difficulty breathing" | Question_132 == "Shortness of breath or difficulty breathing" | Question_133 == "Shortness of breath or difficulty breathing" | Question_134 == "Shortness of breath or difficulty breathing" | Question_135 == "Shortness of breath or difficulty breathing" | Question_136 == "Shortness of breath or difficulty breathing" | Question_137 == "Shortness of breath or difficulty breathing" | Question_138 == "Shortness of breath or difficulty breathing" | Question_139 == "Shortness of breath or difficulty breathing" | Question_1310 == "Shortness of breath or difficulty breathing" | Question_1311 == "Shortness of breath or difficulty breathing", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Fatigue = ifelse(Question_131 == "Fatigue" | Question_132 == "Fatigue" | Question_133 == "Fatigue" | Question_134 == "Fatigue" | Question_135 == "Fatigue" | Question_136 == "Fatigue" | Question_137 == "Fatigue" | Question_138 == "Fatigue" | Question_139 == "Fatigue" | Question_1310 == "Fatigue" | Question_1311 == "Fatigue ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Muscle_Body_Aches = ifelse(Question_131 == "Muscle or body aches" | Question_132 == "Muscle or body aches" | Question_133 == "Muscle or body aches" | Question_134 == "Muscle or body aches" | Question_135 == "Muscle or body aches" | Question_136 == "Muscle or body aches" | Question_137 == "Muscle or body aches" | Question_138 == "Muscle or body aches" | Question_139 == "Muscle or body aches" | Question_1310 == "Muscle or body aches" | Question_1311 == "Muscle or body aches", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Headache = ifelse(Question_131 == "Headache" | Question_132 == "Headache" | Question_133 == "Headache" | Question_134 == "Headache" | Question_135 == "Headache" | Question_136 == "Headache" | Question_137 == "Headache" | Question_138 == "Headache" | Question_139 == "Headache" | Question_1310 == "Headache" | Question_1311 == "Headache", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Loss_of_Taste = ifelse(Question_131 == "New loss of taste or smell" | Question_132 == "New loss of taste or smell" | Question_133 == "New loss of taste or smell" | Question_134 == "New loss of taste or smell" | Question_135 == "New loss of taste or smell" | Question_136 == "New loss of taste or smell" | Question_137 == "New loss of taste or smell" | Question_138 == "New loss of taste or smell" | Question_139 == "New loss of taste or smell" | Question_1310 == "New loss of taste or smell" | Question_1311 == "New loss of taste or smell ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Sore_Throat = ifelse(Question_131 == "Sore throat" | Question_132 == "Sore throat" | Question_133 == "Sore throat" | Question_134 == "Sore throat" | Question_135 == "Sore throat" | Question_136 == "Sore throat" | Question_137 == "Sore throat" | Question_138 == "Sore throat" | Question_139 == "Sore throat" | Question_1310 == "Sore throat" | Question_1311 == "Sore throat", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Congestion = ifelse(Question_131 == "Congestion or runny nose" | Question_132 == "Congestion or runny nose" | Question_133 == "Congestion or runny nose" | Question_134 == "Congestion or runny nose" | Question_135 == "Congestion or runny nose" | Question_136 == "Congestion or runny nose" | Question_137 == "Congestion or runny nose" | Question_138 == "Congestion or runny nose" | Question_139 == "Congestion or runny nose" | Question_1310 == "Congestion or runny nose" | Question_1311 == "Congestion or runny nose", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Nausea = ifelse(Question_131 == "Nausea or vomiting" | Question_132 == "Nausea or vomiting" | Question_133 == "Nausea or vomiting" | Question_134 == "Nausea or vomiting" | Question_135 == "Nausea or vomiting" | Question_136 == "Nausea or vomiting" | Question_137 == "Nausea or vomiting" | Question_138 == "Nausea or vomiting" | Question_139 == "Nausea or vomiting" | Question_1310 == "Nausea or vomiting" | Question_1311 == "Nausea or vomiting", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Diarrhea = ifelse(Question_131 == "Diarrhea" | Question_132 == "Diarrhea" | Question_133 == "Diarrhea" | Question_134 == "Diarrhea" | Question_135 == "Diarrhea" | Question_136 == "Diarrhea" | Question_137 == "Diarrhea" | Question_138 == "Diarrhea" | Question_139 == "Diarrhea" | Question_1310 == "Diarrhea" | Question_1311 == "Diarrhea", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Asymptomatic = ifelse(Question_131 == "Asymptomatic (No symptoms but tested positive)" | Question_132 == "Asymptomatic (No symptoms but tested positive)" | Question_133 == "Asymptomatic (No symptoms but tested positive)" | Question_134 == "Asymptomatic (No symptoms but tested positive)" | Question_135 == "Asymptomatic (No symptoms but tested positive)" | Question_136 == "Asymptomatic (No symptoms but tested positive)" | Question_137 == "Asymptomatic (No symptoms but tested positive)" | Question_138 == "Asymptomatic (No symptoms but tested positive)" | Question_139 == "Asymptomatic (No symptoms but tested positive)" | Question_1310 == "Asymptomatic (No symptoms but tested positive)" | Question_1311 == "Asymptomatic (No symptoms but tested positive)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_13_Other = ifelse(Question_131 == "Other" | Question_132 == "Other" | Question_133 == "Other" | Question_134 == "Other" | Question_135 == "Other" | Question_136 == "Other" | Question_137 == "Other" | Question_138 == "Other" | Question_139 == "Other" | Question_1310 == "Other" | Question_1311 == "Other", 1, NA))
  ##Question_20
    setDT(asu_qualtrics_data)[, paste0("Question_20", 1:10) := tstrsplit(Question_20, ",")] 
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Basic_Health = ifelse(Question_201 == "Basic health and hygiene practices (mask wearing" | Question_202 == "Basic health and hygiene practices (mask wearing" | Question_203 == "Basic health and hygiene practices (mask wearing" | Question_204 == "Basic health and hygiene practices (mask wearing" | Question_205 == "Basic health and hygiene practices (mask wearing" | Question_206 == "Basic health and hygiene practices (mask wearing" | Question_207 == "Basic health and hygiene practices (mask wearing" | Question_208 == "Basic health and hygiene practices (mask wearing" | Question_209 == "Basic health and hygiene practices (mask wearing" | Question_2010 == "Basic health and hygiene practices (mask wearing", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_COVID_19_Vacc = ifelse(Question_201 == "Staying up to date with COVID-19 vaccines" | Question_202 == "Staying up to date with COVID-19 vaccines" | Question_203 == "Staying up to date with COVID-19 vaccines" | Question_204 == "Staying up to date with COVID-19 vaccines" | Question_205 == "Staying up to date with COVID-19 vaccines" | Question_206 == "Staying up to date with COVID-19 vaccines" | Question_207 == "Staying up to date with COVID-19 vaccines" | Question_208 == "Staying up to date with COVID-19 vaccines" | Question_209 == "Staying up to date with COVID-19 vaccines" | Question_2010 == "Staying up to date with COVID-19 vaccines" | Question_201 == "Staying up to date with COVID-19 vaccines " | Question_202 == "Staying up to date with COVID-19 vaccines " | Question_203 == "Staying up to date with COVID-19 vaccines " | Question_204 == "Staying up to date with COVID-19 vaccines " | Question_205 == "Staying up to date with COVID-19 vaccines " | Question_206 == "Staying up to date with COVID-19 vaccines " | Question_207 == "Staying up to date with COVID-19 vaccines " | Question_208 == "Staying up to date with COVID-19 vaccines " | Question_209 == "Staying up to date with COVID-19 vaccines " | Question_2010 == "Staying up to date with COVID-19 vaccines ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Improving_ventilation = ifelse(Question_201 == "Improving ventilation" | Question_202 == "Improving ventilation" | Question_203 == "Improving ventilation" | Question_204 == "Improving ventilation" | Question_205 == "Improving ventilation" | Question_206 == "Improving ventilation" | Question_207 == "Improving ventilation" | Question_208 == "Improving ventilation" | Question_209 == "Improving ventilation" | Question_2010 == "Improving ventilation" | Question_201 == "Improving ventilation " | Question_202 == "Improving ventilation " | Question_203 == "Improving ventilation " | Question_204 == "Improving ventilation " | Question_205 == "Improving ventilation " | Question_206 == "Improving ventilation " | Question_207 == "Improving ventilation " | Question_208 == "Improving ventilation " | Question_209 == "Improving ventilation " | Question_2010 == "Improving ventilation ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Getting_tested = ifelse(Question_201 == "Getting tested for COVID-19 if needed" | Question_202 == "Getting tested for COVID-19 if needed" | Question_203 == "Getting tested for COVID-19 if needed" | Question_204 == "Getting tested for COVID-19 if needed" | Question_205 == "Getting tested for COVID-19 if needed" | Question_206 == "Getting tested for COVID-19 if needed" | Question_207 == "Getting tested for COVID-19 if needed" | Question_208 == "Getting tested for COVID-19 if needed" | Question_209 == "Getting tested for COVID-19 if needed" | Question_2010 == "Getting tested for COVID-19 if needed" | Question_201 == "Getting tested for COVID-19 if needed " | Question_202 == "Getting tested for COVID-19 if needed " | Question_203 == "Getting tested for COVID-19 if needed " | Question_204 == "Getting tested for COVID-19 if needed " | Question_205 == "Getting tested for COVID-19 if needed " | Question_206 == "Getting tested for COVID-19 if needed " | Question_207 == "Getting tested for COVID-19 if needed " | Question_208 == "Getting tested for COVID-19 if needed " | Question_209 == "Getting tested for COVID-19 if needed " | Question_2010 == "Getting tested for COVID-19 if needed ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Following_recommendations = ifelse(Question_201 == "Following recommendations for what to do if you have been exposed" | Question_202 == "Following recommendations for what to do if you have been exposed" | Question_203 == "Following recommendations for what to do if you have been exposed" | Question_204 == "Following recommendations for what to do if you have been exposed" | Question_205 == "Following recommendations for what to do if you have been exposed" | Question_206 == "Following recommendations for what to do if you have been exposed" | Question_207 == "Following recommendations for what to do if you have been exposed" | Question_208 == "Following recommendations for what to do if you have been exposed" | Question_209 == "Following recommendations for what to do if you have been exposed" | Question_2010 == "Following recommendations for what to do if you have been exposed" | Question_201 == "Following recommendations for what to do if you have been exposed " | Question_202 == "Following recommendations for what to do if you have been exposed " | Question_203 == "Following recommendations for what to do if you have been exposed " | Question_204 == "Following recommendations for what to do if you have been exposed " | Question_205 == "Following recommendations for what to do if you have been exposed " | Question_206 == "Following recommendations for what to do if you have been exposed " | Question_207 == "Following recommendations for what to do if you have been exposed " | Question_208 == "Following recommendations for what to do if you have been exposed " | Question_209 == "Following recommendations for what to do if you have been exposed " | Question_2010 == "Following recommendations for what to do if you have been exposed ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Staying_home = ifelse(Question_201 == "Staying at home if you have suspected or confirmed COVID-19" | Question_202 == "Staying at home if you have suspected or confirmed COVID-19" | Question_203 == "Staying at home if you have suspected or confirmed COVID-19" | Question_204 == "Staying at home if you have suspected or confirmed COVID-19" | Question_205 == "Staying at home if you have suspected or confirmed COVID-19" | Question_206 == "Staying at home if you have suspected or confirmed COVID-19" | Question_207 == "Staying at home if you have suspected or confirmed COVID-19" | Question_208 == "Staying at home if you have suspected or confirmed COVID-19" | Question_209 == "Staying at home if you have suspected or confirmed COVID-19" | Question_2010 == "Staying at home if you have suspected or confirmed COVID-19" | Question_201 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_202 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_203 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_204 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_205 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_206 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_207 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_208 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_209 == "Staying at home if you have suspected or confirmed COVID-19 " | Question_2010 == "Staying at home if you have suspected or confirmed COVID-19 ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Seeking = ifelse(Question_201 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_202 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_203 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_204 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_205 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_206 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_207 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_208 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_209 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_2010 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick" | Question_201 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_202 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_203 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_204 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_205 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_206 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_207 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_208 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_209 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick " | Question_2010 == "Seeking treatment if you have COVID-19 and are at a high risk of getting very sick ", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_20_Avoiding = ifelse(Question_201 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_202 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_203 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_204 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_205 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_206 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_207 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_208 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_209 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_2010 == "Avoiding contact with people who have suspected or confirmed COVID-19" | Question_201 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_202 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_203 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_204 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_205 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_206 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_207 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_208 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_209 == "Avoiding contact with people who have suspected or confirmed COVID-19 " | Question_2010 == "Avoiding contact with people who have suspected or confirmed COVID-19 ", 1, NA))
  ##Question_30
    setDT(asu_qualtrics_data)[, paste0("Question_30", 1:5) := tstrsplit(Question_30, " ,")] #separating the information provider into 3 columns (maximum number of information provider a participant has mentioned to have had) 
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Physician = ifelse(Question_301 == "Physician" | Question_302 == "Physician" | Question_303 == "Physician", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Nurse_Practitioner = ifelse(Question_301 == "Nurse Practitioner" | Question_302 == "Nurse Practitioner" | Question_303 == "Nurse Practitioner", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Registered_Nurse = ifelse(Question_301 == "Registered Nurse" | Question_302 == "Registered Nurse" | Question_303 == "Registered Nurse", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Community_Health_Advocate = ifelse(Question_301 == "Community Health Advocate" | Question_302 == "Community Health Advocate" | Question_303 == "Community Health Advocate", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Community_Member = ifelse(Question_301 == "Community Member" | Question_302 == "Community Member" | Question_303 == "Community Member", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_30_Other = ifelse(Question_301 == "Other" | Question_302 == "Other" | Question_303 == "Other", 1, NA))
  ##Question_38
    ###Though the question multiple response, single response per participant has been observed
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Handout_flier = ifelse(Question_38 == "Handout flier, pamphlet, or brochure", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Social_media = ifelse(Question_38 == "Social media (TikTok, Instagram, Facebook and Twitter)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Standard_media = ifelse(Question_38 == "Standard media source (TV, Radio, Newspaper)", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Community_Health_Advocate = ifelse(Question_38 == "A Community Health Advocate/ or any other community professional", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Church_service = ifelse(Question_38 == "Church service", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Barbershop = ifelse(Question_38 == "At the local barbershop", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Community_members = ifelse(Question_38 == "From community members, friends, or family members", 1, NA))
    asu_qualtrics_data <- asu_qualtrics_data %>% mutate(Question_38_Others = ifelse(Question_38 == "Others", 1, NA))



#Step 5: Sub-setting the required variables in order to match with pen and paper survey
  asu_qualtrics_data$data_enterer <- "Qualtrics"
  asu_qualtrics_data$Event <- NA #Since pen and paper survey has this variable, we will create a blank variable
  asu_qualtrics_clean <- subset(asu_qualtrics_data, select = c(data_enterer, Event, Date, Zip, ParticipantID, 
                                                                 Gender:`Health Insurance`, 
                                                                 Conditions_Cancer:Conditions_No_Conditions,
                                                                 Question_1:Question_12, 
                                                                 Question_13_Fever:Question_13_Other, 
                                                                 Question_14:Question_19,
                                                                 Question_20_Basic_Health:Question_20_Avoiding,
                                                                 Question_21:Question_29, 
                                                                 Question_30_Physician:Question_30_Other, 
                                                                 Question_31:Question_37, 
                                                                 Question_38_Handout_flier:Question_38_Others,
                                                                 Question_39:Question_78))
    
    
    
#Step 6: Duplicate Participant IDs
  ##Identifying the duplicates based on ParticipantID, Gender, Age, Race_Ethnicity, Education, Language, Income, Family_household, Children, Elderly_family, and Health Insurance
    asu_qualtrics_duplicates <- asu_qualtrics_clean[duplicated(asu_qualtrics_clean[, c(4:7, 9:10, 12:14, 18, 21)]), ] # 3 participants had duplicate IDs
  ##Removing the duplicates
    asu_qualtrics_clean <- asu_qualtrics_clean[!duplicated(asu_qualtrics_clean[, c(4:7, 9:10, 12:14, 18, 21)]), ]
    

    
#Step 7: Identifying and then removing participants with NAs across all questions
  ##Identifying participants with all responses missing for pre- and post-test separately
    asu_qualtrics_clean$responses_ifNA <- apply(asu_qualtrics_clean[, 22:142], MARGIN = 1, FUN = function(x) all(is.na(x))) #6 participants found to have NAs across all answers, so we will remove them
  ##Removing participants with all responses missing for pre- and post-test and creating new data frames for pre- and post-test
    asu_qualtrics_clean_NA_data <- asu_qualtrics_clean [asu_qualtrics_clean$responses_ifNA == "TRUE", ] #data frame of NA responses
    asu_qualtrics_clean <- asu_qualtrics_clean [asu_qualtrics_clean$responses_ifNA == "FALSE", ] #data frame of non-NA responses

   

#Step 8: Formatting the qualtrics to match with pen and paper survey
  asu_qualtrics_clean <- asu_qualtrics_clean[, -"responses_ifNA"] #removing the variable created in step 7 to check if any participant had NA across all response
  asu_qualtrics_clean[is.na(asu_qualtrics_clean)] <- "*" #Changing the NA to "*" to match with pen and paper survey
  asu_qualtrics_clean$data_source <- 3 #creating data source variable to match with pen and paper survey and assigning it value of "3"



#Step 9: Loading the pen and paper survey
  asu_pen_paper_data <- read_excel(here("Primary Data Analysis ASU", "APHA", "Data", "rawdata", "ASU_penandpaper_preandpost_merged-May17_2023.xlsx"))
  names(asu_pen_paper_data)
  View(asu_pen_paper_data)
  asu_pen_paper_data$ParticipantID <- toupper(asu_pen_paper_data$ParticipantID)



#Step 10: Merging the two data sets
  asu_merged <- rbind(asu_pen_paper_data, asu_qualtrics_clean)



#Step 11: Exporting the file to excel
  output_file <- here("Primary Data Analysis ASU", "APHA", "Data", "cleandata", "asu_merged-May17_2023.xlsx")

  write.xlsx(asu_merged, output_file)


