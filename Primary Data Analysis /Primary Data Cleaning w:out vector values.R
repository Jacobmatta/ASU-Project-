#library need 
library(readxl) 
#import data 
Health_Literacy_Survey_full_survey_January_20_2023_08_01 <- read_excel("Downloads/Health Literacy Survey (full survey)_January 20, 2023_08.01.xlsx")

#duplicating data 
HLS2 <- Health_Literacy_Survey_full_survey_January_20_2023_08_01

#concatenating name and year 
HLS2$ID <- paste(HLS2$Q2_2, HLS2$Q2_3)

#removing columns 
HLS2 <- HLS2[,-c(1:17,19:20)]

#converting gender column to numerical data 
HLS2$Q3...22 <- as.numeric(c("Gender" = "Gender", "Male" = "1", "Female" = "2")[HLS2$Q3...22]) 

#age to numerical data  
HLS2$Q4...23 <- as.numeric(c("18-24 years old" = "1", "25-34 years old" = "2",  
                             "35-44 years old" = "3", "45-54 years old" = "4" ,  
                             "55-64 years old" = "5" , "65-74 years old" = "6" ,  
                             "75 years or older" = "7" )[HLS2$Q4...23]) 

#race to numerical data  
HLS2$Q5...24 <- as.numeric(c("African American" = "1", "Caucasian" = "2",   
                             "Latino or Hispanic" = "3", "Asian" = "4" ,   
                             "Native American" = "5" , "Other" = "6")[HLS2$Q5...24]) 

#education to numerical data  
HLS2$Q7...26 <- as.numeric(c("Less than High School" = "1", "High School" = "2", "Bachelor’s Degree or higher" = "3") [HLS2$ Q7...26]) 

#language to numerical data  
HLS2$Q8 <- as.numeric(c("English" = "1", "Spanish" = "2", "Other" = "3") [HLS2$ Q8]) 

#income to numerical data  
HLS2$Q10...29 <- as.numeric(c("Less than $25,000" = "1", "$25,000-$50,000" = "2", "$50,000-$100,000" = "3","More than $100,000" = "4")[HLS2$Q10...29]) 
#do you have children to numerical data 
HLS2$Q11...31 <- as.numeric(c("Yes" = "1", "No" = "2")[HLS2$Q11...31]) 
#do you have elderly family members in household to numerical data 
HLS2$Q46 <- as.numeric(c("Yes" = "1", "No" = "2")[HLS2$Q46]) 
#insurance to numerical data  
HLS2$Q48 <- as.numeric(c("Medicaid" = "1", "Medicare" = "2", "ACA" = "3", "Uninsured" = "4" , "Private insurnce" = "5" , "Other" = "6" ,"Don't know/Not sure" = "7" )[HLS2$Q48]) 

#Has a healthcare provider or a home test ever informed you or your family members that you (or your children or other family members) had COVID-19? To numerical 
HLS2$Q3...40 <- as.numeric(c("Yes" = "1", "No" = "2", " Not sure" = "3", "Do not know" = "4")[HLS2$Q3...40]) 

#changing question 15-18, 4(every question with “1: strongly disagree; 2: disagree; 3: neutral; 4: agree; 5: strongly agree” as the answer) 
HLS2$Q15_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q15_1]) 
HLS2$Q15_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q15_2]) 
HLS2$Q15_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q15_3]) 
HLS2$Q15_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q15_4]) 

HLS2$Q37_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_1]) 
HLS2$Q37_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_2]) 
HLS2$Q37_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_3]) 
HLS2$Q37_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_4]) 
HLS2$Q37_5 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_5]) 

HLS2$Q37_6 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_6]) 
HLS2$Q37_7 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_7]) 
HLS2$Q37_8 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_8]) 
HLS2$Q37_9 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q37_9]) 
HLS2$Q37_10 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_10]) 
HLS2$Q37_11 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_11]) 
HLS2$Q37_12 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_12]) 
HLS2$Q37_13 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_13]) 
HLS2$Q37_14 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_14]) 
HLS2$Q37_15 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_15]) 

HLS2$Q37_16 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_16]) 

HLS2$Q37_17 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_17]) 

HLS2$Q37_18 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_18]) 

HLS2$Q37_19 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_19]) 

HLS2$Q37_20 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_20]) 
HLS2$Q37_21 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_21]) 
HLS2$Q37_22 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_22]) 
HLS2$Q37_23 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_23]) 
HLS2$Q37_24 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_24]) 

HLS2$Q37_25 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_25]) 

HLS2$Q37_26 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_26]) 
HLS2$Q37_27 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_27]) 

HLS2$Q37_28 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[HLS2$Q37_28]) 
HLS2$Q38_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_1]) 
HLS2$Q38_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_2]) 
HLS2$Q38_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_2]) 

HLS2$Q38_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_3]) 
HLS2$Q38_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_4]) 
HLS2$Q38_5 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_5]) 
HLS2$Q38_6 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_6]) 
HLS2$Q38_7 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[HLS2$Q38_7]) 

#can we prevent ourselves converted to numerical  
HLS2$Q5...58 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q5...58]) 

# Do you know where to get a COVID-19 vaccine? 
HLS2$Q56 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q56]) 

# Were you provided with COVID-19 health information during the event today? 
HLS2$Q17 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q17]) 
# Did you understand the COVID-19 health information provided today? 
HLS2$Q18 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q18]) 
# Did you receive information on the COVID-19 vaccine 
HLS2$Q22 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q22]) 
# Did you also receive a COVID-19 vaccine today? 
HLS2$Q11...64 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q11...64]) 
# Was the COVID-19 vaccine dose you received today 
HLS2$Q23 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q23]) 
# Were you vaccinated in the past? 
HLS2$Q10...66 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q10...66]) 
# Do you plan to get vaccinated in the near future? 
HLS2$Q12 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q12]) 
# If/when you decide to get vaccinated, do you know 
HLS2$Q55 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q55]) 

#Did the information provider during the event today check your understanding of the COVID-19 health information provided including information about the vaccine? 
HLS2$Q25 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q25]) 
# Were you satisfied with the communication regarding 
HLS2$Q26 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q26]) 
# Were you involved in decisions regarding COVID-19 v 
HLS2$Q27 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q27]) 
# How confident are you about COVID 19 vaccine after 
HLS2$Q28 <- as.numeric(c("Very confident" = "1", "Moderately confident" = "2","Moderately unconfident" = "3", "Very unconfident" = "4")[HLS2$Q28]) 
# Was the information session you participated in today 
HLS2$Q29 <- as.numeric(c("local church" = "1", "local hospital" = "2",  
                             "local barbershop" = "3", "mobile vaccine and/or testing clinics" = "4" ,  
                             "other community event" = "5")[HLS2$Q29]) 
# Did your child or children also receive a COVID-19 vaccine today? 
HLS2$Q33 <- as.numeric(c("Yes" = "1", "No" = "2","I do not have children under 18 in my household" = "3")[HLS2$Q33]) 
# Was the dose they received today their 1st dose? 
HLS2$Q34 <- as.numeric(c("Yes" = "1", "No" = "2")[HLS2$Q34]) 
# Were they vaccinated in the past? 
HLS2$Q35 <- as.numeric(c("Yes" = "1", "No" = "2")[HLS2$Q35]) 
# Do you plan to get you child/children vaccinated in the future  
HLS2$Q36 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[HLS2$Q36]) 

#saving as xlsx file
install.packages("writexl")
library("writexl")
##setting working directory to desktop then saving the file 
setwd("~/Desktop")
write_xlsx(HLS2, "HLS2.xlsx")

