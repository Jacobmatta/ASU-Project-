library("dplyr")
library("tidyr")
library(readxl)

#changing missing values of conditions to "*"
Rawdata <- Rawdata %>% mutate(Conditions_Cancer = ifelse(is.na(Conditions_Cancer), "*", Conditions_Cancer))
Rawdata <- Rawdata %>% mutate(Conditions_Severe_Allergies = ifelse(is.na(Conditions_Severe_Allergies), "*", Conditions_Severe_Allergies))
Rawdata <- Rawdata %>% mutate(Conditions_Seizures = ifelse(is.na(Conditions_Seizures), "*", Conditions_Seizures))
Rawdata <- Rawdata %>% mutate(Conditions_Obesity = ifelse(is.na(Conditions_Obesity), "*", Conditions_Obesity))
Rawdata <- Rawdata %>% mutate(Conditions_Cardio_Disease = ifelse(is.na(Conditions_Cardio_Disease), "*", Conditions_Cardio_Disease))
Rawdata <- Rawdata %>% mutate(Conditions_Rheumatological = ifelse(is.na(Conditions_Rheumatological), "*", Conditions_Rheumatological))
Rawdata <- Rawdata %>% mutate(Conditions_Pulmonary = ifelse(is.na(Conditions_Pulmonary), "*", Conditions_Pulmonary))
Rawdata <- Rawdata %>% mutate(Conditions_Diabetes = ifelse(is.na(Conditions_Diabetes), "*", Conditions_Diabetes))
Rawdata <- Rawdata %>% mutate(Conditions_Immuno = ifelse(is.na(Conditions_Immuno), "*", Conditions_Immuno))
Rawdata <- Rawdata %>% mutate(Conditions_Pregnancy = ifelse(is.na(Conditions_Pregnancy), "*", Conditions_Pregnancy))
Rawdata <- Rawdata %>% mutate(Conditions_Other = ifelse(is.na(Conditions_Other), "*", Conditions_Other))
Rawdata <- Rawdata %>% mutate(Conditions_No_Conditions = ifelse(is.na(Conditions_No_Conditions), "*", Conditions_No_Conditions))

