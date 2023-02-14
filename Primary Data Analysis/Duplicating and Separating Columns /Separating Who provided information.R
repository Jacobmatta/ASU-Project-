#duplicating Q13 column for Physician responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Physician = Q13)

#duplicating Q13 column for Nurse_Practitioner responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Nurse_Practitioner = Q13)


#duplicating Q13 column for Registered_Nurse responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Registered_Nurse = Q13)


#duplicating Q13 column for Community_Health_Advocate responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Community_Health_Advocate = Q13)


#duplicating Q13 column for Community_Member responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Community_Member  = Q13)

#duplicating Q13 column for Other responses
Rawdata <- Rawdata %>%         
  mutate(Q13_Other  = Q13)
###################################################################Physician
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Physician<-gsub("Physician","1",
                                 as.character(Rawdata$Q13_Physician))

#removing Nurse Practitioner values
Rawdata$Q13_Physician<-gsub("Nurse Practitioner","2",
                                 as.character(Rawdata$Q13_Physician))

#removing Registered Nurse
Rawdata$Q13_Physician<-gsub("Registered Nurse","2",as.character(Rawdata$Q13_Physician))

#removing Community Health Advocate values
Rawdata$Q13_Physician<-gsub("Community Health Advocate","2",
                                 as.character(Rawdata$Q13_Physician))

#removing Community Member values
Rawdata$Q13_Physician<-gsub("Community Member","2",
                                 as.character(Rawdata$Q13_Physician))

#removing Other values
Rawdata$Q13_Physician<-gsub("Other","2", as.character(Rawdata$Q13_Physician))


#Rememving commas 
Rawdata$Q13_Physician<-
  gsub(",","",as.character(Rawdata$Q13_Physician))

#removing spaces
Rawdata$Q13_Physician<-
  gsub(" ","",as.character(Rawdata$Q13_Physician))
###################################################################Nurse Practitioner
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Nurse_Practitioner<-gsub("Physician","2",
                                          as.character(Rawdata$Q13_Nurse_Practitioner))

#removing Nurse Practitioner values
Rawdata$Q13_Nurse_Practitioner<-gsub("Nurse Practitioner","1",
                                          as.character(Rawdata$Q13_Nurse_Practitioner))

#removing Registered Nurse
Rawdata$Q13_Nurse_Practitioner<-gsub("Registered Nurse","2",as.character(Rawdata$Q13_Nurse_Practitioner))

#removing Community Health Advocate values
Rawdata$Q13_Nurse_Practitioner<-gsub("Community Health Advocate","2",
                                          as.character(Rawdata$Q13_Nurse_Practitioner))

#removing Community Member values
Rawdata$Q13_Nurse_Practitioner<-gsub("Community Member","2",
                                          as.character(Rawdata$Q13_Nurse_Practitioner))

#removing Other values
Rawdata$Q13_Nurse_Practitioner<-gsub("Other","2", as.character(Rawdata$Q13_Nurse_Practitioner))


#Rememving commas 
Rawdata$Q13_Nurse_Practitioner<-
  gsub(",","",as.character(Rawdata$Q13_Nurse_Practitioner))

#removing spaces
Rawdata$Q13_Nurse_Practitioner<-
  gsub(" ","",as.character(Rawdata$Q13_Nurse_Practitioner))
###################################################################Registered Nurse
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Registered_Nurse<-gsub("Physician","2",
                                        as.character(Rawdata$Q13_Registered_Nurse))

#removing Nurse Practitioner values
Rawdata$Q13_Registered_Nurse<-gsub("Nurse Practitioner","2",
                                        as.character(Rawdata$Q13_Registered_Nurse))

#removing Registered Nurse
Rawdata$Q13_Registered_Nurse<-gsub("Registered Nurse","1",as.character(Rawdata$Q13_Registered_Nurse))

#removing Community Health Advocate values
Rawdata$Q13_Registered_Nurse<-gsub("Community Health Advocate","2",
                                        as.character(Rawdata$Q13_Registered_Nurse))

#removing Community Member values
Rawdata$Q13_Registered_Nurse<-gsub("Community Member","2",
                                        as.character(Rawdata$Q13_Registered_Nurse))

