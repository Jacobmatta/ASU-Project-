#descriptive analysis of ASU survey

#Library
library(DescTools)
library(dplyr)
library(tidyr)
library(tidyverse)

## Loading 
data_location = here("Primary Data Analysis ASU", "descriptive_summary_asu","Data", "cleandata", "Feb28.rds")
Feb28 = readRDS(data_location)
view(Feb28)

#--------------------------------------DEMOGRAPHICS---------------------------------------------------#
# Summary for zip 
zip = Feb28$Zip %>% replace(is.na(.), "*")

zip_pertable= PercTable(zip)
zip_pertable

# Summary for gender 
Gender = Feb28$Gender %>% replace(is.na(.), "*")

Gender_pertable= PercTable(Gender)
Gender_pertable

# #Summary for age
#changes NA values to missing 
Age = Feb28$Age %>% replace(is.na(.), "*")

Age_pertable= PercTable(Age)
Age_pertable

# Summary for race
#changes NA values to missing 
race = Feb28$Race_Ethnicity %>% replace(is.na(.), "*")

race_pertable= PercTable(race)
race_pertable

# Summary for Education 
Education = Feb28$Education %>% replace(is.na(.), "*")

Education_pertable= PercTable(Education)
Education_pertable

# Summary for Language 
Language = Feb28$Language %>% replace(is.na(.), "*")

Language_pertable= PercTable(Language)
Language_pertable

# Summary for Income 
Income = Feb28$Income %>% replace(is.na(.), "*")

Income_pertable= PercTable(Income)
Income_pertable

# Summary for Family_household 
Family_household = Feb28$Family_household %>% replace(is.na(.), "*")

Family_household_pertable= PercTable(Family_household)
Family_household_pertable

# Summary for Children 
Children = Feb28$Children %>% replace(is.na(.), "*")

Children_pertable= PercTable(Children)
Children_pertable

# Summary for number of children below 5 years old 
Number_children_1 = Feb28$Number_children_1 %>% replace(is.na(.), "*")

Number_children_1_pertable= PercTable(Number_children_1)
Number_children_1_pertable

# Summary for number of children between 5-11 
Number_children_2 = Feb28$Number_children_2 %>% replace(is.na(.), "*")

Number_children_2_pertable= PercTable(Number_children_2)
Number_children_2_pertable

# Summary for number of children between 12-17 
Number_children_3 = Feb28$Number_children_3 %>% replace(is.na(.), "*")

Number_children_3_pertable= PercTable(Number_children_3)
Number_children_3_pertable

# Summary for elderly family members
Elderly_family = Feb28$Elderly_family %>% replace(is.na(.), "*")

Elderly_family_pertable= PercTable(Elderly_family)
Elderly_family_pertable

# Summary for the number of elderly family members aged 65-74  
Number_elderly_1 = Feb28$Number_elderly_1 %>% replace(is.na(.), "*")

Number_elderly_1_pertable= PercTable(Number_elderly_1)
Number_elderly_1_pertable

# Summary for the number of elderly family members aged 75+  
Number_elderly_2 = Feb28$Number_elderly_2 %>% replace(is.na(.), "*")

Number_elderly_2_pertable= PercTable(Number_elderly_2)
Number_elderly_2_pertable

# #Summary for health insurance
#changes NA values to missing 
Health_Insurance = Feb28$Health_Insurance %>% replace(is.na(.), "*")

Health_Insurance_pertable= PercTable(Health_Insurance)
Health_Insurance_pertable

# Summary for participants with cancer  
Conditions_Cancer = Feb28$Conditions_Cancer %>% replace(is.na(.), "*")

Conditions_Cancer_pertable= PercTable(Conditions_Cancer)
Conditions_Cancer_pertable

# Summary for participants with severe allergies  
Conditions_Severe_Allergies = Feb28$Conditions_Severe_Allergies %>% replace(is.na(.), "*")

Conditions_Severe_Allergies_pertable= PercTable(Conditions_Severe_Allergies)
Conditions_Severe_Allergies_pertable

# Summary for participants with seizures  
Conditions_Seizures = Feb28$Conditions_Seizures %>% replace(is.na(.), "*")

Conditions_Seizures_pertable= PercTable(Conditions_Seizures)
Conditions_Seizures_pertable

# Summary for participants with obesity  
Conditions_Obesity = Feb28$Conditions_Obesity %>% replace(is.na(.), "*")

Conditions_Obesity_pertable= PercTable(Conditions_Obesity)
Conditions_Obesity_pertable

# Summary for participants with cardiovascular disease  
Conditions_Cardio_Disease = Feb28$Conditions_Cardio_Disease %>% replace(is.na(.), "*")

