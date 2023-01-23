#duplicating Question_30 column for Physician responses
ACSD <- ACSD %>%         
  mutate(Question_30_Physician = Question_30)

#duplicating Question_30 column for Nurse_Practitioner responses
ACSD <- ACSD %>%         
  mutate(Question_30_Nurse_Practitioner = Question_30)


#duplicating Question_30 column for Registered_Nurse responses
ACSD <- ACSD %>%         
  mutate(Question_30_Registered_Nurse = Question_30)


#duplicating Question_30 column for Community_Health_Advocate responses
ACSD <- ACSD %>%         
  mutate(Question_30_Community_Health_Advocate = Question_30)


#duplicating Question_30 column for Community_Member responses
ACSD <- ACSD %>%         
  mutate(Question_30_Community_Member  = Question_30)

#duplicating Question_30 column for Other responses
ACSD <- ACSD %>%         
  mutate(Question_30_Other  = Question_30)
###################################################################Physician
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Physician<-gsub("Physician","1",
                                 as.character(ACSD$Question_30_Physician))

#removing Nurse Practitioner values
ACSD$Question_30_Physician<-gsub("Nurse Practitioner","2",
                                 as.character(ACSD$Question_30_Physician))

#removing Registered Nurse
ACSD$Question_30_Physician<-gsub("Registered Nurse","2",as.character(ACSD$Question_30_Physician))

#removing Community Health Advocate values
ACSD$Question_30_Physician<-gsub("Community Health Advocate","2",
                                 as.character(ACSD$Question_30_Physician))

#removing Community Member values
ACSD$Question_30_Physician<-gsub("Community Member","2",
                                 as.character(ACSD$Question_30_Physician))

#removing Other values
ACSD$Question_30_Physician<-gsub("Other","2", as.character(ACSD$Question_30_Physician))


#Rememving commas 
ACSD$Question_30_Physician<-
  gsub(",","",as.character(ACSD$Question_30_Physician))

#removing spaces
ACSD$Question_30_Physician<-
  gsub(" ","",as.character(ACSD$Question_30_Physician))
###################################################################Nurse Practitioner
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Nurse_Practitioner<-gsub("Physician","2",
                                          as.character(ACSD$Question_30_Nurse_Practitioner))

#removing Nurse Practitioner values
ACSD$Question_30_Nurse_Practitioner<-gsub("Nurse Practitioner","1",
                                          as.character(ACSD$Question_30_Nurse_Practitioner))

#removing Registered Nurse
ACSD$Question_30_Nurse_Practitioner<-gsub("Registered Nurse","2",as.character(ACSD$Question_30_Nurse_Practitioner))

#removing Community Health Advocate values
ACSD$Question_30_Nurse_Practitioner<-gsub("Community Health Advocate","2",
                                          as.character(ACSD$Question_30_Nurse_Practitioner))

#removing Community Member values
ACSD$Question_30_Nurse_Practitioner<-gsub("Community Member","2",
                                          as.character(ACSD$Question_30_Nurse_Practitioner))

#removing Other values
ACSD$Question_30_Nurse_Practitioner<-gsub("Other","2", as.character(ACSD$Question_30_Nurse_Practitioner))


#Rememving commas 
ACSD$Question_30_Nurse_Practitioner<-
  gsub(",","",as.character(ACSD$Question_30_Nurse_Practitioner))

#removing spaces
ACSD$Question_30_Nurse_Practitioner<-
  gsub(" ","",as.character(ACSD$Question_30_Nurse_Practitioner))
###################################################################Registered Nurse
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Registered_Nurse<-gsub("Physician","2",
                                        as.character(ACSD$Question_30_Registered_Nurse))

#removing Nurse Practitioner values
ACSD$Question_30_Registered_Nurse<-gsub("Nurse Practitioner","2",
                                        as.character(ACSD$Question_30_Registered_Nurse))

#removing Registered Nurse
ACSD$Question_30_Registered_Nurse<-gsub("Registered Nurse","1",as.character(ACSD$Question_30_Registered_Nurse))

#removing Community Health Advocate values
ACSD$Question_30_Registered_Nurse<-gsub("Community Health Advocate","2",
                                        as.character(ACSD$Question_30_Registered_Nurse))

#removing Community Member values
ACSD$Question_30_Registered_Nurse<-gsub("Community Member","2",
                                        as.character(ACSD$Question_30_Registered_Nurse))

