#library need 
library(readxl) 
library(here)

#import data 
Data_location = here::here("Primary Data Analysis ","data","raw data ","Health Literacy Survey (full survey)_February 5, 2023_11.41.xlsx")

Rawdata = readxl::read_excel(Data_location)

Data_location

#concatenating name and year 
Rawdata$ID <- paste(Rawdata$Q2_2, Rawdata$Q2_3)

#removing columns 
Rawdata <- Rawdata[,-c(1:17,19:20)]

#converting gender column to numerical data 
Rawdata$Q3...22 <- as.numeric(c("Gender" = "Gender", "Male" = "1", "Female" = "2")[Rawdata$Q3...22]) 

#age to numerical data  
Rawdata$Q4...23 <- as.numeric(c("18-24 years old" = "1", "25-34 years old" = "2",  
                             "35-44 years old" = "3", "45-54 years old" = "4" ,  
                             "55-64 years old" = "5" , "65-74 years old" = "6" ,  
                             "75 years or older" = "7" )[Rawdata$Q4...23]) 

#race to numerical data  
Rawdata$Q5...24 <- as.numeric(c("African American" = "1", "Caucasian" = "2",   
                             "Latino or Hispanic" = "3", "Asian" = "4" ,   
                             "Native American" = "5" , "Other" = "6")[Rawdata$Q5...24]) 

#education to numerical data  
Rawdata$Q7...26 <- as.numeric(c("Less than High School" = "1", "High School" = "2", "Bachelor’s Degree or higher" = "3") [Rawdata$ Q7...26]) 

#language to numerical data  
Rawdata$Q8 <- as.numeric(c("English" = "1", "Spanish" = "2", "Other" = "3") [Rawdata$ Q8]) 

#income to numerical data  
Rawdata$Q10...29 <- as.numeric(c("Less than $25,000" = "1", "$25,000-$50,000" = "2", "$50,000-$100,000" = "3","More than $100,000" = "4")[Rawdata$Q10...29]) 
#do you have children to numerical data 
Rawdata$Q11...31 <- as.numeric(c("Yes" = "1", "No" = "2")[Rawdata$Q11...31]) 
#do you have elderly family members in household to numerical data 
Rawdata$Q46 <- as.numeric(c("Yes" = "1", "No" = "2")[Rawdata$Q46]) 
#insurance to numerical data  
Rawdata$Q48 <- as.numeric(c("Medicaid" = "1", "Medicare" = "2", "ACA" = "3", "Uninsured" = "4" , "Private insurnce" = "5" , "Other" = "6" ,"Don't know/Not sure" = "7" )[Rawdata$Q48]) 

#Has a healthcare provider or a home test ever informed you or your family members that you (or your children or other family members) had COVID-19? To numerical 
Rawdata$Q3...40 <- as.numeric(c("Yes" = "1", "No" = "2", " Not sure" = "3", "Do not know" = "4")[Rawdata$Q3...40]) 

#changing question 15-18, 4(every question with “1: strongly disagree; 2: disagree; 3: neutral; 4: agree; 5: strongly agree” as the answer) 
Rawdata$Q15_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q15_1]) 
Rawdata$Q15_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q15_2]) 
Rawdata$Q15_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q15_3]) 
Rawdata$Q15_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q15_4]) 

Rawdata$Q37_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_1]) 
Rawdata$Q37_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_2]) 
Rawdata$Q37_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_3]) 
Rawdata$Q37_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_4]) 
Rawdata$Q37_5 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_5]) 

Rawdata$Q37_6 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_6]) 
Rawdata$Q37_7 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_7]) 
Rawdata$Q37_8 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_8]) 
Rawdata$Q37_9 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q37_9]) 
Rawdata$Q37_10 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_10]) 
Rawdata$Q37_11 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_11]) 
Rawdata$Q37_12 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_12]) 
Rawdata$Q37_13 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_13]) 
Rawdata$Q37_14 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_14]) 
Rawdata$Q37_15 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_15]) 

Rawdata$Q37_16 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_16]) 

Rawdata$Q37_17 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_17]) 