Conditions_Cardio_Disease_pertable= PercTable(Conditions_Cardio_Disease)
Conditions_Cardio_Disease_pertable

# Summary for participants with Rheumatological  
Conditions_Rheumatological = Feb28$Conditions_Rheumatological %>% replace(is.na(.), "*")

Conditions_Rheumatological_pertable= PercTable(Conditions_Rheumatological)
Conditions_Rheumatological_pertable

# Summary for participants with pulmonary disease  
Conditions_Pulmonary = Feb28$Conditions_Pulmonary %>% replace(is.na(.), "*")

Conditions_Pulmonary_pertable= PercTable(Conditions_Pulmonary)
Conditions_Pulmonary_pertable

# Summary for participants with diabetes  
Conditions_Diabetes = Feb28$Conditions_Diabetes %>% replace(is.na(.), "*")

Conditions_Diabetes_pertable= PercTable(Conditions_Diabetes)
Conditions_Diabetes_pertable

# Summary for participants who are in an immunocompromised state 
Conditions_Immuno = Feb28$Conditions_Immuno %>% replace(is.na(.), "*")

Conditions_Immuno_pertable= PercTable(Conditions_Immuno)
Conditions_Immuno_pertable

# Summary for participants who are pregnant
Conditions_Pregnancy = Feb28$Conditions_Pregnancy %>% replace(is.na(.), "*")

Conditions_Pregnancy_pertable= PercTable(Conditions_Pregnancy)
Conditions_Pregnancy_pertable

# Summary for participants who are other
Conditions_Other = Feb28$Conditions_Other %>% replace(is.na(.), "*")

Conditions_Other_pertable= PercTable(Conditions_Other)
Conditions_Other_pertable

# Summary for participants who have no health conditions
Conditions_No_Conditions = Feb28$Conditions_No_Conditions %>% replace(is.na(.), "*")

Conditions_No_Conditions_pertable= PercTable(Conditions_No_Conditions)
Conditions_No_Conditions_pertable



#--------------------------------------SECTION2---------------------------------------------------#
# Summary for question 1: Has a healthcare provider or a home test ever informed you or your family members that you (or your children or other family members) had COVID-19?
Question_1 = Feb28$Question_1 %>% replace(is.na(.), "*")

Question_1_pertable= PercTable(Question_1)
Question_1_pertable

# Summary for question 2: How many members of your household tested positive for COVID-19
Question_2 = Feb28$Question_2 %>% replace(is.na(.), "*")

Question_2_pertable= PercTable(Question_2)
Question_2_pertable

# Summary for question 3: Age of family member 1 who had COVID-19
Question_3 = Feb28$Question_3 %>% replace(is.na(.), "*")

Question_3_pertable= PercTable(Question_3)
Question_3_pertable

# Summary for Question_4: How many months since family member 1 last tested positive 
Question_4 = Feb28$Question_4 %>% replace(is.na(.), "*")

Question_4_pertable= PercTable(Question_4)
Question_4_pertable

# Summary for Question_5: Age of family member 2 who had COVID-19
Question_5 = Feb28$Question_5 %>% replace(is.na(.), "*")

Question_5_pertable= PercTable(Question_5)
Question_5_pertable

# Summary for Question_6: How many months since family member 2 last tested positive 
Question_6 = Feb28$Question_6 %>% replace(is.na(.), "*")

Question_6_pertable= PercTable(Question_6)
Question_6_pertable

# Summary for Question_7: Age of family member one who 3 COVID-19
Question_7 = Feb28$Question_7 %>% replace(is.na(.), "*")

Question_7_pertable= PercTable(Question_7)
Question_7_pertable

# Summary for Question_8: How many months since family member 3 last tested positive 
Question_8 = Feb28$Question_8 %>% replace(is.na(.), "*")

Question_8_pertable= PercTable(Question_8)
Question_8_pertable

# Summary for Question_9: Age of family member four who had COVID-19
Question_9 = Feb28$Question_9 %>% replace(is.na(.), "*")

Question_9_pertable= PercTable(Question_9)
Question_9_pertable

# Summary for Question_10: How many months since family member 4 last tested positive 
Question_10 = Feb28$Question_10 %>% replace(is.na(.), "*")

Question_10_pertable= PercTable(Question_10)
Question_10_pertable

# Summary for Question_11: Age of family member 5 who had COVID-19
Question_11 = Feb28$Question_11 %>% replace(is.na(.), "*")

Question_11_pertable= PercTable(Question_11)
Question_11_pertable