#removing Other values
Rawdata$Q13_Registered_Nurse<-gsub("Other","2", as.character(Rawdata$Q13_Registered_Nurse))


#Rememving commas 
Rawdata$Q13_Registered_Nurse<-
  gsub(",","",as.character(Rawdata$Q13_Registered_Nurse))

#removing spaces
Rawdata$Q13_Registered_Nurse<-
  gsub(" ","",as.character(Rawdata$Q13_Registered_Nurse))
###################################################################Community_Health_Advocate
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Community_Health_Advocate<-gsub("Physician","2",
                                                 as.character(Rawdata$Q13_Community_Health_Advocate))

#removing Nurse Practitioner values
Rawdata$Q13_Community_Health_Advocate<-gsub("Nurse Practitioner","2",
                                                 as.character(Rawdata$Q13_Community_Health_Advocate))

#removing Registered Nurse
Rawdata$Q13_Community_Health_Advocate<-gsub("Registered Nurse","2",as.character(Rawdata$Q13_Community_Health_Advocate))

#removing Community Health Advocate values
Rawdata$Q13_Community_Health_Advocate<-gsub("Community Health Advocate","1",
                                                 as.character(Rawdata$Q13_Community_Health_Advocate))

#removing Community Member values
Rawdata$Q13_Community_Health_Advocate<-gsub("Community Member","2",
                                                 as.character(Rawdata$Q13_Community_Health_Advocate))

#removing Other values
Rawdata$Q13_Community_Health_Advocate<-gsub("Other","2", as.character(Rawdata$Q13_Community_Health_Advocate))


#Rememving commas 
Rawdata$Q13_Community_Health_Advocate<-
  gsub(",","",as.character(Rawdata$Q13_Community_Health_Advocate))

#removing spaces
Rawdata$Q13_Community_Health_Advocate<-
  gsub(" ","",as.character(Rawdata$Q13_Community_Health_Advocate))
###################################################################Community_Member
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Community_Member<-gsub("Physician","2",
                                        as.character(Rawdata$Q13_Community_Member))

#removing Nurse Practitioner values
Rawdata$Q13_Community_Member<-gsub("Nurse Practitioner","2",
                                        as.character(Rawdata$Q13_Community_Member))

#removing Registered Nurse
Rawdata$Q13_Community_Member<-gsub("Registered Nurse","2",as.character(Rawdata$Q13_Community_Member))

#removing Community Health Advocate values
Rawdata$Q13_Community_Member<-gsub("Community Health Advocate","2",
                                        as.character(Rawdata$Q13_Community_Member))

#removing Community Member values
Rawdata$Q13_Community_Member<-gsub("Community Member","1",
                                        as.character(Rawdata$Q13_Community_Member))

#removing Other values
Rawdata$Q13_Community_Member<-gsub("Other","2", as.character(Rawdata$Q13_Community_Member))


#Rememving commas 
Rawdata$Q13_Community_Member<-
  gsub(",","",as.character(Rawdata$Q13_Community_Member))

#removing spaces
Rawdata$Q13_Community_Member<-
  gsub(" ","",as.character(Rawdata$Q13_Community_Member))
###################################################################Other
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q13_Other<-gsub("Physician","2",
                             as.character(Rawdata$Q13_Other))

#removing Nurse Practitioner values
Rawdata$Q13_Other<-gsub("Nurse Practitioner","2",
                             as.character(Rawdata$Q13_Other))

#removing Registered Nurse
Rawdata$Q13_Other<-gsub("Registered Nurse","2",as.character(Rawdata$Q13_Other))

#removing Community Health Advocate values
Rawdata$Q13_Other<-gsub("Community Health Advocate","2",
                             as.character(Rawdata$Q13_Other))

#removing Community Member values
Rawdata$Q13_Other<-gsub("Community Member","2",
                             as.character(Rawdata$Q13_Other))

#removing Other values
Rawdata$Q13_Other<-gsub("Other","1", as.character(Rawdata$Q13_Other))


#Rememving commas 
Rawdata$Q13_Other<-
  gsub(",","",as.character(Rawdata$Q13_Other))

#removing spaces
Rawdata$Q13_Other<-
  gsub(" ","",as.character(Rawdata$Q13_Other))