Rawdata$Q37_18 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_18]) 

Rawdata$Q37_19 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_19]) 

Rawdata$Q37_20 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_20]) 
Rawdata$Q37_21 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_21]) 
Rawdata$Q37_22 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_22]) 
Rawdata$Q37_23 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_23]) 
Rawdata$Q37_24 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_24]) 

Rawdata$Q37_25 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_25]) 

Rawdata$Q37_26 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_26]) 
Rawdata$Q37_27 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_27]) 

Rawdata$Q37_28 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                            "Neutral" = "3", "Agree" = "4",   
                            "Strongly Agree" = "5")[Rawdata$Q37_28]) 
Rawdata$Q38_1 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_1]) 
Rawdata$Q38_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_2]) 
Rawdata$Q38_2 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_2]) 

Rawdata$Q38_3 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_3]) 
Rawdata$Q38_4 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_4]) 
Rawdata$Q38_5 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_5]) 
Rawdata$Q38_6 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_6]) 
Rawdata$Q38_7 <- as.numeric(c("Strongly Disagree" = "1", "Disagree" = "2",   
                           "Neutral" = "3", "Agree" = "4",   
                           "Strongly Agree" = "5")[Rawdata$Q38_7]) 

#can we prevent ourselves converted to numerical  
Rawdata$Q5...58 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q5...58]) 

# Do you know where to get a COVID-19 vaccine? 
Rawdata$Q56 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q56]) 

# Were you provided with COVID-19 health information during the event today? 
Rawdata$Q17 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q17]) 
# Did you understand the COVID-19 health information provided today? 
Rawdata$Q18 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q18]) 
# Did you receive information on the COVID-19 vaccine 
Rawdata$Q22 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q22]) 
# Did you also receive a COVID-19 vaccine today? 
Rawdata$Q11...64 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q11...64]) 
# Was the COVID-19 vaccine dose you received today 
Rawdata$Q23 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q23]) 
# Were you vaccinated in the past? 
Rawdata$Q10...66 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q10...66]) 
# Do you plan to get vaccinated in the near future? 
Rawdata$Q12 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q12]) 
# If/when you decide to get vaccinated, do you know 
Rawdata$Q55 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q55]) 

#Did the information provider during the event today check your understanding of the COVID-19 health information provided including information about the vaccine? 
Rawdata$Q25 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q25]) 
# Were you satisfied with the communication regarding 
Rawdata$Q26 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q26]) 
# Were you involved in decisions regarding COVID-19 v 
Rawdata$Q27 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q27]) 
# How confident are you about COVID 19 vaccine after 
Rawdata$Q28 <- as.numeric(c("Very confident" = "1", "Moderately confident" = "2","Moderately unconfident" = "3", "Very unconfident" = "4")[Rawdata$Q28]) 
# Was the information session you participated in today 
Rawdata$Q29 <- as.numeric(c("local church" = "1", "local hospital" = "2",  
                             "local barbershop" = "3", "mobile vaccine and/or testing clinics" = "4" ,  
                             "other community event" = "5")[Rawdata$Q29]) 
# Did your child or children also receive a COVID-19 vaccine today? 
Rawdata$Q33 <- as.numeric(c("Yes" = "1", "No" = "2","I do not have children under 18 in my household" = "3")[Rawdata$Q33]) 
# Was the dose they received today their 1st dose? 
Rawdata$Q34 <- as.numeric(c("Yes" = "1", "No" = "2")[Rawdata$Q34]) 
# Were they vaccinated in the past? 
Rawdata$Q35 <- as.numeric(c("Yes" = "1", "No" = "2")[Rawdata$Q35]) 
# Do you plan to get you child/children vaccinated in the future  
Rawdata$Q36 <- as.numeric(c("Yes" = "1", "No" = "2","Not sure" = "3", "Do not know" = "4")[Rawdata$Q36]) 

#saving as xlsx file so you can edit in excel and upload to code book
install.packages("writexl")
library("writexl")
##setting working directory to desktop then saving the file 
setwd("~/Desktop")
write_xlsx(Rawdata, "ASU_Combined.xlsx")