# Summary for Question_12: How many months since family member 5 last tested positive 
Question_12 = Feb28$Question_12 %>% replace(is.na(.), "*")

Question_12_pertable= PercTable(Question_12)
Question_12_pertable

# Summary for Question_13: Did your  children or your family member experience Fever or chills
Question_13_Fever = Feb28$Question_13_Fever %>% replace(is.na(.), "*")

Question_13_Fever_pertable= PercTable(Question_13_Fever)
Question_13_Fever_pertable

# Summary for Question_13_Cough: Did your  children or your family member experience cough
Question_13_Cough = Feb28$Question_13_Cough %>% replace(is.na(.), "*")

Question_13_Cough_pertable= PercTable(Question_13_Cough)
Question_13_Cough_pertable

# Summary for Question_13_Shortness_of_breath: Did your  children or your family member experience Shortness_of_breath
Question_13_Shortness_of_breath = Feb28$Question_13_Shortness_of_breath %>% replace(is.na(.), "*")

Question_13_Shortness_of_breath_pertable= PercTable(Question_13_Shortness_of_breath)
Question_13_Shortness_of_breath_pertable

# Summary for Question_13_Fatigue: Did your  children or your family member experience Fatigue
Question_13_Fatigue = Feb28$Question_13_Fatigue %>% replace(is.na(.), "*")

Question_13_Fatigue_pertable= PercTable(Question_13_Fatigue)
Question_13_Fatigue_pertable

# Summary for Question_13_Muscle_Body_Aches: Did your  children or your family member experience _Muscle_Body_Aches
Question_13_Muscle_Body_Aches = Feb28$Question_13_Muscle_Body_Aches %>% replace(is.na(.), "*")

Question_13_Muscle_Body_Aches_pertable= PercTable(Question_13_Muscle_Body_Aches)
Question_13_Muscle_Body_Aches_pertable

# Summary for Question_13_Headache: Did your  children or your family member experience Headache
Question_13_Headache = Feb28$Question_13_Headache %>% replace(is.na(.), "*")

Question_13_Headache_pertable= PercTable(Question_13_Headache)
Question_13_Headache_pertable

# Summary for Question_13_Loss_of_Taste: Did your  children or your family member experience Loss_of_Taste
Question_13_Loss_of_Taste = Feb28$Question_13_Loss_of_Taste %>% replace(is.na(.), "*")

Question_13_Loss_of_Taste_pertable= PercTable(Question_13_Loss_of_Taste)
Question_13_Loss_of_Taste_pertable

# Summary for Question_13_Sore_Throat: Did your  children or your family member experience Sore_Throat
Question_13_Sore_Throat = Feb28$Question_13_Sore_Throat %>% replace(is.na(.), "*")

Question_13_Sore_Throat_pertable= PercTable(Question_13_Sore_Throat)
Question_13_Sore_Throat_pertable

# Summary for Question_13_Congestion: Did your  children or your family member experience Congestion
Question_13_Congestion = Feb28$Question_13_Congestion %>% replace(is.na(.), "*")

Question_13_Congestion_pertable= PercTable(Question_13_Congestion)
Question_13_Congestion_pertable

# Summary for Question_13_Nausea: Did your  children or your family member experience Nausea
Question_13_Nausea = Feb28$Question_13_Nausea %>% replace(is.na(.), "*")

Question_13_Nausea_pertable= PercTable(Question_13_Nausea)
Question_13_Nausea_pertable

# Summary for Question_13_Diarrhea: Did your  children or your family member experience Diarrhea
Question_13_Diarrhea = Feb28$Question_13_Diarrhea %>% replace(is.na(.), "*")

Question_13_Diarrhea_pertable= PercTable(Question_13_Diarrhea)
Question_13_Diarrhea_pertable

# Summary for Question_13_Asymptomatic: Did your  children or your family member experience Asymptomatic
Question_13_Asymptomatic = Feb28$Question_13_Asymptomatic %>% replace(is.na(.), "*")

Question_13_Asymptomatic_pertable= PercTable(Question_13_Asymptomatic)
Question_13_Asymptomatic_pertable

# Summary for Question_13_Other: Did your  children or your family member experience other
Question_13_Other = Feb28$Question_13_Other %>% replace(is.na(.), "*")

Question_13_Other_pertable= PercTable(Question_13_Other)
Question_13_Other_pertable

# Summary for Question_14: Describe your symptoms
Question_14 = Feb28$Question_14 %>% replace(is.na(.), "*")

Question_14_pertable= PercTable(Question_14)
Question_14_pertable

# Summary for Question_15:   I (or my chidlren) am at risk of getting a COVID-19 infection
Question_15 = Feb28$Question_15 %>% replace(is.na(.), "*")