#removing Other values
ACSD$Question_30_Registered_Nurse<-gsub("Other","2", as.character(ACSD$Question_30_Registered_Nurse))


#Rememving commas 
ACSD$Question_30_Registered_Nurse<-
  gsub(",","",as.character(ACSD$Question_30_Registered_Nurse))

#removing spaces
ACSD$Question_30_Registered_Nurse<-
  gsub(" ","",as.character(ACSD$Question_30_Registered_Nurse))
###################################################################Community_Health_Advocate
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Community_Health_Advocate<-gsub("Physician","2",
                                                 as.character(ACSD$Question_30_Community_Health_Advocate))

#removing Nurse Practitioner values
ACSD$Question_30_Community_Health_Advocate<-gsub("Nurse Practitioner","2",
                                                 as.character(ACSD$Question_30_Community_Health_Advocate))

#removing Registered Nurse
ACSD$Question_30_Community_Health_Advocate<-gsub("Registered Nurse","2",as.character(ACSD$Question_30_Community_Health_Advocate))

#removing Community Health Advocate values
ACSD$Question_30_Community_Health_Advocate<-gsub("Community Health Advocate","1",
                                                 as.character(ACSD$Question_30_Community_Health_Advocate))

#removing Community Member values
ACSD$Question_30_Community_Health_Advocate<-gsub("Community Member","2",
                                                 as.character(ACSD$Question_30_Community_Health_Advocate))

#removing Other values
ACSD$Question_30_Community_Health_Advocate<-gsub("Other","2", as.character(ACSD$Question_30_Community_Health_Advocate))


#Rememving commas 
ACSD$Question_30_Community_Health_Advocate<-
  gsub(",","",as.character(ACSD$Question_30_Community_Health_Advocate))

#removing spaces
ACSD$Question_30_Community_Health_Advocate<-
  gsub(" ","",as.character(ACSD$Question_30_Community_Health_Advocate))
###################################################################Community_Member
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Community_Member<-gsub("Physician","2",
                                        as.character(ACSD$Question_30_Community_Member))

#removing Nurse Practitioner values
ACSD$Question_30_Community_Member<-gsub("Nurse Practitioner","2",
                                        as.character(ACSD$Question_30_Community_Member))

#removing Registered Nurse
ACSD$Question_30_Community_Member<-gsub("Registered Nurse","2",as.character(ACSD$Question_30_Community_Member))

#removing Community Health Advocate values
ACSD$Question_30_Community_Member<-gsub("Community Health Advocate","2",
                                        as.character(ACSD$Question_30_Community_Member))

#removing Community Member values
ACSD$Question_30_Community_Member<-gsub("Community Member","1",
                                        as.character(ACSD$Question_30_Community_Member))

#removing Other values
ACSD$Question_30_Community_Member<-gsub("Other","2", as.character(ACSD$Question_30_Community_Member))


#Rememving commas 
ACSD$Question_30_Community_Member<-
  gsub(",","",as.character(ACSD$Question_30_Community_Member))

#removing spaces
ACSD$Question_30_Community_Member<-
  gsub(" ","",as.character(ACSD$Question_30_Community_Member))
###################################################################Other
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_30_Other<-gsub("Physician","2",
                             as.character(ACSD$Question_30_Other))

#removing Nurse Practitioner values
ACSD$Question_30_Other<-gsub("Nurse Practitioner","2",
                             as.character(ACSD$Question_30_Other))

#removing Registered Nurse
ACSD$Question_30_Other<-gsub("Registered Nurse","2",as.character(ACSD$Question_30_Other))

#removing Community Health Advocate values
ACSD$Question_30_Other<-gsub("Community Health Advocate","2",
                             as.character(ACSD$Question_30_Other))

#removing Community Member values
ACSD$Question_30_Other<-gsub("Community Member","2",
                             as.character(ACSD$Question_30_Other))

#removing Other values
ACSD$Question_30_Other<-gsub("Other","1", as.character(ACSD$Question_30_Other))


#Rememving commas 
ACSD$Question_30_Other<-
  gsub(",","",as.character(ACSD$Question_30_Other))

#removing spaces
ACSD$Question_30_Other<-
  gsub(" ","",as.character(ACSD$Question_30_Other))

