#uploading survey data from one drive after downloading
library(readxl)
library("dplyr")
ASU_Combined_Survey_Data <- 
  read_excel("~/Desktop/ASU_Combined_Survey_Data.xlsx")

#duplicating the data
ACSD <- ASU_Combined_Survey_Data

#removing last row for now bc not needed 
ACSD <- ACSD[-c(174),]

#duplicating conditions column for cancer responses
ACSD <- ACSD %>%         
  mutate(Conditions_Cancer = Conditions)

#duplicating conditions column for Severe Allergies responses
ACSD <- ACSD %>%         
  mutate(Conditions_Severe_Allergies = Conditions)


#duplicating conditions column for Seizures responses
ACSD <- ACSD %>%         
  mutate(Conditions_Seizures = Conditions)


#duplicating conditions column for Obesity responses
ACSD <- ACSD %>%         
  mutate(Conditions_Obesity = Conditions)


#duplicating conditions column for Cardio Disease responses
ACSD <- ACSD %>%         
  mutate(Conditions_Cardio_Disease = Conditions)


#duplicating conditions column for Rheumatological responses
ACSD <- ACSD %>%         
  mutate(Conditions_Rheumatological = Conditions)


#duplicating conditions column for Pulmonary responses
ACSD <- ACSD %>%         
  mutate(Conditions_Pulmonary = Conditions)


#duplicating conditions column for Diabetes responses
ACSD <- ACSD %>%         
  mutate(Conditions_Diabetes = Conditions)


#duplicating conditions column for Immuno responses
ACSD <- ACSD %>%         
  mutate(Conditions_Immuno = Conditions)


#duplicating conditions column for Pregnancy responses 
ACSD <- ACSD %>%         
  mutate(Conditions_Pregnancy = Conditions)


#duplicating conditions column for Other responses
ACSD <- ACSD %>%         
  mutate(Conditions_Other = Conditions)


#duplicating conditions column for No Conditions responses
ACSD <- ACSD %>%         
  mutate(Conditions_No_Conditions = Conditions)
###################################################################CANCER
#removing Severe allergies values
ACSD$Conditions_Cancer<-gsub("Severe allergies","2",
                            as.character(ACSD$Conditions_Cancer))
#removing Seizures values
ACSD$Conditions_Cancer<-gsub("Seizures","2",
                            as.character(ACSD$Conditions_Cancer))
#removing Obsity values
ACSD$Conditions_Cancer<-gsub("Obesity","2",as.character(ACSD$Conditions_Cancer))