Question_15_pertable= PercTable(Question_15)
Question_15_pertable

# Summary for Question_16:  My family members are at risk of COVID-19 infection 
Question_16 = Feb28$Question_16 %>% replace(is.na(.), "*")

Question_16_pertable= PercTable(Question_16)
Question_16_pertable

# Summary for Question_17:   I feel knowledgeable about the risk of getting COVID-19 infection
Question_17 = Feb28$Question_17 %>% replace(is.na(.), "*")

Question_17_pertable= PercTable(Question_17)
Question_17_pertable

# Summary for Question_18:   I am worried about the likehood of getting a COVID-19 infection in the near future
Question_18 = Feb28$Question_18 %>% replace(is.na(.), "*")

Question_18_pertable= PercTable(Question_18)
Question_18_pertable

# Summary for Question_19:Can we prevent ourselves from getting infected with the COVID-19 virus and/or reduce the severity of infection if infected?
Question_19 = Feb28$Question_19 %>% replace(is.na(.), "*")

Question_19_pertable= PercTable(Question_19)
Question_19_pertable

# Summary for Question_20_Basic_Health: Prevention strategies - Basic health and hygiene practices (mask wearing, handwashing, etc.)
Question_20_Basic_Health = Feb28$Question_20_Basic_Health %>% replace(is.na(.), "*")

Question_20_Basic_Health_pertable= PercTable(Question_20_Basic_Health)
Question_20_Basic_Health_pertable

# Summary for Question_20_COVID_19_Vacc: Prevention strategies - Staying up to date with COVID-19 vaccines
Question_20_COVID_19_Vacc = Feb28$Question_20_COVID_19_Vacc %>% replace(is.na(.), "*")

Question_20_COVID_19_Vacc_pertable= PercTable(Question_20_COVID_19_Vacc)
Question_20_COVID_19_Vacc_pertable

# Summary for Question_20_Improving_ventilation: Prevention strategies
Question_20_Improving_ventilation = Feb28$Question_20_Improving_ventilation %>% replace(is.na(.), "*")

Question_20_Improving_ventilation_pertable= PercTable(Question_20_Improving_ventilation)
Question_20_Improving_ventilation_pertable

# Summary for Question_20_Getting_tested: Prevention strategies
Question_20_Getting_tested = Feb28$Question_20_Getting_tested %>% replace(is.na(.), "*")

Question_20_Getting_tested_pertable= PercTable(Question_20_Getting_tested)
Question_20_Getting_tested_pertable

# Summary for Question_20_Following_recommendations: Prevention strategies
Question_20_Following_recommendations = Feb28$Question_20_Following_recommendations %>% replace(is.na(.), "*")

Question_20_Following_recommendations_pertable= PercTable(Question_20_Following_recommendations)
Question_20_Following_recommendations_pertable

# Summary for Question_20_Staying_home: Prevention strategies
Question_20_Staying_home = Feb28$Question_20_Staying_home %>% replace(is.na(.), "*")

Question_20_Staying_home_pertable= PercTable(Question_20_Staying_home)
Question_20_Staying_home_pertable

# Summary for Question_20_Seeking: Prevention strategies
Question_20_Seeking = Feb28$Question_20_Seeking %>% replace(is.na(.), "*")

Question_20_Seeking_pertable= PercTable(Question_20_Seeking)
Question_20_Seeking_pertable

# Summary for Question_20_Avoiding: Prevention strategies - Avoiding contact with people who have suspected or confirmed COVID-19
Question_20_Avoiding = Feb28$Question_20_Avoiding %>% replace(is.na(.), "*")

Question_20_Avoiding_pertable= PercTable(Question_20_Avoiding)
Question_20_Avoiding_pertable

# Summary for Question_21:  Do you know where to get a COVID-19 vaccine?
Question_21 = Feb28$Question_21 %>% replace(is.na(.), "*")

Question_21_pertable= PercTable(Question_21)
Question_21_pertable

#--------------------------------------SECTION3---------------------------------------------------#

# Summary for Question_22:  Were you provided with COVID-19 health information during the event today?
Question_22 = Feb28$Question_22 %>% replace(is.na(.), "*")

Question_22_pertable= PercTable(Question_22)
Question_22_pertable

# Summary for Question_23:  Did you understand the COVID-19 health information provided today?
Question_23 = Feb28$Question_23 %>% replace(is.na(.), "*")

Question_23_pertable= PercTable(Question_23)
Question_23_pertable

# Summary for Question_24:   Did you receive information on the COVID-19 vaccine today?
Question_24 = Feb28$Question_24 %>% replace(is.na(.), "*")

