library("dplyr")
library("tidyr")
library(readxl)

ASU_Codebook_Combined_1_ <- read_excel("~/Desktop/ASU_Codebook_Combined(1).xlsx")
 View(ASU_Codebook_Combined_1_)

CAC <- ASU_Codebook_Combined_1_

rm(CAC)

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
CAC$Conditions_Cancer<-gsub("222222","*",
                                    as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("22222","*",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("2222","*",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("222","*",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("22","*",
                            as.character(CAC$Conditions_Cancer))
#cleaning long 2's 
CAC$Conditions_Cancer<-gsub("2","*",
                            as.character(CAC$Conditions_Cancer))
#cleaning previous entered data 
CAC$Conditions_Cancer<-gsub("678","*",
                            as.character(CAC$Conditions_Cancer))
CAC$Conditions_Cancer<-gsub("7","*",
                            as.character(CAC$Conditions_Cancer))
CAC$Conditions_Cancer<-gsub("4","*",
                            as.character(CAC$Conditions_Cancer))
####################################cleaning for Severe_Allergies
#removing parenthesis 
CAC$Conditions_Severe_Allergies<-gsub("[()]","",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("222222","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("22222","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("2222","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("222","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("22","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning long 2's 
CAC$Conditions_Severe_Allergies<-gsub("2","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
#cleaning previous entered data 
CAC$Conditions_Severe_Allergies<-gsub("678","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("7","*",
                                      as.character(CAC$Conditions_Severe_Allergies))
CAC$Conditions_Severe_Allergies<-gsub("4","*",
                                      as.character(CAC$Conditions_Severe_Allergies))

####################################cleaning for Seizures
#removing parenthesis 
CAC$Conditions_Seizures<-gsub("[()]","",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("222222","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("22222","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("2222","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("222","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("22","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning long 2's 
CAC$Conditions_Seizures<-gsub("2","*",
                              as.character(CAC$Conditions_Seizures))
#cleaning previous entered data 
CAC$Conditions_Seizures<-gsub("678","*",
                              as.character(CAC$Conditions_Seizures))
CAC$Conditions_Seizures<-gsub("7","*",
                              as.character(CAC$Conditions_Seizures))
CAC$Conditions_Seizures<-gsub("4","*",
                              as.character(CAC$Conditions_Seizures))
####################################cleaning for Obesity
#removing parenthesis 
CAC$Conditions_Obesity<-gsub("[()]","",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("222222","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("22222","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("2222","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("222","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("22","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning long 2's 
CAC$Conditions_Obesity<-gsub("2","*",
                             as.character(CAC$Conditions_Obesity))
#cleaning previous entered data 
CAC$Conditions_Obesity<-gsub("678","*",
                             as.character(CAC$Conditions_Obesity))
CAC$Conditions_Obesity<-gsub("7","*",
                             as.character(CAC$Conditions_Obesity))
CAC$Conditions_Obesity<-gsub("4","*",
                             as.character(CAC$Conditions_Obesity))
####################################cleaning for Cardio_Disease
#removing parenthesis 
CAC$Conditions_Cardio_Disease<-gsub("[()]","",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("222222","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("22222","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("2222","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("222","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("22","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning long 2's 
CAC$Conditions_Cardio_Disease<-gsub("2","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
#cleaning previous entered data 
CAC$Conditions_Cardio_Disease<-gsub("678","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
CAC$Conditions_Cardio_Disease<-gsub("7","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
CAC$Conditions_Cardio_Disease<-gsub("4","*",
                                    as.character(CAC$Conditions_Cardio_Disease))
CAC$Conditions_Cardio_Disease<-gsub("11","1",
                                    as.character(CAC$Conditions_Cardio_Disease))
####################################cleaning for Rheumatological
#removing parenthesis 
CAC$Conditions_Rheumatological<-gsub("[()]","",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("222222","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("22222","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("2222","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("222","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("22","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning long 2's 
CAC$Conditions_Rheumatological<-gsub("2","*",
                                     as.character(CAC$Conditions_Rheumatological))
#cleaning previous entered data 
CAC$Conditions_Rheumatological<-gsub("678","*",
                                     as.character(CAC$Conditions_Rheumatological))
CAC$Conditions_Rheumatological<-gsub("7","*",
                                     as.character(CAC$Conditions_Rheumatological))
CAC$Conditions_Rheumatological<-gsub("4","*",
                                     as.character(CAC$Conditions_Rheumatological))
CAC$Conditions_Rheumatological<-gsub("11","1",
                                     as.character(CAC$Conditions_Rheumatological))
####################################cleaning for Pulmonary
#removing parenthesis 
CAC$Conditions_Pulmonary<-gsub("[()]","",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("222222","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("22222","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("2222","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("222","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("22","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning long 2's 
CAC$Conditions_Pulmonary<-gsub("2","*",
                               as.character(CAC$Conditions_Pulmonary))
#cleaning previous entered data 
CAC$Conditions_Pulmonary<-gsub("678","*",
                               as.character(CAC$Conditions_Pulmonary))
CAC$Conditions_Pulmonary<-gsub("7","*",
                               as.character(CAC$Conditions_Pulmonary))
CAC$Conditions_Pulmonary<-gsub("4","*",
                               as.character(CAC$Conditions_Pulmonary))
CAC$Conditions_Pulmonary<-gsub("11","1",
                               as.character(CAC$Conditions_Pulmonary))
####################################cleaning for Diabetes
#removing parenthesis 
CAC$Conditions_Diabetes<-gsub("[()]","",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("222222","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("22222","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("2222","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("222","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("22","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning long 2's 
CAC$Conditions_Diabetes<-gsub("2","*",
                              as.character(CAC$Conditions_Diabetes))
#cleaning previous entered data 
CAC$Conditions_Diabetes<-gsub("678","*",
                              as.character(CAC$Conditions_Diabetes))
CAC$Conditions_Diabetes<-gsub("7","*",
                              as.character(CAC$Conditions_Diabetes))
CAC$Conditions_Diabetes<-gsub("4","*",
                              as.character(CAC$Conditions_Diabetes))
CAC$Conditions_Diabetes<-gsub("11","1",
                              as.character(CAC$Conditions_Diabetes))
####################################cleaning for Immuno
#removing parenthesis 
CAC$Conditions_Immuno<-gsub("[()]","",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("222222","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("22222","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("2222","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("222","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("22","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning long 2's 
CAC$Conditions_Immuno<-gsub("2","*",
                            as.character(CAC$Conditions_Immuno))
#cleaning previous entered data 
CAC$Conditions_Immuno<-gsub("678","*",
                            as.character(CAC$Conditions_Immuno))
CAC$Conditions_Immuno<-gsub("7","*",
                            as.character(CAC$Conditions_Immuno))
CAC$Conditions_Immuno<-gsub("4","*",
                            as.character(CAC$Conditions_Immuno))
####################################cleaning for Pregnancy
#removing parenthesis 
CAC$Conditions_Pregnancy<-gsub("[()]","",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("222222","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("22222","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("2222","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("222","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("22","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning long 2's 
CAC$Conditions_Pregnancy<-gsub("2","*",
                               as.character(CAC$Conditions_Pregnancy))
#cleaning previous entered data 
CAC$Conditions_Pregnancy<-gsub("678","*",
                               as.character(CAC$Conditions_Pregnancy))
CAC$Conditions_Pregnancy<-gsub("7","*",
                               as.character(CAC$Conditions_Pregnancy))
CAC$Conditions_Pregnancy<-gsub("4","*",
                               as.character(CAC$Conditions_Pregnancy))
####################################cleaning for Other
#removing parenthesis 
CAC$Conditions_Other<-gsub("[()]","",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("222222","*",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("22222","*",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("2222","*",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("222","*",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("22","*",
                           as.character(CAC$Conditions_Other))
#cleaning long 2's 
CAC$Conditions_Other<-gsub("2","*",
                           as.character(CAC$Conditions_Other))
#cleaning previous entered data 
CAC$Conditions_Other<-gsub("678","*",
                           as.character(CAC$Conditions_Other))
CAC$Conditions_Other<-gsub("7","*",
                           as.character(CAC$Conditions_Other))
CAC$Conditions_Other<-gsub("4","*",
                           as.character(CAC$Conditions_Other))
####################################cleaning for No_Conditions
#removing parenthesis 
CAC$Conditions_No_Conditions<-gsub("[()]","",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("222222","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("22222","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("2222","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("222","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("22","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning long 2's 
CAC$Conditions_No_Conditions<-gsub("2","*",
                                   as.character(CAC$Conditions_No_Conditions))
#cleaning previous entered data 
CAC$Conditions_No_Conditions<-gsub("678","*",
                                   as.character(CAC$Conditions_No_Conditions))
CAC$Conditions_No_Conditions<-gsub("7","*",
                                   as.character(CAC$Conditions_No_Conditions))
CAC$Conditions_No_Conditions<-gsub("4","*",
                                   as.character(CAC$Conditions_No_Conditions))










