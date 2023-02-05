#changing missing values of conditions to "*"
CAC <- CAC %>% mutate(Question_30_Community_Health_Advocate= ifelse(is.na(Question_30_Community_Health_Advocate), "*", Question_30_Community_Health_Advocate))
CAC <- CAC %>% mutate(Question_30_Community_Member= ifelse(is.na(Question_30_Community_Member), "*", Question_30_Community_Member))
CAC <- CAC %>% mutate(Question_30_Nurse_Practitioner = ifelse(is.na(Question_30_Nurse_Practitioner), "*", Question_30_Nurse_Practitioner))
CAC <- CAC %>% mutate(Question_30_Other = ifelse(is.na(Question_30_Other), "*", Question_30_Other))
CAC <- CAC %>% mutate(Question_30_Physician = ifelse(is.na(Question_30_Physician), "*", Question_30_Physician))
CAC <- CAC %>% mutate(Question_30_Registered_Nurse = ifelse(is.na(Question_30_Registered_Nurse), "*", Question_30_Registered_Nurse))

####################################cleaning for Question_30_Community_Health_Advocate
#removing parenthesis 
CAC$Question_30_Community_Health_Advocate<-gsub("[()]","",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("222222","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("22222","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("2222","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("222","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("22","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_30_Community_Health_Advocate<-gsub("2","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
#cleaning previous entered data 
CAC$Question_30_Community_Health_Advocate<-gsub("678","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
CAC$Question_30_Community_Health_Advocate<-gsub("7","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
CAC$Question_30_Community_Health_Advocate<-gsub("4","*",
                               as.character(CAC$Question_30_Community_Health_Advocate))
####################################cleaning for Question_30_Community_Member
#removing parenthesis 
CAC$Question_30_Community_Member<-gsub("[()]","",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("222222","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("22222","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("2222","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("222","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("22","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning long 2's 
CAC$Question_30_Community_Member<-gsub("2","*",
                                   as.character(CAC$Question_30_Community_Member))
#cleaning previous entered data 
CAC$Question_30_Community_Member<-gsub("678","*",
                                   as.character(CAC$Question_30_Community_Member))
CAC$Question_30_Community_Member<-gsub("7","*",
                                   as.character(CAC$Question_30_Community_Member))
CAC$Question_30_Community_Member<-gsub("4","*",
                                   as.character(CAC$Question_30_Community_Member))

####################################cleaning for Question_30_Nurse_Practitioner
#removing parenthesis 
CAC$Question_30_Nurse_Practitioner<-gsub("[()]","",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("222222","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("22222","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("2222","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("222","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("22","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning long 2's 
CAC$Question_30_Nurse_Practitioner<-gsub("2","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
#cleaning previous entered data 
CAC$Question_30_Nurse_Practitioner<-gsub("678","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
CAC$Question_30_Nurse_Practitioner<-gsub("7","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
CAC$Question_30_Nurse_Practitioner<-gsub("4","*",
                                    as.character(CAC$Question_30_Nurse_Practitioner))
####################################cleaning for Question_30_Other
#removing parenthesis 
CAC$Question_30_Other<-gsub("[()]","",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("222222","*",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("22222","*",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("2222","*",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("222","*",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("22","*",
                                                as.character(CAC$Question_30_Other))
#cleaning long 2's 
CAC$Question_30_Other<-gsub("2","*",
                                                as.character(CAC$Question_30_Other))
#cleaning previous entered data 
CAC$Question_30_Other<-gsub("678","*",
                                                as.character(CAC$Question_30_Other))
CAC$Question_30_Other<-gsub("7","*",
                                                as.character(CAC$Question_30_Other))
CAC$Question_30_Other<-gsub("4","*",
                                                as.character(CAC$Question_30_Other))
####################################cleaning for Question_30_Physician
#removing parenthesis 
CAC$Question_30_Physician<-gsub("[()]","",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("222222","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("22222","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("2222","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("222","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("22","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning long 2's 
CAC$Question_30_Physician<-gsub("2","*",
                                     as.character(CAC$Question_30_Physician))
#cleaning previous entered data 
CAC$Question_30_Physician<-gsub("678","*",
                                     as.character(CAC$Question_30_Physician))
CAC$Question_30_Physician<-gsub("7","*",
                                     as.character(CAC$Question_30_Physician))
CAC$Question_30_Physician<-gsub("4","*",
                                     as.character(CAC$Question_30_Physician))
CAC$Question_30_Physician<-gsub("11","1",
                                     as.character(CAC$Question_30_Physician))
####################################cleaning for Question_30_Registered_Nurse
#removing parenthesis 
CAC$Question_30_Registered_Nurse<-gsub("[()]","",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("222222","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("22222","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("2222","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("222","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("22","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning long 2's 
CAC$Question_30_Registered_Nurse<-gsub("2","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
#cleaning previous entered data 
CAC$Question_30_Registered_Nurse<-gsub("678","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
CAC$Question_30_Registered_Nurse<-gsub("7","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
CAC$Question_30_Registered_Nurse<-gsub("4","*",
                                            as.character(CAC$Question_30_Registered_Nurse))
CAC$Question_30_Registered_Nurse<-gsub("11","1",
                                            as.character(CAC$Question_30_Registered_Nurse))