Question_24_pertable= PercTable(Question_24)
Question_24_pertable

# Summary for Question_25:    Did you also receive a COVID-19 vaccine today?  
Question_25 = Feb28$Question_25 %>% replace(is.na(.), "*")

Question_25_pertable= PercTable(Question_25)
Question_25_pertable

# Summary for Question_26: Was the COVID-19 vaccine dose you received today your 1st dose?
Question_26 = Feb28$Question_26 %>% replace(is.na(.), "*")

Question_26_pertable= PercTable(Question_26)
Question_26_pertable

# Summary for Question_27: Were you vaccinated in the past?
Question_27 = Feb28$Question_27 %>% replace(is.na(.), "*")

Question_27_pertable= PercTable(Question_27)
Question_27_pertable

# Summary for Question_28: Do you plan to get vaccinated in the near future? 
Question_28 = Feb28$Question_28 %>% replace(is.na(.), "*")

Question_28_pertable= PercTable(Question_28)
Question_28_pertable

# Summary for Question_29: If/when you decide to get vaccinated, do you know where to get a COVID-19 vaccine?
Question_29 = Feb28$Question_29 %>% replace(is.na(.), "*")

Question_29_pertable= PercTable(Question_29)
Question_29_pertable

# Summary for Question_30_Physician:  Who provided the information during the event today? Physician
Question_30_Physician = Feb28$Question_30_Physician %>% replace(is.na(.), "*")

Question_30_Physician_pertable= PercTable(Question_30_Physician)
Question_30_Physician_pertable

# Summary for Question_30_Nurse_Practitioner:   Who provided the information during the event today? Nurse Practitioner
Question_30_Nurse_Practitioner = Feb28$Question_30_Nurse_Practitioner %>% replace(is.na(.), "*")

Question_30_Nurse_Practitioner_pertable= PercTable(Question_30_Nurse_Practitioner)
Question_30_Nurse_Practitioner_pertable

# Summary for Question_30_Registered_Nurse:   Who provided the information during the event today? Registered Nurse 
Question_30_Registered_Nurse = Feb28$Question_30_Registered_Nurse %>% replace(is.na(.), "*")

Question_30_Registered_Nurse_pertable= PercTable(Question_30_Registered_Nurse)
Question_30_Registered_Nurse_pertable

# Summary for Question_30_Community_Health_Advocate:  Who provided the information during the event today? Community Health Advocate
Question_30_Community_Health_Advocate = Feb28$Question_30_Community_Health_Advocate %>% replace(is.na(.), "*")

Question_30_Community_Health_Advocate_pertable= PercTable(Question_30_Community_Health_Advocate)
Question_30_Community_Health_Advocate_pertable

# Summary for Question_30_Community_Member:   Who provided the information during the event today? Community Member
Question_30_Community_Member = Feb28$Question_30_Community_Member %>% replace(is.na(.), "*")

Question_30_Community_Member_pertable= PercTable(Question_30_Community_Member)
Question_30_Community_Member_pertable

# Summary for Question_30_Other:   Who provided the information during the event today? Other
Question_30_Other = Feb28$Question_30_Other %>% replace(is.na(.), "*")

Question_30_Other_pertable= PercTable(Question_30_Other)
Question_30_Other_pertable

# Summary for Question_31:   Who provided the information during the event today? specify
Question_31 = Feb28$Question_31 %>% replace(is.na(.), "*")

Question_31_pertable= PercTable(Question_31)
Question_31_pertable

# Summary for Question_32: Did the information provider during the event today check your understanding of the COVID-19 health information provided including information about the vaccine? 
Question_32 = Feb28$Question_32 %>% replace(is.na(.), "*")

Question_32_pertable= PercTable(Question_32)
Question_32_pertable

# Summary for Question_33:  Were you satisfied with the communication regarding COVID-19 health information including information about the vaccine during the event today? 
Question_33 = Feb28$Question_33 %>% replace(is.na(.), "*")

Question_33_pertable= PercTable(Question_33)
Question_33_pertable

# Summary for Question_34: Were you involved in decisions regarding COVID-19 vaccination decisions made today?
Question_34 = Feb28$Question_34 %>% replace(is.na(.), "*")

Question_34_pertable= PercTable(Question_34)
Question_34_pertable

# Summary for Question_35:  How confident are you about COVID 19 vaccine after participating in the event today? 
Question_35 = Feb28$Question_35 %>% replace(is.na(.), "*")

Question_35_pertable= PercTable(Question_35)
Question_35_pertable