#removing Cardiovascular disease values
ACSD$Conditions_Cancer<-gsub("Cardiovascular disease","2",
                            as.character(ACSD$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cancer<-gsub("Rheumatological condition","2",
                            as.character(ACSD$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cancer<-gsub("(like arthritis)","2",
                             as.character(ACSD$Conditions_Cancer))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Cancer<-gsub("Pulmonary disease","2",
                            as.character(ACSD$Conditions_Cancer))
ACSD$Conditions_Cancer<-gsub("(like Asthma)","2",
                             as.character(ACSD$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cancer<-gsub("Diabetes","2",
                            as.character(ACSD$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cancer<-gsub("(type 1 or 2)","2",
                             as.character(ACSD$Conditions_Cancer))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Cancer<-gsub("Immunocompromised state due to therapy or disease","2",
                            as.character(ACSD$Conditions_Cancer))

#removing Pregnancy
ACSD$Conditions_Cancer<-gsub("Pregnancy","2",
                            as.character(ACSD$Conditions_Cancer))
#removing Other
ACSD$Conditions_Cancer<-gsub("Other","2",
                            as.character(ACSD$Conditions_Cancer))

#removing No Condition values
ACSD$Conditions_Cancer<-gsub("No conditions","2",as.character(ACSD$Conditions_Cancer))

#Rememving commas 
ACSD$Conditions_Cancer<-
  gsub(",","",as.character(ACSD$Conditions_Cancer))

#removing spaces
ACSD$Conditions_Cancer<-
  gsub(" ","",as.character(ACSD$Conditions_Cancer))

#changing cancer to 1
ACSD$Conditions_Cancer<-gsub("Cancer","1",as.character(ACSD$Conditions_Cancer))

###################################################################Sever_Allergies

#removing Cancer values
ACSD$Conditions_Severe_Allergies<-gsub("Cancer","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
#removing Seizures values
ACSD$Conditions_Severe_Allergies<-gsub("Seizures","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
#removing Obsity values
ACSD$Conditions_Severe_Allergies<-gsub("Obesity","2",as.character(ACSD$Conditions_Severe_Allergies))

#removing Cardiovascular disease values
ACSD$Conditions_Severe_Allergies<-gsub("Cardiovascular disease","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Severe_Allergies<-gsub("Rheumatological condition","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Severe_Allergies<-gsub("(like arthritis)","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Severe_Allergies<-gsub("Pulmonary disease","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
ACSD$Conditions_Severe_Allergies<-gsub("(like Asthma)","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Severe_Allergies<-gsub("Diabetes","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Severe_Allergies<-gsub("(type 1 or 2)","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Severe_Allergies<-gsub("Immunocompromised state due to therapy or disease","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing Pregnancy
ACSD$Conditions_Severe_Allergies<-gsub("Pregnancy","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))
#removing Other
ACSD$Conditions_Severe_Allergies<-gsub("Other","2",
                                       as.character(ACSD$Conditions_Severe_Allergies))

#removing No Condition values
ACSD$Conditions_Severe_Allergies <- gsub("No conditions","2",as.character(ACSD$Conditions_Severe_Allergies))

#changing Severe allergies to 1
ACSD$Conditions_Severe_Allergies<-gsub("Severe allergies","1",as.character(ACSD$Conditions_Severe_Allergies))

#Rememving commas 
ACSD$Conditions_Severe_Allergies<-
  gsub(",","",as.character(ACSD$Conditions_Severe_Allergies))

#removing spaces
ACSD$Conditions_Severe_Allergies<-
  gsub(" ","",as.character(ACSD$Conditions_Severe_Allergies))

###################################################################Seizures
#removing Cancer values
ACSD$Conditions_Seizures<-gsub("Cancer","2",
                               as.character(ACSD$Conditions_Seizures))
#removing Severe allergies values
ACSD$Conditions_Seizures<-gsub("Severe allergies","2",
                               as.character(ACSD$Conditions_Seizures))
#removing Obsity values
ACSD$Conditions_Seizures<-gsub("Obesity","2",as.character(ACSD$Conditions_Seizures))

#removing Cardiovascular disease values
ACSD$Conditions_Seizures<-gsub("Cardiovascular disease","2",
                               as.character(ACSD$Conditions_Seizures))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Seizures<-gsub("Rheumatological condition","2",
                               as.character(ACSD$Conditions_Seizures))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Seizures<-gsub("(like arthritis)","2",
                               as.character(ACSD$Conditions_Seizures))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Seizures<-gsub("Pulmonary disease","2",
                               as.character(ACSD$Conditions_Seizures))
ACSD$Conditions_Seizures<-gsub("(like Asthma)","2",
                               as.character(ACSD$Conditions_Seizures))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Seizures<-gsub("Diabetes","2",
                               as.character(ACSD$Conditions_Seizures))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Seizures<-gsub("(type 1 or 2)","2",
                               as.character(ACSD$Conditions_Seizures))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Seizures<-gsub("Immunocompromised state","2",
                               as.character(ACSD$Conditions_Seizures))
ACSD$Conditions_Seizures<-gsub("due to therapy or disease","2",
                               as.character(ACSD$Conditions_Seizures))

#removing Pregnancy
ACSD$Conditions_Seizures<-gsub("Pregnancy","2",
                               as.character(ACSD$Conditions_Seizures))
#removing Other
ACSD$Conditions_Seizures<-gsub("Other","2",
                               as.character(ACSD$Conditions_Seizures))

#removing No Condition values
ACSD$Conditions_Seizures <- gsub("No conditions","2",as.character(ACSD$Conditions_Seizures))

#changing Seizures to 1
ACSD$Conditions_Seizures<-gsub("Seizures","1",as.character(ACSD$Conditions_Seizures))

#Rememving commas 
ACSD$Conditions_Seizures<-
  gsub(",","",as.character(ACSD$Conditions_Seizures))

#removing spaces
ACSD$Conditions_Seizures<-
  gsub(" ","",as.character(ACSD$Conditions_Seizures))
###################################################################Obesity
#removing Cancer values
ACSD$Conditions_Obesity<-gsub("Cancer","2",
                              as.character(ACSD$Conditions_Obesity))
#removing Severe allergies values
ACSD$Conditions_Obesity<-gsub("Severe allergies","2",
                              as.character(ACSD$Conditions_Obesity))
#removing Seizures values
ACSD$Conditions_Obesity<-gsub("Seizures","2",as.character(ACSD$Conditions_Obesity))

#removing Cardiovascular disease values
ACSD$Conditions_Obesity<-gsub("Cardiovascular disease","2",
                              as.character(ACSD$Conditions_Obesity))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Obesity<-gsub("Rheumatological condition","2",
                              as.character(ACSD$Conditions_Obesity))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Obesity<-gsub("(like arthritis)","2",
                              as.character(ACSD$Conditions_Obesity))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Obesity<-gsub("Pulmonary disease","2",
                              as.character(ACSD$Conditions_Obesity))
ACSD$Conditions_Obesity<-gsub("(like Asthma)","2",
                              as.character(ACSD$Conditions_Obesity))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Obesity<-gsub("Diabetes","2",
                              as.character(ACSD$Conditions_Obesity))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Obesity<-gsub("(type 1 or 2)","2",
                              as.character(ACSD$Conditions_Obesity))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Obesity<-gsub("Immunocompromised state","2",
                              as.character(ACSD$Conditions_Obesity))
ACSD$Conditions_Obesity<-gsub("due to therapy or disease","2",
                              as.character(ACSD$Conditions_Obesity))

#removing Pregnancy
ACSD$Conditions_Obesity<-gsub("Pregnancy","2",
                              as.character(ACSD$Conditions_Obesity))
#removing Other
ACSD$Conditions_Obesity<-gsub("Other","2",
                              as.character(ACSD$Conditions_Obesity))

#removing No Condition values
ACSD$Conditions_Obesity <- gsub("No conditions","2",as.character(ACSD$Conditions_Obesity))

#changing Obesity to 1
ACSD$Conditions_Obesity<-gsub("Obesity","1",as.character(ACSD$Conditions_Obesity))

#Rememving commas 
ACSD$Conditions_Obesity<-
  gsub(",","",as.character(ACSD$Conditions_Obesity))

#removing spaces
ACSD$Conditions_Obesity<-
  gsub(" ","",as.character(ACSD$Conditions_Obesity))

###################################################################Cardio_Disease

#removing Cancer values
ACSD$Conditions_Cardio_Disease<-gsub("Cancer","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
#removing Severe allergies values
ACSD$Conditions_Cardio_Disease<-gsub("Severe allergies","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
#removing Seizures values
ACSD$Conditions_Cardio_Disease<-gsub("Seizures","2",as.character(ACSD$Conditions_Cardio_Disease))

#removing Obesity values
ACSD$Conditions_Cardio_Disease<-gsub("Obesity","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cardio_Disease<-gsub("Rheumatological condition","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cardio_Disease<-gsub("(like arthritis)","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Cardio_Disease<-gsub("Pulmonary disease","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
ACSD$Conditions_Cardio_Disease<-gsub("(like Asthma)","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cardio_Disease<-gsub("Diabetes","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cardio_Disease<-gsub("(type 1 or 2)","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Cardio_Disease<-gsub("Immunocompromised state","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
ACSD$Conditions_Cardio_Disease<-gsub("due to therapy or disease","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing Pregnancy
ACSD$Conditions_Cardio_Disease<-gsub("Pregnancy","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))
#removing Other
ACSD$Conditions_Cardio_Disease<-gsub("Other","2",
                                     as.character(ACSD$Conditions_Cardio_Disease))

#removing No Condition values
ACSD$Conditions_Cardio_Disease <- gsub("No conditions","2",as.character(ACSD$Conditions_Cardio_Disease))

#changing Cardiovascular disease to 1
ACSD$Conditions_Cardio_Disease<-gsub("Cardiovascular disease","1",as.character(ACSD$Conditions_Cardio_Disease))

#Rememving commas 
ACSD$Conditions_Cardio_Disease<-
  gsub(",","",as.character(ACSD$Conditions_Cardio_Disease))

#removing spaces
ACSD$Conditions_Cardio_Disease<-
  gsub(" ","",as.character(ACSD$Conditions_Cardio_Disease))
###################################################################Conditions_Rheumatological
#removing Cancer values
ACSD$Conditions_Rheumatological<-gsub("Cancer","2",
                                      as.character(ACSD$Conditions_Rheumatological))
#removing Severe allergies values
ACSD$Conditions_Rheumatological<-gsub("Severe allergies","2",
                                      as.character(ACSD$Conditions_Rheumatological))
#removing Seizures values
ACSD$Conditions_Rheumatological<-gsub("Seizures","2",as.character(ACSD$Conditions_Rheumatological))

#removing Obesity values
ACSD$Conditions_Rheumatological<-gsub("Obesity","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Rheumatological<-gsub("Pulmonary disease","2",
                                      as.character(ACSD$Conditions_Rheumatological))
ACSD$Conditions_Rheumatological<-gsub("(like Asthma)","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Rheumatological<-gsub("Diabetes","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Rheumatological<-gsub("(type 1 or 2)","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Rheumatological<-gsub("Immunocompromised state","2",
                                      as.character(ACSD$Conditions_Rheumatological))

ACSD$Conditions_Rheumatological<-gsub("due to therapy or disease","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing Pregnancy
ACSD$Conditions_Rheumatological<-gsub("Pregnancy","2",
                                      as.character(ACSD$Conditions_Rheumatological))
#removing Other
ACSD$Conditions_Rheumatological<-gsub("Other","2",
                                      as.character(ACSD$Conditions_Rheumatological))

#removing No Condition values
ACSD$Conditions_Rheumatological <- gsub("No conditions","2",as.character(ACSD$Conditions_Rheumatological))

#changing Cardiovascular disease to 2
ACSD$Conditions_Rheumatological<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Rheumatological))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Rheumatological<-gsub("Rheumatological condition","1",as.character(ACSD$Conditions_Rheumatological))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Rheumatological<-gsub("(like arthritis)","1",
                                      as.character(ACSD$Conditions_Rheumatological))
#Rememving commas 
ACSD$Conditions_Rheumatological<-
  gsub(",","",as.character(ACSD$Conditions_Rheumatological))

#removing spaces
ACSD$Conditions_Rheumatological<-
  gsub(" ","",as.character(ACSD$Conditions_Rheumatological))
###################################################################Conditions_Pulmonary
#removing Cancer values
ACSD$Conditions_Pulmonary<-gsub("Cancer","2",
                                as.character(ACSD$Conditions_Pulmonary))
#removing Severe allergies values
ACSD$Conditions_Pulmonary<-gsub("Severe allergies","2",
                                as.character(ACSD$Conditions_Pulmonary))
#removing Seizures values
ACSD$Conditions_Pulmonary<-gsub("Seizures","2",as.character(ACSD$Conditions_Pulmonary))

#removing Obesity values
ACSD$Conditions_Pulmonary<-gsub("Obesity","2",
                                as.character(ACSD$Conditions_Pulmonary))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Pulmonary<-gsub("Pulmonary disease","1",
                                as.character(ACSD$Conditions_Pulmonary))
ACSD$Conditions_Pulmonary<-gsub("(like Asthma)","1",
                                as.character(ACSD$Conditions_Pulmonary))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Pulmonary<-gsub("Diabetes","2",
                                as.character(ACSD$Conditions_Pulmonary))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Pulmonary<-gsub("(type 1 or 2)","2",
                                as.character(ACSD$Conditions_Pulmonary))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Pulmonary<-gsub("Immunocompromised state","2",
                                as.character(ACSD$Conditions_Pulmonary))

ACSD$Conditions_Pulmonary<-gsub("due to therapy or disease","2",
                                as.character(ACSD$Conditions_Pulmonary))

#removing Pregnancy
ACSD$Conditions_Pulmonary<-gsub("Pregnancy","2",
                                as.character(ACSD$Conditions_Pulmonary))
#removing Other
ACSD$Conditions_Pulmonary<-gsub("Other","2",
                                as.character(ACSD$Conditions_Pulmonary))

#removing No Condition values
ACSD$Conditions_Pulmonary <- gsub("No conditions","2",as.character(ACSD$Conditions_Pulmonary))

#changing Cardiovascular disease to 2
ACSD$Conditions_Pulmonary<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Pulmonary))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Pulmonary<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_Pulmonary))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Pulmonary<-gsub("(like arthritis)","2",
                                as.character(ACSD$Conditions_Pulmonary))
#Rememving commas 
ACSD$Conditions_Pulmonary<-
  gsub(",","",as.character(ACSD$Conditions_Pulmonary))

#removing spaces
ACSD$Conditions_Pulmonary<-
  gsub(" ","",as.character(ACSD$Conditions_Pulmonary))

###################################################################Conditions_Diabetes
#removing Cancer values
ACSD$Conditions_Diabetes<-gsub("Cancer","2",
                               as.character(ACSD$Conditions_Diabetes))
#removing Severe allergies values
ACSD$Conditions_Diabetes<-gsub("Severe allergies","2",
                               as.character(ACSD$Conditions_Diabetes))
#removing Seizures values
ACSD$Conditions_Diabetes<-gsub("Seizures","2",as.character(ACSD$Conditions_Diabetes))

#removing Obesity values
ACSD$Conditions_Diabetes<-gsub("Obesity","2",
                               as.character(ACSD$Conditions_Diabetes))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Diabetes<-gsub("Pulmonary disease","2",
                               as.character(ACSD$Conditions_Diabetes))
ACSD$Conditions_Diabetes<-gsub("(like Asthma)","2",
                               as.character(ACSD$Conditions_Diabetes))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Diabetes<-gsub("Diabetes","1",
                               as.character(ACSD$Conditions_Diabetes))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Diabetes<-gsub("(type 1 or 2)","1",
                               as.character(ACSD$Conditions_Diabetes))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Diabetes<-gsub("Immunocompromised state","2",
                               as.character(ACSD$Conditions_Diabetes))

ACSD$Conditions_Diabetes<-gsub("due to therapy or disease","2",
                               as.character(ACSD$Conditions_Diabetes))

#removing Pregnancy
ACSD$Conditions_Diabetes<-gsub("Pregnancy","2",
                               as.character(ACSD$Conditions_Diabetes))
#removing Other
ACSD$Conditions_Diabetes<-gsub("Other","2",
                               as.character(ACSD$Conditions_Diabetes))

#removing No Condition values
ACSD$Conditions_Diabetes <- gsub("No conditions","2",as.character(ACSD$Conditions_Diabetes))

#changing Cardiovascular disease to 2
ACSD$Conditions_Diabetes<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Diabetes))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Diabetes<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_Diabetes))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Diabetes<-gsub("(like arthritis)","2",
                               as.character(ACSD$Conditions_Diabetes))
#Rememving commas 
ACSD$Conditions_Diabetes<-
  gsub(",","",as.character(ACSD$Conditions_Diabetes))

#removing spaces
ACSD$Conditions_Diabetes<-
  gsub(" ","",as.character(ACSD$Conditions_Diabetes))
###################################################################Conditions_Immuno
#removing Cancer values
ACSD$Conditions_Immuno<-gsub("Cancer","2",
                             as.character(ACSD$Conditions_Immuno))
#removing Severe allergies values
ACSD$Conditions_Immuno<-gsub("Severe allergies","2",
                             as.character(ACSD$Conditions_Immuno))
#removing Seizures values
ACSD$Conditions_Immuno<-gsub("Seizures","2",as.character(ACSD$Conditions_Immuno))

#removing Obesity values
ACSD$Conditions_Immuno<-gsub("Obesity","2",
                             as.character(ACSD$Conditions_Immuno))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Immuno<-gsub("Pulmonary disease","2",
                             as.character(ACSD$Conditions_Immuno))
ACSD$Conditions_Immuno<-gsub("(like Asthma)","2",
                             as.character(ACSD$Conditions_Immuno))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Immuno<-gsub("Diabetes","2",
                             as.character(ACSD$Conditions_Immuno))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Immuno<-gsub("(type 1 or 2)","2",
                             as.character(ACSD$Conditions_Immuno))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Immuno<-gsub("Immunocompromised state","1",
                             as.character(ACSD$Conditions_Immuno))

ACSD$Conditions_Immuno<-gsub("due to therapy or disease","1",
                             as.character(ACSD$Conditions_Immuno))

#removing Pregnancy
ACSD$Conditions_Immuno<-gsub("Pregnancy","2",
                             as.character(ACSD$Conditions_Immuno))
#removing Other
ACSD$Conditions_Immuno<-gsub("Other","2",
                             as.character(ACSD$Conditions_Immuno))

#removing No Condition values
ACSD$Conditions_Immuno <- gsub("No conditions","2",as.character(ACSD$Conditions_Immuno))

#changing Cardiovascular disease to 2
ACSD$Conditions_Immuno<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Immuno))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Immuno<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_Immuno))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Immuno<-gsub("(like arthritis)","2",
                             as.character(ACSD$Conditions_Immuno))
#Rememving commas 
ACSD$Conditions_Immuno<-
  gsub(",","",as.character(ACSD$Conditions_Immuno))

#removing spaces
ACSD$Conditions_Immuno<-
  gsub(" ","",as.character(ACSD$Conditions_Immuno))

###################################################################Conditions_Pregnancy
#removing Cancer values
ACSD$Conditions_Pregnancy<-gsub("Cancer","2",
                                as.character(ACSD$Conditions_Pregnancy))
#removing Severe allergies values
ACSD$Conditions_Pregnancy<-gsub("Severe allergies","2",
                                as.character(ACSD$Conditions_Pregnancy))
#removing Seizures values
ACSD$Conditions_Pregnancy<-gsub("Seizures","2",as.character(ACSD$Conditions_Pregnancy))

#removing Obesity values
ACSD$Conditions_Pregnancy<-gsub("Obesity","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Pregnancy<-gsub("Pulmonary disease","2",
                                as.character(ACSD$Conditions_Pregnancy))
ACSD$Conditions_Pregnancy<-gsub("(like Asthma)","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Pregnancy<-gsub("Diabetes","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Pregnancy<-gsub("(type 1 or 2)","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Pregnancy<-gsub("Immunocompromised state","2",
                                as.character(ACSD$Conditions_Pregnancy))

ACSD$Conditions_Pregnancy<-gsub("due to therapy or disease","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing Pregnancy
ACSD$Conditions_Pregnancy<-gsub("Pregnancy","1",
                                as.character(ACSD$Conditions_Pregnancy))
#removing Other
ACSD$Conditions_Pregnancy<-gsub("Other","2",
                                as.character(ACSD$Conditions_Pregnancy))

#removing No Condition values
ACSD$Conditions_Pregnancy <- gsub("No conditions","2",as.character(ACSD$Conditions_Pregnancy))

#changing Cardiovascular disease to 2
ACSD$Conditions_Pregnancy<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Pregnancy))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Pregnancy<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_Pregnancy))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Pregnancy<-gsub("(like arthritis)","2",
                                as.character(ACSD$Conditions_Pregnancy))
#Rememving commas 
ACSD$Conditions_Pregnancy<-
  gsub(",","",as.character(ACSD$Conditions_Pregnancy))

#removing spaces
ACSD$Conditions_Pregnancy<-
  gsub(" ","",as.character(ACSD$Conditions_Pregnancy))
###################################################################Conditions_Other
#removing Cancer values
ACSD$Conditions_Other<-gsub("Cancer","2",
                            as.character(ACSD$Conditions_Other))
#removing Severe allergies values
ACSD$Conditions_Other<-gsub("Severe allergies","2",
                            as.character(ACSD$Conditions_Other))
#removing Seizures values
ACSD$Conditions_Other<-gsub("Seizures","2",as.character(ACSD$Conditions_Other))

#removing Obesity values
ACSD$Conditions_Other<-gsub("Obesity","2",
                            as.character(ACSD$Conditions_Other))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Other<-gsub("Pulmonary disease","2",
                            as.character(ACSD$Conditions_Other))
ACSD$Conditions_Other<-gsub("(like Asthma)","2",
                            as.character(ACSD$Conditions_Other))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Other<-gsub("Diabetes","2",
                            as.character(ACSD$Conditions_Other))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Other<-gsub("(type 1 or 2)","2",
                            as.character(ACSD$Conditions_Other))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Other<-gsub("Immunocompromised state","2",
                            as.character(ACSD$Conditions_Other))

ACSD$Conditions_Other<-gsub("due to therapy or disease","2",
                            as.character(ACSD$Conditions_Other))

#removing Pregnancy
ACSD$Conditions_Other<-gsub("Pregnancy","2",
                            as.character(ACSD$Conditions_Other))
#removing Other
ACSD$Conditions_Other<-gsub("Other","1",
                            as.character(ACSD$Conditions_Other))

#removing No Condition values
ACSD$Conditions_Other <- gsub("No conditions","2",as.character(ACSD$Conditions_Other))

#changing Cardiovascular disease to 2
ACSD$Conditions_Other<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_Other))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Other<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_Other))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Other<-gsub("(like arthritis)","2",
                            as.character(ACSD$Conditions_Other))
#Rememving commas 
ACSD$Conditions_Other<-
  gsub(",","",as.character(ACSD$Conditions_Other))

#removing spaces
ACSD$Conditions_Other<-
  gsub(" ","",as.character(ACSD$Conditions_Other))

###################################################################Conditions_No Conditions
#removing Cancer values
ACSD$Conditions_No_Conditions<-gsub("Cancer","2",
                                    as.character(ACSD$Conditions_No_Conditions))
#removing Severe allergies values
ACSD$Conditions_No_Conditions<-gsub("Severe allergies","2",
                                    as.character(ACSD$Conditions_No_Conditions))
#removing Seizures values
ACSD$Conditions_No_Conditions<-gsub("Seizures","2",as.character(ACSD$Conditions_No_Conditions))

#removing Obesity values
ACSD$Conditions_No_Conditions<-gsub("Obesity","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_No_Conditions<-gsub("Pulmonary disease","2",
                                    as.character(ACSD$Conditions_No_Conditions))
ACSD$Conditions_No_Conditions<-gsub("(like Asthma)","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_No_Conditions<-gsub("Diabetes","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_No_Conditions<-gsub("(type 1 or 2)","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_No_Conditions<-gsub("Immunocompromised state","2",
                                    as.character(ACSD$Conditions_No_Conditions))

ACSD$Conditions_No_Conditions<-gsub("due to therapy or disease","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing Pregnancy
ACSD$Conditions_No_Conditions<-gsub("Pregnancy","2",
                                    as.character(ACSD$Conditions_No_Conditions))
#removing Other
ACSD$Conditions_No_Conditions<-gsub("Other","2",
                                    as.character(ACSD$Conditions_No_Conditions))

#removing No Condition values
ACSD$Conditions_No_Conditions <- gsub("No conditions","1",as.character(ACSD$Conditions_No_Conditions))

#changing Cardiovascular disease to 2
ACSD$Conditions_No_Conditions<-gsub("Cardiovascular disease","2",as.character(ACSD$Conditions_No_Conditions))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_No_Conditions<-gsub("Rheumatological condition","2",as.character(ACSD$Conditions_No_Conditions))

#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_No_Conditions<-gsub("(like arthritis)","2",
                                    as.character(ACSD$Conditions_No_Conditions))
#Rememving commas 
ACSD$Conditions_No_Conditions<-
  gsub(",","",as.character(ACSD$Conditions_No_Conditions))

#removing spaces
ACSD$Conditions_No_Conditions<-
  gsub(" ","",as.character(ACSD$Conditions_No_Conditions))
