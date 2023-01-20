#uploading survey data from one drive after downloading
library(readxl)
library("dplyr")
ASU_Combined_Survey_Data <- read_excel("ASU_Combined_Survey_Data.xlsx")

#duplicating the data
ACSD <- ASU_Combined_Survey_Data

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


#duplicating conditions column for Rheumatlogical responses
ACSD <- ACSD %>%         
  mutate(Conditions_Rheumatlogical = Conditions)


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

#removing Severe allergies values
ACSD$Conditions_Cancer<-gsub("Severe allergies","*",
                            as.character(ACSD$Conditions_Cancer))
#removing Seizures values
ACSD$Conditions_Cancer<-gsub("Seizures","*",
                            as.character(ACSD$Conditions_Cancer))
#removing Obsity values
ACSD$Conditions_Cancer<-gsub("Obesity","*",as.character(ACSD$Conditions_Cancer))

#removing Cardiovascular disease values
ACSD$Conditions_Cancer<-gsub("Cardiovascular disease","*",
                            as.character(ACSD$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cancer<-gsub("Rheumatological condition","*",
                            as.character(ACSD$Conditions_Cancer))
#removing Rheumatological condition (like arthritis) values
ACSD$Conditions_Cancer<-gsub("(like arthritis)","*",
                             as.character(ACSD$Conditions_Cancer))

#removing Pulmonary disease (like Asthma) values
ACSD$Conditions_Cancer<-gsub("Pulmonary disease (like Asthma)","*",
                            as.character(ACSD$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cancer<-gsub("Diabetes","*",
                            as.character(ACSD$Conditions_Cancer))

#removing Diabetes (type 1 or 2) values
ACSD$Conditions_Cancer<-gsub("(type 1 or 2)","*",
                             as.character(ACSD$Conditions_Cancer))

#removing Immunocompromised state due to therapy or disease values
ACSD$Conditions_Cancer<-gsub("Immunocompromised state due to therapy or disease","*",
                            as.character(ACSD$Conditions_Cancer))

#removing Pregnancy
ACSD$Conditions_Cancer<-gsub("Pregnancy","*",
                            as.character(ACSD$Conditions_Cancer))
#removing Other
ACSD$Conditions_Cancer<-gsub("Other","*",
                            as.character(ACSD$Conditions_Cancer))

#removing No Condition values
ACSD$Conditions_Cancer<-gsub("No conditions","*",as.character(ACSD$Conditions_Cancer))


 