# Summary for Question_36:  Was the information session you participated in today hosted by a
Question_36 = Feb28$Question_36 %>% replace(is.na(.), "*")

Question_36_pertable= PercTable(Question_36)
Question_36_pertable

# Summary for Question_37:  Please provide the name of the person (s) or organization (s) who provided the information
Question_37 = Feb28$Question_37 %>% replace(is.na(.), "*")

Question_37_pertable= PercTable(Question_37)
Question_37_pertable

# Summary for Question_38_Handout_flier:  How did you hear about the activity you attended today? Handout flier, pamphlet, or brochure
Question_38_Handout_flier = Feb28$Question_38_Handout_flier %>% replace(is.na(.), "*")

Question_38_Handout_flier_pertable= PercTable(Question_38_Handout_flier)
Question_38_Handout_flier_pertable

# Summary for Question_38_Social_media:  How did you hear about the activity you attended today? Social media (TikTok, Instagram, Facebook and Twitter)
Question_38_Social_media = Feb28$Question_38_Social_media %>% replace(is.na(.), "*")

Question_38_Social_media_pertable= PercTable(Question_38_Social_media)
Question_38_Social_media_pertable


# Summary for Question_38_Standard_media: How did you hear about the activity you attended today? standard medial source (TV, Radio, Newspaper)
Question_38_Standard_media = Feb28$Question_38_Standard_media %>% replace(is.na(.), "*")

Question_38_Standard_media_pertable= PercTable(Question_38_Standard_media)
Question_38_Standard_media_pertable


# Summary for Question_38_Community_Health_Advocate: How did you hear about the activity you attended today? A community health advocate or any other community professional
Question_38_Community_Health_Advocate = Feb28$Question_38_Community_Health_Advocate %>% replace(is.na(.), "*")

Question_38_Community_Health_Advocate_pertable= PercTable(Question_38_Community_Health_Advocate)
Question_38_Community_Health_Advocate_pertable


# Summary for Question_38_Church_service: How did you hear about the activity you attended today? church service 
Question_38_Church_service = Feb28$Question_38_Church_service %>% replace(is.na(.), "*")

Question_38_Church_service_pertable= PercTable(Question_38_Church_service)
Question_38_Church_service_pertable

# Summary for Question_38_Barbershop: How did you hear about the activity you attended today? at the local barbershop
Question_38_Barbershop = Feb28$Question_38_Barbershop %>% replace(is.na(.), "*")

Question_38_Barbershop_pertable= PercTable(Question_38_Barbershop)
Question_38_Barbershop_pertable

# Summary for Question_38_Community_members: How did you hear about the activity you attended today? from community members, friends, or family members
Question_38_Community_members = Feb28$Question_38_Community_members %>% replace(is.na(.), "*")

Question_38_Community_members_pertable= PercTable(Question_38_Community_members)
Question_38_Community_members_pertable


# Summary for Question_38_Others: How did you hear about the activity you attended today? other
Question_38_Others = Feb28$Question_38_Others %>% replace(is.na(.), "*")

Question_38_Others_pertable= PercTable(Question_38_Others)
Question_38_Others_pertable

# Summary for Question_39: How did you hear about the activity you attended today? specify
Question_39 = Feb28$Question_39 %>% replace(is.na(.), "*")

Question_39_pertable= PercTable(Question_39)
Question_39_pertable

# Summary for Question_40:  Did your child or children also receive a COVID-19 vaccine today?  
Question_40 = Feb28$Question_40 %>% replace(is.na(.), "*")

Question_40_pertable= PercTable(Question_40)
Question_40_pertable

# Summary for Question_41:  was the dose you child/children received today their 1st dose 
Question_41 = Feb28$Question_41 %>% replace(is.na(.), "*")

Question_41_pertable= PercTable(Question_41)
Question_41_pertable

# Summary for Question_42:  was your child/children vaccinated in the past? 
Question_42 = Feb28$Question_42 %>% replace(is.na(.), "*")

Question_42_pertable= PercTable(Question_42)
Question_42_pertable

# Summary for Question_43: do you plan to get you child/children vaccinated in the near future? 
#missing

Question_43 = Feb28$Question_43 %>% replace(is.na(.), "*")