####################################cleaning for Cancer
#removing parenthesis 
Rawdata$Conditions_Cancer<-gsub("[()]","",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("222222","*",
                                    as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("22222","*",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("2222","*",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("222","*",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("22","*",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning long 2's 
Rawdata$Conditions_Cancer<-gsub("2","*",
                            as.character(Rawdata$Conditions_Cancer))
#cleaning previous entered data 
Rawdata$Conditions_Cancer<-gsub("678","*",
                            as.character(Rawdata$Conditions_Cancer))
Rawdata$Conditions_Cancer<-gsub("7","*",
                            as.character(Rawdata$Conditions_Cancer))
Rawdata$Conditions_Cancer<-gsub("4","*",
                            as.character(Rawdata$Conditions_Cancer))
####################################cleaning for Severe_Allergies
#removing parenthesis 
Rawdata$Conditions_Severe_Allergies<-gsub("[()]","",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("222222","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("22222","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("2222","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("222","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("22","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning long 2's 
Rawdata$Conditions_Severe_Allergies<-gsub("2","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
#cleaning previous entered data 
Rawdata$Conditions_Severe_Allergies<-gsub("678","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
Rawdata$Conditions_Severe_Allergies<-gsub("7","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))
Rawdata$Conditions_Severe_Allergies<-gsub("4","*",
                                      as.character(Rawdata$Conditions_Severe_Allergies))

####################################cleaning for Seizures
#removing parenthesis 
Rawdata$Conditions_Seizures<-gsub("[()]","",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("222222","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("22222","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("2222","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("222","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("22","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning long 2's 
Rawdata$Conditions_Seizures<-gsub("2","*",
                              as.character(Rawdata$Conditions_Seizures))
#cleaning previous entered data 
Rawdata$Conditions_Seizures<-gsub("678","*",
                              as.character(Rawdata$Conditions_Seizures))
Rawdata$Conditions_Seizures<-gsub("7","*",
                              as.character(Rawdata$Conditions_Seizures))
Rawdata$Conditions_Seizures<-gsub("4","*",
                              as.character(Rawdata$Conditions_Seizures))
####################################cleaning for Obesity
#removing parenthesis 
Rawdata$Conditions_Obesity<-gsub("[()]","",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("222222","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("22222","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("2222","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("222","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("22","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning long 2's 
Rawdata$Conditions_Obesity<-gsub("2","*",
                             as.character(Rawdata$Conditions_Obesity))
#cleaning previous entered data 
Rawdata$Conditions_Obesity<-gsub("678","*",
                             as.character(Rawdata$Conditions_Obesity))
Rawdata$Conditions_Obesity<-gsub("7","*",
                             as.character(Rawdata$Conditions_Obesity))
Rawdata$Conditions_Obesity<-gsub("4","*",
                             as.character(Rawdata$Conditions_Obesity))
####################################cleaning for Cardio_Disease
#removing parenthesis 
Rawdata$Conditions_Cardio_Disease<-gsub("[()]","",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("222222","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("22222","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("2222","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("222","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("22","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning long 2's 
Rawdata$Conditions_Cardio_Disease<-gsub("2","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
#cleaning previous entered data 
Rawdata$Conditions_Cardio_Disease<-gsub("678","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
Rawdata$Conditions_Cardio_Disease<-gsub("7","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
Rawdata$Conditions_Cardio_Disease<-gsub("4","*",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
Rawdata$Conditions_Cardio_Disease<-gsub("11","1",
                                    as.character(Rawdata$Conditions_Cardio_Disease))
####################################cleaning for Rheumatological
#removing parenthesis 
Rawdata$Conditions_Rheumatological<-gsub("[()]","",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("222222","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("22222","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("2222","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("222","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("22","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning long 2's 
Rawdata$Conditions_Rheumatological<-gsub("2","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
#cleaning previous entered data 
Rawdata$Conditions_Rheumatological<-gsub("678","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
Rawdata$Conditions_Rheumatological<-gsub("7","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
Rawdata$Conditions_Rheumatological<-gsub("4","*",
                                     as.character(Rawdata$Conditions_Rheumatological))
Rawdata$Conditions_Rheumatological<-gsub("11","1",
                                     as.character(Rawdata$Conditions_Rheumatological))
####################################cleaning for Pulmonary
#removing parenthesis 
Rawdata$Conditions_Pulmonary<-gsub("[()]","",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("222222","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("22222","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("2222","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("222","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("22","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning long 2's 
Rawdata$Conditions_Pulmonary<-gsub("2","*",
                               as.character(Rawdata$Conditions_Pulmonary))
#cleaning previous entered data 
Rawdata$Conditions_Pulmonary<-gsub("678","*",
                               as.character(Rawdata$Conditions_Pulmonary))
Rawdata$Conditions_Pulmonary<-gsub("7","*",
                               as.character(Rawdata$Conditions_Pulmonary))
Rawdata$Conditions_Pulmonary<-gsub("4","*",
                               as.character(Rawdata$Conditions_Pulmonary))
Rawdata$Conditions_Pulmonary<-gsub("11","1",
                               as.character(Rawdata$Conditions_Pulmonary))
####################################cleaning for Diabetes
#removing parenthesis 
Rawdata$Conditions_Diabetes<-gsub("[()]","",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("222222","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("22222","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("2222","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("222","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("22","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning long 2's 
Rawdata$Conditions_Diabetes<-gsub("2","*",
                              as.character(Rawdata$Conditions_Diabetes))
#cleaning previous entered data 
Rawdata$Conditions_Diabetes<-gsub("678","*",
                              as.character(Rawdata$Conditions_Diabetes))
Rawdata$Conditions_Diabetes<-gsub("7","*",
                              as.character(Rawdata$Conditions_Diabetes))
Rawdata$Conditions_Diabetes<-gsub("4","*",
                              as.character(Rawdata$Conditions_Diabetes))
Rawdata$Conditions_Diabetes<-gsub("11","1",
                              as.character(Rawdata$Conditions_Diabetes))
####################################cleaning for Immuno
#removing parenthesis 
Rawdata$Conditions_Immuno<-gsub("[()]","",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("222222","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("22222","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("2222","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("222","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("22","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning long 2's 
Rawdata$Conditions_Immuno<-gsub("2","*",
                            as.character(Rawdata$Conditions_Immuno))
#cleaning previous entered data 
Rawdata$Conditions_Immuno<-gsub("678","*",
                            as.character(Rawdata$Conditions_Immuno))
Rawdata$Conditions_Immuno<-gsub("7","*",
                            as.character(Rawdata$Conditions_Immuno))
Rawdata$Conditions_Immuno<-gsub("4","*",
                            as.character(Rawdata$Conditions_Immuno))
####################################cleaning for Pregnancy
#removing parenthesis 
Rawdata$Conditions_Pregnancy<-gsub("[()]","",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("222222","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("22222","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("2222","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("222","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("22","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning long 2's 
Rawdata$Conditions_Pregnancy<-gsub("2","*",
                               as.character(Rawdata$Conditions_Pregnancy))
#cleaning previous entered data 
Rawdata$Conditions_Pregnancy<-gsub("678","*",
                               as.character(Rawdata$Conditions_Pregnancy))
Rawdata$Conditions_Pregnancy<-gsub("7","*",
                               as.character(Rawdata$Conditions_Pregnancy))
Rawdata$Conditions_Pregnancy<-gsub("4","*",
                               as.character(Rawdata$Conditions_Pregnancy))
####################################cleaning for Other
#removing parenthesis 
Rawdata$Conditions_Other<-gsub("[()]","",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("222222","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("22222","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("2222","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("222","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("22","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning long 2's 
Rawdata$Conditions_Other<-gsub("2","*",
                           as.character(Rawdata$Conditions_Other))
#cleaning previous entered data 
Rawdata$Conditions_Other<-gsub("678","*",
                           as.character(Rawdata$Conditions_Other))
Rawdata$Conditions_Other<-gsub("7","*",
                           as.character(Rawdata$Conditions_Other))
Rawdata$Conditions_Other<-gsub("4","*",
                           as.character(Rawdata$Conditions_Other))
####################################cleaning for No_Conditions
#removing parenthesis 
Rawdata$Conditions_No_Conditions<-gsub("[()]","",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("222222","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("22222","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("2222","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("222","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("22","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning long 2's 
Rawdata$Conditions_No_Conditions<-gsub("2","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
#cleaning previous entered data 
Rawdata$Conditions_No_Conditions<-gsub("678","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
Rawdata$Conditions_No_Conditions<-gsub("7","*",
                                   as.character(Rawdata$Conditions_No_Conditions))
Rawdata$Conditions_No_Conditions<-gsub("4","*",
                                   as.character(Rawdata$Conditions_No_Conditions))










