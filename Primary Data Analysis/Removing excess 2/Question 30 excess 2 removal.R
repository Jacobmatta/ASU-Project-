#changing missing values of conditions to "*"
Rawdata <- Rawdata %>% mutate(Q13_Community_Health_Advocate= ifelse(is.na(Q13_Community_Health_Advocate), "*", Q13_Community_Health_Advocate))
Rawdata <- Rawdata %>% mutate(Q13_Community_Member= ifelse(is.na(Q13_Community_Member), "*", Q13_Community_Member))
Rawdata <- Rawdata %>% mutate(Q13_Nurse_Practitioner = ifelse(is.na(Q13_Nurse_Practitioner), "*", Q13_Nurse_Practitioner))
Rawdata <- Rawdata %>% mutate(Q13_Other = ifelse(is.na(Q13_Other), "*", Q13_Other))
Rawdata <- Rawdata %>% mutate(Q13_Physician = ifelse(is.na(Q13_Physician), "*", Q13_Physician))
Rawdata <- Rawdata %>% mutate(Q13_Registered_Nurse = ifelse(is.na(Q13_Registered_Nurse), "*", Q13_Registered_Nurse))

####################################cleaning for Q13_Community_Health_Advocate
#removing parenthesis 
Rawdata$Q13_Community_Health_Advocate<-gsub("[()]","",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("222222","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("22222","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("2222","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("222","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("22","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q13_Community_Health_Advocate<-gsub("2","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
#cleaning previous entered data 
Rawdata$Q13_Community_Health_Advocate<-gsub("678","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
Rawdata$Q13_Community_Health_Advocate<-gsub("7","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
Rawdata$Q13_Community_Health_Advocate<-gsub("4","*",
                               as.character(Rawdata$Q13_Community_Health_Advocate))
####################################cleaning for Q13_Community_Member
#removing parenthesis 
Rawdata$Q13_Community_Member<-gsub("[()]","",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("222222","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("22222","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("2222","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("222","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("22","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning long 2's 
Rawdata$Q13_Community_Member<-gsub("2","*",
                                   as.character(Rawdata$Q13_Community_Member))
#cleaning previous entered data 
Rawdata$Q13_Community_Member<-gsub("678","*",
                                   as.character(Rawdata$Q13_Community_Member))
Rawdata$Q13_Community_Member<-gsub("7","*",
                                   as.character(Rawdata$Q13_Community_Member))
Rawdata$Q13_Community_Member<-gsub("4","*",
                                   as.character(Rawdata$Q13_Community_Member))

####################################cleaning for Q13_Nurse_Practitioner
#removing parenthesis 
Rawdata$Q13_Nurse_Practitioner<-gsub("[()]","",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("222222","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("22222","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("2222","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("222","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("22","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning long 2's 
Rawdata$Q13_Nurse_Practitioner<-gsub("2","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
#cleaning previous entered data 
Rawdata$Q13_Nurse_Practitioner<-gsub("678","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
Rawdata$Q13_Nurse_Practitioner<-gsub("7","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
Rawdata$Q13_Nurse_Practitioner<-gsub("4","*",
                                    as.character(Rawdata$Q13_Nurse_Practitioner))
####################################cleaning for Q13_Other
#removing parenthesis 
Rawdata$Q13_Other<-gsub("[()]","",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("222222","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("22222","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("2222","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("222","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("22","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning long 2's 
Rawdata$Q13_Other<-gsub("2","*",
                                                as.character(Rawdata$Q13_Other))
#cleaning previous entered data 
Rawdata$Q13_Other<-gsub("678","*",
                                                as.character(Rawdata$Q13_Other))
Rawdata$Q13_Other<-gsub("7","*",
                                                as.character(Rawdata$Q13_Other))
Rawdata$Q13_Other<-gsub("4","*",
                                                as.character(Rawdata$Q13_Other))
####################################cleaning for Q13_Physician
#removing parenthesis 
Rawdata$Q13_Physician<-gsub("[()]","",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("222222","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("22222","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("2222","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("222","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("22","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning long 2's 
Rawdata$Q13_Physician<-gsub("2","*",
                                     as.character(Rawdata$Q13_Physician))
#cleaning previous entered data 
Rawdata$Q13_Physician<-gsub("678","*",
                                     as.character(Rawdata$Q13_Physician))
Rawdata$Q13_Physician<-gsub("7","*",
                                     as.character(Rawdata$Q13_Physician))
Rawdata$Q13_Physician<-gsub("4","*",
                                     as.character(Rawdata$Q13_Physician))
Rawdata$Q13_Physician<-gsub("11","1",
                                     as.character(Rawdata$Q13_Physician))
####################################cleaning for Q13_Registered_Nurse
#removing parenthesis 
Rawdata$Q13_Registered_Nurse<-gsub("[()]","",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("222222","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("22222","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("2222","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("222","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("22","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning long 2's 
Rawdata$Q13_Registered_Nurse<-gsub("2","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
#cleaning previous entered data 
Rawdata$Q13_Registered_Nurse<-gsub("678","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
Rawdata$Q13_Registered_Nurse<-gsub("7","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
Rawdata$Q13_Registered_Nurse<-gsub("4","*",
                                            as.character(Rawdata$Q13_Registered_Nurse))
Rawdata$Q13_Registered_Nurse<-gsub("11","1",
                                            as.character(Rawdata$Q13_Registered_Nurse))