Question_43_pertable= PercTable(Question_43)
Question_43_pertable
```

#--------------------------------------SECTION4---------------------------------------------------#

# Summary for Question_44:  Getting sick from multiple dose of COVID-19 vaccine is of concern  
Question_44 = Feb28$Question_44 %>% replace(is.na(.), "*")

Question_44_pertable= PercTable(Question_44)
Question_44_pertable

# Summary for Question_45:   Dying from the COVID-19 vaccine is of concern 
Question_45 = Feb28$Question_45 %>% replace(is.na(.), "*")

Question_45_pertable= PercTable(Question_45)
Question_45_pertable


# Summary for Question_46:  Heart disease from the COVID-19 vaccine is of concern 
Question_46 = Feb28$Question_46 %>% replace(is.na(.), "*")

Question_46_pertable= PercTable(Question_46)
Question_46_pertable

# Summary for Question_47:  Blood clots from the COVID-19 vaccine is of concern 
Question_47 = Feb28$Question_47 %>% replace(is.na(.), "*")

Question_47_pertable= PercTable(Question_47)
Question_47_pertable

# Summary for Question_48:  The COVID-19 vaccine leads to miscarriages and is not appropriate for pregnant women  
Question_48 = Feb28$Question_48 %>% replace(is.na(.), "*")

Question_48_pertable= PercTable(Question_48)
Question_48_pertable

# Summary for Question_49:   High blood pressure from the COVID-19 vaccine is of concern 
Question_49 = Feb28$Question_49 %>% replace(is.na(.), "*")

Question_49_pertable= PercTable(Question_49)
Question_49_pertable

# Summary for Question_50:   COVID-19 vaccine implants a “computer chip” in the body
Question_50 = Feb28$Question_50 %>% replace(is.na(.), "*")

Question_50_pertable= PercTable(Question_50)
Question_50_pertable

# Summary for Question_51:  COVID-19 vaccine components remain in the human body for a long period of time 
Question_51 = Feb28$Question_51 %>% replace(is.na(.), "*")

Question_51_pertable= PercTable(Question_51)
Question_51_pertable

# Summary for Question_52: Pain from/related to COVID-19 vaccine is of concern. 
Question_52 = Feb28$Question_52 %>% replace(is.na(.), "*")

Question_52_pertable= PercTable(Question_52)
Question_52_pertable

# Summary for Question_53: COVID-19 vaccine is NOT an effective way to protect against COVID-19.  
Question_53 = Feb28$Question_53 %>% replace(is.na(.), "*")

Question_53_pertable= PercTable(Question_53)
Question_53_pertable

# Summary for Question_54: I don’t know how to get a hold of the COVID-19 vaccine 
Question_54 = Feb28$Question_54 %>% replace(is.na(.), "*")

Question_54_pertable= PercTable(Question_54)
Question_54_pertable

# Summary for Question_55: : It is inconvenient to get the COVID-19 vaccine 
Question_55 = Feb28$Question_55 %>% replace(is.na(.), "*")

Question_55_pertable= PercTable(Question_55)
Question_55_pertable

# Summary for Question_56: : There is a shortage of the COVID-19 vaccine 
Question_56 = Feb28$Question_56 %>% replace(is.na(.), "*")

Question_56_pertable= PercTable(Question_56)
Question_56_pertable

# Summary for Question_57: : The clinics/venues that provide the COVID-19 vaccine are too far away 
Question_57 = Feb28$Question_57 %>% replace(is.na(.), "*")

Question_57_pertable= PercTable(Question_57)
Question_57_pertable

# Summary for Question_58: :  I don’t have enough information to decide whether to take COVID-19 vaccine or no
Question_58 = Feb28$Question_58 %>% replace(is.na(.), "*")

Question_58_pertable= PercTable(Question_58)
Question_58_pertable

# Summary for Question_59: :  I am confused by the information about the COVID-19 vaccines 
Question_59 = Feb28$Question_59 %>% replace(is.na(.), "*")

Question_59_pertable= PercTable(Question_59)
Question_59_pertable

# Summary for Question_60: :  I don’t know where I can get accurate information about the COVID-19 vaccines 
Question_60 = Feb28$Question_60 %>% replace(is.na(.), "*")

Question_60_pertable= PercTable(Question_60)
Question_60_pertable

# Summary for Question_61: :   I don't know where I can get trustworthy information about the COVID-19 vaccines  
Question_61 = Feb28$Question_61 %>% replace(is.na(.), "*")

Question_61_pertable= PercTable(Question_61)
Question_61_pertable

# Summary for Question_62: : I don’t trust vaccines in general  
Question_62 = Feb28$Question_62 %>% replace(is.na(.), "*")

Question_62_pertable= PercTable(Question_62)
Question_62_pertable

# Summary for Question_63: : I don’t trust the scientists/professionals who recommend the COVID-19 vaccines 
Question_63 = Feb28$Question_63 %>% replace(is.na(.), "*")

Question_63_pertable= PercTable(Question_63)
Question_63_pertable

# Summary for Question_64: : I don’t trust the government agencies that approved the COVID-19 vaccines  
Question_64 = Feb28$Question_64 %>% replace(is.na(.), "*")

Question_64_pertable= PercTable(Question_64)
Question_64_pertable

# Summary for Question_65: :  I don’t trust the pharmaceutical companies that manufacture the COVID-19 vaccines 
Question_65 = Feb28$Question_65 %>% replace(is.na(.), "*")

Question_65_pertable= PercTable(Question_65)
Question_65_pertable

# Summary for Question_66: :  I don’t trust media that recommend the COVID-19 vaccines 
Question_66 = Feb28$Question_66 %>% replace(is.na(.), "*")

Question_66_pertable= PercTable(Question_66)
Question_66_pertable

# Summary for Question_67: :  As long as I am faithful to my God and/or my religion, I am protected from COVID-19, therefore I do not need the COVID-19 vaccine 
Question_67 = Feb28$Question_67 %>% replace(is.na(.), "*")

Question_67_pertable= PercTable(Question_67)
Question_67_pertable

# Summary for Question_68: :  The COVID-19 vaccines’ ingredients are banned by my religion therefore I cannot get the COVID-19 vaccine 
Question_68 = Feb28$Question_68 %>% replace(is.na(.), "*")

Question_68_pertable= PercTable(Question_68)
Question_68_pertable

# Summary for Question_69: :  It is better to use spiritual/holy preventive measures (e.g., holy water, holy oil, cross, holy amulets, etc.) to prevent getting sick from COVID-19 than
Question_69 = Feb28$Question_69 %>% replace(is.na(.), "*")

Question_69_pertable= PercTable(Question_69)
Question_69_pertable

# Summary for Question_70: :   It is better to use natural preventive methods (e.g., essential oils, other natural drinks, tonics etc.) to prevent getting infected with COVID-19 than getting the vaccine 
Question_70 = Feb28$Question_70 %>% replace(is.na(.), "*")

Question_70_pertable= PercTable(Question_70)
Question_70_pertable

# Summary for Question_71: :   It is better to get sick of COVID-19 and for your body to fight it off, building natural immunity than getting the vaccine rinks, tonics etc.) to prevent getting infected with COVID-19 than getting the vaccine 
Question_71 = Feb28$Question_71 %>% replace(is.na(.), "*")

Question_71_pertable= PercTable(Question_71)
Question_71_pertable

#--------------------------------------SECTION5---------------------------------------------------#

# Summary for Question_72: :   I am willing to get vaccinated if The CDC/ local health department recommended us to get the COVID-19 vaccine
Question_72 = Feb28$Question_72 %>% replace(is.na(.), "*")

Question_72_pertable= PercTable(Question_72)
Question_72_pertable


# Summary for Question_73: :  I am willing to get vaccinated if My health care provider recommended me to get the COVID-19 vaccine 
Question_73 = Feb28$Question_73 %>% replace(is.na(.), "*")

Question_73_pertable= PercTable(Question_73)
Question_73_pertable


# Summary for Question_74: :  I am willing to get vaccinated if My nurse recommended me to get the COVID-19 vaccine  
Question_74 = Feb28$Question_74 %>% replace(is.na(.), "*")

Question_74_pertable= PercTable(Question_74)
Question_74_pertable

# Summary for Question_75: :  I am willing to get vaccinated if My spiritual advisor (such as pastor/priest/rabbi/imam) recommended me to get the COVID-19 vaccine  
Question_75 = Feb28$Question_75 %>% replace(is.na(.), "*")

Question_75_pertable= PercTable(Question_75)
Question_75_pertable

# Summary for Question_76: :  I am willing to get vaccinated if My family members recommended me to get the COVID-19 vaccine
Question_76 = Feb28$Question_76 %>% replace(is.na(.), "*")

Question_76_pertable= PercTable(Question_76)
Question_76_pertable

# Summary for Question_77: :  I am willing to get vaccinated if My colleagues/co-workers recommended me to get the COVID-19 vaccine 
Question_77 = Feb28$Question_77 %>% replace(is.na(.), "*")

Question_77_pertable= PercTable(Question_77)
Question_77_pertable

# Summary for Question_78: :  I am willing to get vaccinated if...- I need to learn more about COVID-19 vaccination, its side effects, benefits, and future implications 
Question_78 = Feb28$Question_78 %>% replace(is.na(.), "*")

Question_78_pertable= PercTable(Question_78)
Question_78_pertable

# Summary for data_source: pen and paper or qualtrics 
data_source = Feb28$data_source %>% replace(is.na(.), "*")

data_source_pertable= PercTable(data_source)
data_source_pertable

