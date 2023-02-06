#should be run after upload data using the "Primary data cleaning w:out vector file"
#removing last row for now bc not needed 
#need package for pipe operator 
library(dplyr)

Rawdata <- Rawdata[-c(174),]

#duplicating conditions column for cancer responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Cancer = Conditions)

#duplicating conditions column for Severe Allergies responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Severe_Allergies = Conditions)


#duplicating conditions column for Seizures responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Seizures = Conditions)


#duplicating conditions column for Obesity responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Obesity = Conditions)


#duplicating conditions column for Cardio Disease responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Cardio_Disease = Conditions)


#duplicating conditions column for Rheumatological responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Rheumatological = Conditions)


#duplicating conditions column for Pulmonary responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Pulmonary = Conditions)


#duplicating conditions column for Diabetes responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Diabetes = Conditions)


#duplicating conditions column for Immuno responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Immuno = Conditions)


#duplicating conditions column for Pregnancy responses 
Rawdata <- Rawdata %>%         
  mutate(Conditions_Pregnancy = Conditions)


#duplicating conditions column for Other responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_Other = Conditions)


#duplicating conditions column for No Conditions responses
Rawdata <- Rawdata %>%         
  mutate(Conditions_No_Conditions = Conditions)
###################################################################CANCER
#removing Severe allergies values
Rawdata$Conditions_Cancer<-gsub("Severe allergies","2",
                            as.character(Rawdata$Conditions_Cancer))
#removing Seizures values
Rawdata$Conditions_Cancer<-gsub("Seizures","2",
                            as.character(Rawdata$Conditions_Cancer))
#removing Obsity values
Rawdata$Conditions_Cancer<-gsub("Obesity","2",as.character(Rawdata$Conditions_Cancer))

