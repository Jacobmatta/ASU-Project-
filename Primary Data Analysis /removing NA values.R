library("dplyr")
library("tidyr")
library(readxl)

Copy_of_ASU_Codebook_Combined_Copy <- read_excel("~/Desktop/Copy of ASU_Codebook_Combined_Copy.xlsx")

CAC <- Copy_of_ASU_Codebook_Combined_Copy

#changing missing values of conditions to "*"
CAC <- CAC %>% mutate(Conditions_Cancer = ifelse(is.na(Conditions_Cancer), "*", Conditions_Cancer))
CAC <- CAC %>% mutate(Conditions_Severe_Allergies = ifelse(is.na(Conditions_Severe_Allergies), "*", Conditions_Severe_Allergies))
CAC <- CAC %>% mutate(Conditions_Seizures = ifelse(is.na(Conditions_Seizures), "*", Conditions_Seizures))
CAC <- CAC %>% mutate(Conditions_Obesity = ifelse(is.na(Conditions_Obesity), "*", Conditions_Obesity))
CAC <- CAC %>% mutate(Conditions_Cardio_Disease = ifelse(is.na(Conditions_Cardio_Disease), "*", Conditions_Cardio_Disease))
CAC <- CAC %>% mutate(Conditions_Rheumatological = ifelse(is.na(Conditions_Rheumatological), "*", Conditions_Rheumatological))
CAC <- CAC %>% mutate(Conditions_Pulmonary = ifelse(is.na(Conditions_Pulmonary), "*", Conditions_Pulmonary))
CAC <- CAC %>% mutate(Conditions_Diabetes = ifelse(is.na(Conditions_Diabetes), "*", Conditions_Diabetes))
CAC <- CAC %>% mutate(Conditions_Immuno = ifelse(is.na(Conditions_Immuno), "*", Conditions_Immuno))
CAC <- CAC %>% mutate(Conditions_Pregnancy = ifelse(is.na(Conditions_Pregnancy), "*", Conditions_Pregnancy))
CAC <- CAC %>% mutate(Conditions_Other = ifelse(is.na(Conditions_Other), "*", Conditions_Other))
CAC <- CAC %>% mutate(Conditions_No_Conditions = ifelse(is.na(Conditions_No_Conditions), "*", Conditions_No_Conditions))

####################################cleaning for Cancer
#removing parenthesis 
CAC$Conditions_Cancer<-gsub("[()]","",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("222222","2",
                                    as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("22222","2",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("2222","2",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("222","2",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("22","2",
                            as.character(CAC$Conditions_Cancer))
#cleaning previous entered data 
CAC$Conditions_Cancer<-gsub("678","2",
                            as.character(CAC$Conditions_Cancer))
CAC$Conditions_Cancer<-gsub("7","2",
                            as.character(CAC$Conditions_Cancer))
CAC$Conditions_Cancer<-gsub("4","2",
                            as.character(CAC$Conditions_Cancer))
####################################cleaning for Severe_Allergies
#removing parenthesis 
CAC$Conditions_Severe_Allergies<-gsub("[()]","",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("222222","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("22222","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("2222","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("222","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("22","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning previous entered data 
CAC$Conditions_Severe_Allergies<-gsub("678","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("7","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("4","2",
                                      as.character(CAC$Conditions_Severe_Allergies))
#more cleaning
CAC$Conditions_Severe_Allergies<-gsub("12","1",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("212","1",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("21","1",
                                      as.character(CAC$Conditions_Severe_Allergies))
