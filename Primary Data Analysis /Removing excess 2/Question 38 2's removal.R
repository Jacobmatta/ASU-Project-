#changing missing values of conditions to "*"
CAC <- CAC %>% mutate(Question_38_Barbershop= ifelse(is.na(Question_38_Barbershop), "*", Question_38_Barbershop))
CAC <- CAC %>% mutate(Question_38_Church_service= ifelse(is.na(Question_38_Church_service), "*", Question_38_Church_service))
CAC <- CAC %>% mutate(Question_38_Community_Health_Advocate = ifelse(is.na(Question_38_Community_Health_Advocate), "*", Question_38_Community_Health_Advocate))
CAC <- CAC %>% mutate(Question_38_Community_members = ifelse(is.na(Question_38_Community_members), "*", Question_38_Community_members))
CAC <- CAC %>% mutate(Question_38_Handout_flier = ifelse(is.na(Question_38_Handout_flier), "*", Question_38_Handout_flier))
CAC <- CAC %>% mutate(Question_38_Others = ifelse(is.na(Question_38_Others), "*", Question_38_Others))
CAC <- CAC %>% mutate(Question_38_Social_media = ifelse(is.na(Question_38_Social_media), "*", Question_38_Social_media))
CAC <- CAC %>% mutate(Question_38_Standard_media = ifelse(is.na(Question_38_Standard_media), "*", Question_38_Standard_media))

####################################cleaning for Question_38_Barbershop
#removing parenthesis 
CAC$Question_38_Barbershop<-gsub("[()]","",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("222222","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("22222","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("2222","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("222","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("22","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning long 2's 
CAC$Question_38_Barbershop<-gsub("2","*",
                                                as.character(CAC$Question_38_Barbershop))
#cleaning previous entered data 
CAC$Question_38_Barbershop<-gsub("678","*",
                                                as.character(CAC$Question_38_Barbershop))
CAC$Question_38_Barbershop<-gsub("7","*",
                                                as.character(CAC$Question_38_Barbershop))
CAC$Question_38_Barbershop<-gsub("4","*",
                                                as.character(CAC$Question_38_Barbershop))
####################################cleaning for Question_38_Church_service
#removing parenthesis 
CAC$Question_38_Church_service<-gsub("[()]","",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("222222","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("22222","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("2222","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("222","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("22","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning long 2's 
CAC$Question_38_Church_service<-gsub("2","*",
                                       as.character(CAC$Question_38_Church_service))
#cleaning previous entered data 
CAC$Question_38_Church_service<-gsub("678","*",
                                       as.character(CAC$Question_38_Church_service))
CAC$Question_38_Church_service<-gsub("7","*",
                                       as.character(CAC$Question_38_Church_service))
CAC$Question_38_Church_service<-gsub("4","*",
                                       as.character(CAC$Question_38_Church_service))

####################################cleaning for Question_38_Community_Health_Advocate
#removing parenthesis 
CAC$Question_38_Community_Health_Advocate<-gsub("[()]","",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("222222","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("22222","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("2222","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("222","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("22","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning long 2's 
CAC$Question_38_Community_Health_Advocate<-gsub("2","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
#cleaning previous entered data 
CAC$Question_38_Community_Health_Advocate<-gsub("678","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
CAC$Question_38_Community_Health_Advocate<-gsub("7","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
CAC$Question_38_Community_Health_Advocate<-gsub("4","*",
                                         as.character(CAC$Question_38_Community_Health_Advocate))
####################################cleaning for Question_38_Community_members
#removing parenthesis 
CAC$Question_38_Community_members<-gsub("[()]","",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("222222","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("22222","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("2222","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("222","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("22","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning long 2's 
CAC$Question_38_Community_members<-gsub("2","*",
                            as.character(CAC$Question_38_Community_members))
#cleaning previous entered data 
CAC$Question_38_Community_members<-gsub("678","*",
                            as.character(CAC$Question_38_Community_members))
CAC$Question_38_Community_members<-gsub("7","*",
                            as.character(CAC$Question_38_Community_members))
CAC$Question_38_Community_members<-gsub("4","*",
                            as.character(CAC$Question_38_Community_members))
####################################cleaning for Question_38_Handout_flier
#removing parenthesis 
CAC$Question_38_Handout_flier<-gsub("[()]","",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("222222","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("22222","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("2222","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("222","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("22","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning long 2's 
CAC$Question_38_Handout_flier<-gsub("2","*",
                                as.character(CAC$Question_38_Handout_flier))
#cleaning previous entered data 
CAC$Question_38_Handout_flier<-gsub("678","*",
                                as.character(CAC$Question_38_Handout_flier))
CAC$Question_38_Handout_flier<-gsub("7","*",
                                as.character(CAC$Question_38_Handout_flier))
CAC$Question_38_Handout_flier<-gsub("4","*",
                                as.character(CAC$Question_38_Handout_flier))
CAC$Question_38_Handout_flier<-gsub("11","1",
                                as.character(CAC$Question_38_Handout_flier))
####################################cleaning for Question_38_Others
#removing parenthesis 
CAC$Question_38_Others<-gsub("[()]","",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("222222","*",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("22222","*",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("2222","*",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("222","*",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("22","*",
                                       as.character(CAC$Question_38_Others))
#cleaning long 2's 
CAC$Question_38_Others<-gsub("2","*",
                                       as.character(CAC$Question_38_Others))
#cleaning previous entered data 
CAC$Question_38_Others<-gsub("678","*",
                                       as.character(CAC$Question_38_Others))
CAC$Question_38_Others<-gsub("7","*",
                                       as.character(CAC$Question_38_Others))
CAC$Question_38_Others<-gsub("4","*",
                                       as.character(CAC$Question_38_Others))
CAC$Question_38_Others<-gsub("11","1",
                                       as.character(CAC$Question_38_Others))
####################################cleaning for Question_38_Standard_media
#removing parenthesis 
CAC$Question_38_Standard_media<-gsub("[()]","",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("222222","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("22222","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("2222","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("222","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("22","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning long 2's 
CAC$Question_38_Standard_media<-gsub("2","*",
                                as.character(CAC$Question_38_Standard_media))
#cleaning previous entered data 
CAC$Question_38_Standard_media<-gsub("678","*",
                                as.character(CAC$Question_38_Standard_media))
CAC$Question_38_Standard_media<-gsub("7","*",
                                as.character(CAC$Question_38_Standard_media))
CAC$Question_38_Standard_media<-gsub("4","*",
                                as.character(CAC$Question_38_Standard_media))
CAC$Question_38_Standard_media<-gsub("11","1",
                                as.character(CAC$Question_38_Standard_media))
####################################cleaning for Question_38_Social_media
#removing parenthesis 
CAC$Question_38_Social_media<-gsub("[()]","",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("222222","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("22222","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("2222","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("222","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("22","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning long 2's 
CAC$Question_38_Social_media<-gsub("2","*",
                                       as.character(CAC$Question_38_Social_media))
#cleaning previous entered data 
CAC$Question_38_Social_media<-gsub("678","*",
                                       as.character(CAC$Question_38_Social_media))
CAC$Question_38_Social_media<-gsub("7","*",
                                       as.character(CAC$Question_38_Social_media))
CAC$Question_38_Social_media<-gsub("4","*",
                                       as.character(CAC$Question_38_Social_media))
CAC$Question_38_Social_media<-gsub("11","1",
                                       as.character(CAC$Question_38_Social_media))