#removing Cardiovascular disease values
Rawdata$Conditions_Cancer<-gsub("Cardiovascular disease","2",
                            as.character(Rawdata$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Cancer<-gsub("Rheumatological condition","2",
                            as.character(Rawdata$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Cancer<-gsub("(like arthritis)","2",
                             as.character(Rawdata$Conditions_Cancer))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Cancer<-gsub("Pulmonary disease","2",
                            as.character(Rawdata$Conditions_Cancer))
Rawdata$Conditions_Cancer<-gsub("(like Asthma)","2",
                             as.character(Rawdata$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Cancer<-gsub("Diabetes","2",
                            as.character(Rawdata$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Cancer<-gsub("(type 1 or 2)","2",
                             as.character(Rawdata$Conditions_Cancer))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Cancer<-gsub("Immunocompromised state due to therapy or disease","2",
                            as.character(Rawdata$Conditions_Cancer))

#removing Pregnancy
Rawdata$Conditions_Cancer<-gsub("Pregnancy","2",
                            as.character(Rawdata$Conditions_Cancer))
#removing Other
Rawdata$Conditions_Cancer<-gsub("Other","2",
                            as.character(Rawdata$Conditions_Cancer))

#removing No Condition values
Rawdata$Conditions_Cancer<-gsub("No conditions","2",as.character(Rawdata$Conditions_Cancer))

#Rememving commas 
Rawdata$Conditions_Cancer<-
  gsub(",","",as.character(Rawdata$Conditions_Cancer))

#removing spaces
Rawdata$Conditions_Cancer<-
  gsub(" ","",as.character(Rawdata$Conditions_Cancer))

#changing cancer to 1
Rawdata$Conditions_Cancer<-gsub("Cancer","1",as.character(Rawdata$Conditions_Cancer))

###################################################################Sever_Allergies

#removing Cancer values
Rawdata$Conditions_Severe_Allergies<-gsub("Cancer","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
#removing Seizures values
Rawdata$Conditions_Severe_Allergies<-gsub("Seizures","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
#removing Obsity values
Rawdata$Conditions_Severe_Allergies<-gsub("Obesity","2",as.character(Rawdata$Conditions_Severe_Allergies))

#removing Cardiovascular disease values
Rawdata$Conditions_Severe_Allergies<-gsub("Cardiovascular disease","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Severe_Allergies<-gsub("Rheumatological condition","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Severe_Allergies<-gsub("(like arthritis)","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Severe_Allergies<-gsub("Pulmonary disease","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
Rawdata$Conditions_Severe_Allergies<-gsub("(like Asthma)","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Severe_Allergies<-gsub("Diabetes","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Severe_Allergies<-gsub("(type 1 or 2)","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Severe_Allergies<-gsub("Immunocompromised state due to therapy or disease","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing Pregnancy
Rawdata$Conditions_Severe_Allergies<-gsub("Pregnancy","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))
#removing Other
Rawdata$Conditions_Severe_Allergies<-gsub("Other","2",
                                       as.character(Rawdata$Conditions_Severe_Allergies))

#removing No Condition values
Rawdata$Conditions_Severe_Allergies <- gsub("No conditions","2",as.character(Rawdata$Conditions_Severe_Allergies))

#changing Severe allergies to 1
Rawdata$Conditions_Severe_Allergies<-gsub("Severe allergies","1",as.character(Rawdata$Conditions_Severe_Allergies))

#Rememving commas 
Rawdata$Conditions_Severe_Allergies<-
  gsub(",","",as.character(Rawdata$Conditions_Severe_Allergies))

#removing spaces
Rawdata$Conditions_Severe_Allergies<-
  gsub(" ","",as.character(Rawdata$Conditions_Severe_Allergies))

###################################################################Seizures
#removing Cancer values
Rawdata$Conditions_Seizures<-gsub("Cancer","2",
                               as.character(Rawdata$Conditions_Seizures))
#removing Severe allergies values
Rawdata$Conditions_Seizures<-gsub("Severe allergies","2",
                               as.character(Rawdata$Conditions_Seizures))
#removing Obsity values
Rawdata$Conditions_Seizures<-gsub("Obesity","2",as.character(Rawdata$Conditions_Seizures))

#removing Cardiovascular disease values
Rawdata$Conditions_Seizures<-gsub("Cardiovascular disease","2",
                               as.character(Rawdata$Conditions_Seizures))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Seizures<-gsub("Rheumatological condition","2",
                               as.character(Rawdata$Conditions_Seizures))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Seizures<-gsub("(like arthritis)","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Seizures<-gsub("Pulmonary disease","2",
                               as.character(Rawdata$Conditions_Seizures))
Rawdata$Conditions_Seizures<-gsub("(like Asthma)","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Seizures<-gsub("Diabetes","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Seizures<-gsub("(type 1 or 2)","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Seizures<-gsub("Immunocompromised state","2",
                               as.character(Rawdata$Conditions_Seizures))
Rawdata$Conditions_Seizures<-gsub("due to therapy or disease","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing Pregnancy
Rawdata$Conditions_Seizures<-gsub("Pregnancy","2",
                               as.character(Rawdata$Conditions_Seizures))
#removing Other
Rawdata$Conditions_Seizures<-gsub("Other","2",
                               as.character(Rawdata$Conditions_Seizures))

#removing No Condition values
Rawdata$Conditions_Seizures <- gsub("No conditions","2",as.character(Rawdata$Conditions_Seizures))

#changing Seizures to 1
Rawdata$Conditions_Seizures<-gsub("Seizures","1",as.character(Rawdata$Conditions_Seizures))

#Rememving commas 
Rawdata$Conditions_Seizures<-
  gsub(",","",as.character(Rawdata$Conditions_Seizures))

#removing spaces
Rawdata$Conditions_Seizures<-
  gsub(" ","",as.character(Rawdata$Conditions_Seizures))
###################################################################Obesity
#removing Cancer values
Rawdata$Conditions_Obesity<-gsub("Cancer","2",
                              as.character(Rawdata$Conditions_Obesity))
#removing Severe allergies values
Rawdata$Conditions_Obesity<-gsub("Severe allergies","2",
                              as.character(Rawdata$Conditions_Obesity))
#removing Seizures values
Rawdata$Conditions_Obesity<-gsub("Seizures","2",as.character(Rawdata$Conditions_Obesity))

#removing Cardiovascular disease values
Rawdata$Conditions_Obesity<-gsub("Cardiovascular disease","2",
                              as.character(Rawdata$Conditions_Obesity))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Obesity<-gsub("Rheumatological condition","2",
                              as.character(Rawdata$Conditions_Obesity))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Obesity<-gsub("(like arthritis)","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Obesity<-gsub("Pulmonary disease","2",
                              as.character(Rawdata$Conditions_Obesity))
Rawdata$Conditions_Obesity<-gsub("(like Asthma)","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Obesity<-gsub("Diabetes","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Obesity<-gsub("(type 1 or 2)","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Obesity<-gsub("Immunocompromised state","2",
                              as.character(Rawdata$Conditions_Obesity))
Rawdata$Conditions_Obesity<-gsub("due to therapy or disease","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing Pregnancy
Rawdata$Conditions_Obesity<-gsub("Pregnancy","2",
                              as.character(Rawdata$Conditions_Obesity))
#removing Other
Rawdata$Conditions_Obesity<-gsub("Other","2",
                              as.character(Rawdata$Conditions_Obesity))

#removing No Condition values
Rawdata$Conditions_Obesity <- gsub("No conditions","2",as.character(Rawdata$Conditions_Obesity))

#changing Obesity to 1
Rawdata$Conditions_Obesity<-gsub("Obesity","1",as.character(Rawdata$Conditions_Obesity))

#Rememving commas 
Rawdata$Conditions_Obesity<-
  gsub(",","",as.character(Rawdata$Conditions_Obesity))

#removing spaces
Rawdata$Conditions_Obesity<-
  gsub(" ","",as.character(Rawdata$Conditions_Obesity))

###################################################################Cardio_Disease

#removing Cancer values
Rawdata$Conditions_Cardio_Disease<-gsub("Cancer","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
#removing Severe allergies values
Rawdata$Conditions_Cardio_Disease<-gsub("Severe allergies","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
#removing Seizures values
Rawdata$Conditions_Cardio_Disease<-gsub("Seizures","2",as.character(Rawdata$Conditions_Cardio_Disease))

#removing Obesity values
Rawdata$Conditions_Cardio_Disease<-gsub("Obesity","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Cardio_Disease<-gsub("Rheumatological condition","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Cardio_Disease<-gsub("(like arthritis)","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Cardio_Disease<-gsub("Pulmonary disease","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
Rawdata$Conditions_Cardio_Disease<-gsub("(like Asthma)","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Cardio_Disease<-gsub("Diabetes","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Cardio_Disease<-gsub("(type 1 or 2)","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Cardio_Disease<-gsub("Immunocompromised state","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
Rawdata$Conditions_Cardio_Disease<-gsub("due to therapy or disease","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing Pregnancy
Rawdata$Conditions_Cardio_Disease<-gsub("Pregnancy","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))
#removing Other
Rawdata$Conditions_Cardio_Disease<-gsub("Other","2",
                                     as.character(Rawdata$Conditions_Cardio_Disease))

#removing No Condition values
Rawdata$Conditions_Cardio_Disease <- gsub("No conditions","2",as.character(Rawdata$Conditions_Cardio_Disease))

#changing Cardiovascular disease to 1
Rawdata$Conditions_Cardio_Disease<-gsub("Cardiovascular disease","1",as.character(Rawdata$Conditions_Cardio_Disease))

#Rememving commas 
Rawdata$Conditions_Cardio_Disease<-
  gsub(",","",as.character(Rawdata$Conditions_Cardio_Disease))

#removing spaces
Rawdata$Conditions_Cardio_Disease<-
  gsub(" ","",as.character(Rawdata$Conditions_Cardio_Disease))
###################################################################Conditions_Rheumatological
#removing Cancer values
Rawdata$Conditions_Rheumatological<-gsub("Cancer","2",
                                      as.character(Rawdata$Conditions_Rheumatological))
#removing Severe allergies values
Rawdata$Conditions_Rheumatological<-gsub("Severe allergies","2",
                                      as.character(Rawdata$Conditions_Rheumatological))
#removing Seizures values
Rawdata$Conditions_Rheumatological<-gsub("Seizures","2",as.character(Rawdata$Conditions_Rheumatological))

#removing Obesity values
Rawdata$Conditions_Rheumatological<-gsub("Obesity","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Rheumatological<-gsub("Pulmonary disease","2",
                                      as.character(Rawdata$Conditions_Rheumatological))
Rawdata$Conditions_Rheumatological<-gsub("(like Asthma)","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Rheumatological<-gsub("Diabetes","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Rheumatological<-gsub("(type 1 or 2)","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Rheumatological<-gsub("Immunocompromised state","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

Rawdata$Conditions_Rheumatological<-gsub("due to therapy or disease","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing Pregnancy
Rawdata$Conditions_Rheumatological<-gsub("Pregnancy","2",
                                      as.character(Rawdata$Conditions_Rheumatological))
#removing Other
Rawdata$Conditions_Rheumatological<-gsub("Other","2",
                                      as.character(Rawdata$Conditions_Rheumatological))

#removing No Condition values
Rawdata$Conditions_Rheumatological <- gsub("No conditions","2",as.character(Rawdata$Conditions_Rheumatological))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Rheumatological<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Rheumatological))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Rheumatological<-gsub("Rheumatological condition","1",as.character(Rawdata$Conditions_Rheumatological))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Rheumatological<-gsub("(like arthritis)","1",
                                      as.character(Rawdata$Conditions_Rheumatological))
#Rememving commas 
Rawdata$Conditions_Rheumatological<-
  gsub(",","",as.character(Rawdata$Conditions_Rheumatological))

#removing spaces
Rawdata$Conditions_Rheumatological<-
  gsub(" ","",as.character(Rawdata$Conditions_Rheumatological))
###################################################################Conditions_Pulmonary
#removing Cancer values
Rawdata$Conditions_Pulmonary<-gsub("Cancer","2",
                                as.character(Rawdata$Conditions_Pulmonary))
#removing Severe allergies values
Rawdata$Conditions_Pulmonary<-gsub("Severe allergies","2",
                                as.character(Rawdata$Conditions_Pulmonary))
#removing Seizures values
Rawdata$Conditions_Pulmonary<-gsub("Seizures","2",as.character(Rawdata$Conditions_Pulmonary))

#removing Obesity values
Rawdata$Conditions_Pulmonary<-gsub("Obesity","2",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Pulmonary<-gsub("Pulmonary disease","1",
                                as.character(Rawdata$Conditions_Pulmonary))
Rawdata$Conditions_Pulmonary<-gsub("(like Asthma)","1",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Pulmonary<-gsub("Diabetes","2",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Pulmonary<-gsub("(type 1 or 2)","2",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Pulmonary<-gsub("Immunocompromised state","2",
                                as.character(Rawdata$Conditions_Pulmonary))

Rawdata$Conditions_Pulmonary<-gsub("due to therapy or disease","2",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing Pregnancy
Rawdata$Conditions_Pulmonary<-gsub("Pregnancy","2",
                                as.character(Rawdata$Conditions_Pulmonary))
#removing Other
Rawdata$Conditions_Pulmonary<-gsub("Other","2",
                                as.character(Rawdata$Conditions_Pulmonary))

#removing No Condition values
Rawdata$Conditions_Pulmonary <- gsub("No conditions","2",as.character(Rawdata$Conditions_Pulmonary))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Pulmonary<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Pulmonary))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Pulmonary<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_Pulmonary))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Pulmonary<-gsub("(like arthritis)","2",
                                as.character(Rawdata$Conditions_Pulmonary))
#Rememving commas 
Rawdata$Conditions_Pulmonary<-
  gsub(",","",as.character(Rawdata$Conditions_Pulmonary))

#removing spaces
Rawdata$Conditions_Pulmonary<-
  gsub(" ","",as.character(Rawdata$Conditions_Pulmonary))

###################################################################Conditions_Diabetes
#removing Cancer values
Rawdata$Conditions_Diabetes<-gsub("Cancer","2",
                               as.character(Rawdata$Conditions_Diabetes))
#removing Severe allergies values
Rawdata$Conditions_Diabetes<-gsub("Severe allergies","2",
                               as.character(Rawdata$Conditions_Diabetes))
#removing Seizures values
Rawdata$Conditions_Diabetes<-gsub("Seizures","2",as.character(Rawdata$Conditions_Diabetes))

#removing Obesity values
Rawdata$Conditions_Diabetes<-gsub("Obesity","2",
                               as.character(Rawdata$Conditions_Diabetes))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Diabetes<-gsub("Pulmonary disease","2",
                               as.character(Rawdata$Conditions_Diabetes))
Rawdata$Conditions_Diabetes<-gsub("(like Asthma)","2",
                               as.character(Rawdata$Conditions_Diabetes))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Diabetes<-gsub("Diabetes","1",
                               as.character(Rawdata$Conditions_Diabetes))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Diabetes<-gsub("(type 1 or 2)","1",
                               as.character(Rawdata$Conditions_Diabetes))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Diabetes<-gsub("Immunocompromised state","2",
                               as.character(Rawdata$Conditions_Diabetes))

Rawdata$Conditions_Diabetes<-gsub("due to therapy or disease","2",
                               as.character(Rawdata$Conditions_Diabetes))

#removing Pregnancy
Rawdata$Conditions_Diabetes<-gsub("Pregnancy","2",
                               as.character(Rawdata$Conditions_Diabetes))
#removing Other
Rawdata$Conditions_Diabetes<-gsub("Other","2",
                               as.character(Rawdata$Conditions_Diabetes))

#removing No Condition values
Rawdata$Conditions_Diabetes <- gsub("No conditions","2",as.character(Rawdata$Conditions_Diabetes))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Diabetes<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Diabetes))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Diabetes<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_Diabetes))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Diabetes<-gsub("(like arthritis)","2",
                               as.character(Rawdata$Conditions_Diabetes))
#Rememving commas 
Rawdata$Conditions_Diabetes<-
  gsub(",","",as.character(Rawdata$Conditions_Diabetes))

#removing spaces
Rawdata$Conditions_Diabetes<-
  gsub(" ","",as.character(Rawdata$Conditions_Diabetes))
###################################################################Conditions_Immuno
#removing Cancer values
Rawdata$Conditions_Immuno<-gsub("Cancer","2",
                             as.character(Rawdata$Conditions_Immuno))
#removing Severe allergies values
Rawdata$Conditions_Immuno<-gsub("Severe allergies","2",
                             as.character(Rawdata$Conditions_Immuno))
#removing Seizures values
Rawdata$Conditions_Immuno<-gsub("Seizures","2",as.character(Rawdata$Conditions_Immuno))

#removing Obesity values
Rawdata$Conditions_Immuno<-gsub("Obesity","2",
                             as.character(Rawdata$Conditions_Immuno))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Immuno<-gsub("Pulmonary disease","2",
                             as.character(Rawdata$Conditions_Immuno))
Rawdata$Conditions_Immuno<-gsub("(like Asthma)","2",
                             as.character(Rawdata$Conditions_Immuno))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Immuno<-gsub("Diabetes","2",
                             as.character(Rawdata$Conditions_Immuno))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Immuno<-gsub("(type 1 or 2)","2",
                             as.character(Rawdata$Conditions_Immuno))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Immuno<-gsub("Immunocompromised state","1",
                             as.character(Rawdata$Conditions_Immuno))

Rawdata$Conditions_Immuno<-gsub("due to therapy or disease","1",
                             as.character(Rawdata$Conditions_Immuno))

#removing Pregnancy
Rawdata$Conditions_Immuno<-gsub("Pregnancy","2",
                             as.character(Rawdata$Conditions_Immuno))
#removing Other
Rawdata$Conditions_Immuno<-gsub("Other","2",
                             as.character(Rawdata$Conditions_Immuno))

#removing No Condition values
Rawdata$Conditions_Immuno <- gsub("No conditions","2",as.character(Rawdata$Conditions_Immuno))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Immuno<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Immuno))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Immuno<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_Immuno))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Immuno<-gsub("(like arthritis)","2",
                             as.character(Rawdata$Conditions_Immuno))
#Rememving commas 
Rawdata$Conditions_Immuno<-
  gsub(",","",as.character(Rawdata$Conditions_Immuno))

#removing spaces
Rawdata$Conditions_Immuno<-
  gsub(" ","",as.character(Rawdata$Conditions_Immuno))

###################################################################Conditions_Pregnancy
#removing Cancer values
Rawdata$Conditions_Pregnancy<-gsub("Cancer","2",
                                as.character(Rawdata$Conditions_Pregnancy))
#removing Severe allergies values
Rawdata$Conditions_Pregnancy<-gsub("Severe allergies","2",
                                as.character(Rawdata$Conditions_Pregnancy))
#removing Seizures values
Rawdata$Conditions_Pregnancy<-gsub("Seizures","2",as.character(Rawdata$Conditions_Pregnancy))

#removing Obesity values
Rawdata$Conditions_Pregnancy<-gsub("Obesity","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Pregnancy<-gsub("Pulmonary disease","2",
                                as.character(Rawdata$Conditions_Pregnancy))
Rawdata$Conditions_Pregnancy<-gsub("(like Asthma)","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Pregnancy<-gsub("Diabetes","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Pregnancy<-gsub("(type 1 or 2)","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Pregnancy<-gsub("Immunocompromised state","2",
                                as.character(Rawdata$Conditions_Pregnancy))

Rawdata$Conditions_Pregnancy<-gsub("due to therapy or disease","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing Pregnancy
Rawdata$Conditions_Pregnancy<-gsub("Pregnancy","1",
                                as.character(Rawdata$Conditions_Pregnancy))
#removing Other
Rawdata$Conditions_Pregnancy<-gsub("Other","2",
                                as.character(Rawdata$Conditions_Pregnancy))

#removing No Condition values
Rawdata$Conditions_Pregnancy <- gsub("No conditions","2",as.character(Rawdata$Conditions_Pregnancy))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Pregnancy<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Pregnancy))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Pregnancy<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_Pregnancy))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Pregnancy<-gsub("(like arthritis)","2",
                                as.character(Rawdata$Conditions_Pregnancy))
#Rememving commas 
Rawdata$Conditions_Pregnancy<-
  gsub(",","",as.character(Rawdata$Conditions_Pregnancy))

#removing spaces
Rawdata$Conditions_Pregnancy<-
  gsub(" ","",as.character(Rawdata$Conditions_Pregnancy))
###################################################################Conditions_Other
#removing Cancer values
Rawdata$Conditions_Other<-gsub("Cancer","2",
                            as.character(Rawdata$Conditions_Other))
#removing Severe allergies values
Rawdata$Conditions_Other<-gsub("Severe allergies","2",
                            as.character(Rawdata$Conditions_Other))
#removing Seizures values
Rawdata$Conditions_Other<-gsub("Seizures","2",as.character(Rawdata$Conditions_Other))

#removing Obesity values
Rawdata$Conditions_Other<-gsub("Obesity","2",
                            as.character(Rawdata$Conditions_Other))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_Other<-gsub("Pulmonary disease","2",
                            as.character(Rawdata$Conditions_Other))
Rawdata$Conditions_Other<-gsub("(like Asthma)","2",
                            as.character(Rawdata$Conditions_Other))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Other<-gsub("Diabetes","2",
                            as.character(Rawdata$Conditions_Other))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_Other<-gsub("(type 1 or 2)","2",
                            as.character(Rawdata$Conditions_Other))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_Other<-gsub("Immunocompromised state","2",
                            as.character(Rawdata$Conditions_Other))

Rawdata$Conditions_Other<-gsub("due to therapy or disease","2",
                            as.character(Rawdata$Conditions_Other))

#removing Pregnancy
Rawdata$Conditions_Other<-gsub("Pregnancy","2",
                            as.character(Rawdata$Conditions_Other))
#removing Other
Rawdata$Conditions_Other<-gsub("Other","1",
                            as.character(Rawdata$Conditions_Other))

#removing No Condition values
Rawdata$Conditions_Other <- gsub("No conditions","2",as.character(Rawdata$Conditions_Other))

#changing Cardiovascular disease to 2
Rawdata$Conditions_Other<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_Other))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Other<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_Other))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_Other<-gsub("(like arthritis)","2",
                            as.character(Rawdata$Conditions_Other))
#Rememving commas 
Rawdata$Conditions_Other<-
  gsub(",","",as.character(Rawdata$Conditions_Other))

#removing spaces
Rawdata$Conditions_Other<-
  gsub(" ","",as.character(Rawdata$Conditions_Other))

###################################################################Conditions_No Conditions
#removing Cancer values
Rawdata$Conditions_No_Conditions<-gsub("Cancer","2",
                                    as.character(Rawdata$Conditions_No_Conditions))
#removing Severe allergies values
Rawdata$Conditions_No_Conditions<-gsub("Severe allergies","2",
                                    as.character(Rawdata$Conditions_No_Conditions))
#removing Seizures values
Rawdata$Conditions_No_Conditions<-gsub("Seizures","2",as.character(Rawdata$Conditions_No_Conditions))

#removing Obesity values
Rawdata$Conditions_No_Conditions<-gsub("Obesity","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing Pulmonary disease (like Asthma) values
Rawdata$Conditions_No_Conditions<-gsub("Pulmonary disease","2",
                                    as.character(Rawdata$Conditions_No_Conditions))
Rawdata$Conditions_No_Conditions<-gsub("(like Asthma)","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_No_Conditions<-gsub("Diabetes","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing Diabetes (type 1 or 2) values
Rawdata$Conditions_No_Conditions<-gsub("(type 1 or 2)","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing Immunocompromised state due to therapy or disease values
Rawdata$Conditions_No_Conditions<-gsub("Immunocompromised state","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

Rawdata$Conditions_No_Conditions<-gsub("due to therapy or disease","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing Pregnancy
Rawdata$Conditions_No_Conditions<-gsub("Pregnancy","2",
                                    as.character(Rawdata$Conditions_No_Conditions))
#removing Other
Rawdata$Conditions_No_Conditions<-gsub("Other","2",
                                    as.character(Rawdata$Conditions_No_Conditions))

#removing No Condition values
Rawdata$Conditions_No_Conditions <- gsub("No conditions","1",as.character(Rawdata$Conditions_No_Conditions))

#changing Cardiovascular disease to 2
Rawdata$Conditions_No_Conditions<-gsub("Cardiovascular disease","2",as.character(Rawdata$Conditions_No_Conditions))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_No_Conditions<-gsub("Rheumatological condition","2",as.character(Rawdata$Conditions_No_Conditions))

#removing Rheumatological condition (like arthritis) values
Rawdata$Conditions_No_Conditions<-gsub("(like arthritis)","2",
                                    as.character(Rawdata$Conditions_No_Conditions))
#Rememving commas 
Rawdata$Conditions_No_Conditions<-
  gsub(",","",as.character(Rawdata$Conditions_No_Conditions))

#removing spaces
Rawdata$Conditions_No_Conditions<-
  gsub(" ","",as.character(Rawdata$Conditions_No_Conditions))
