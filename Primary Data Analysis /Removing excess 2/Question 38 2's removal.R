#changing missing values of conditions to "*"
Rawdata <- Rawdata %>% mutate(Q30_Barbershop= ifelse(is.na(Q30_Barbershop), "*", Q30_Barbershop))
Rawdata <- Rawdata %>% mutate(Q30_Church_service= ifelse(is.na(Q30_Church_service), "*", Q30_Church_service))
Rawdata <- Rawdata %>% mutate(Q30_Community_Health_Advocate = ifelse(is.na(Q30_Community_Health_Advocate), "*", Q30_Community_Health_Advocate))
Rawdata <- Rawdata %>% mutate(Q30_Community_members = ifelse(is.na(Q30_Community_members), "*", Q30_Community_members))
Rawdata <- Rawdata %>% mutate(Q30_Handout_flier = ifelse(is.na(Q30_Handout_flier), "*", Q30_Handout_flier))
Rawdata <- Rawdata %>% mutate(Q30_Others = ifelse(is.na(Q30_Others), "*", Q30_Others))
Rawdata <- Rawdata %>% mutate(Q30_Social_media = ifelse(is.na(Q30_Social_media), "*", Q30_Social_media))
Rawdata <- Rawdata %>% mutate(Q30_Standard_media = ifelse(is.na(Q30_Standard_media), "*", Q30_Standard_media))

####################################cleaning for Q30_Barbershop
#removing parenthesis 
Rawdata$Q30_Barbershop<-gsub("[()]","",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("222222","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("22222","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("2222","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("222","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("22","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning long 2's 
Rawdata$Q30_Barbershop<-gsub("2","*",
                                                as.character(Rawdata$Q30_Barbershop))
#cleaning previous entered data 
Rawdata$Q30_Barbershop<-gsub("678","*",
                                                as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("7","*",
                                                as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("4","*",
                                                as.character(Rawdata$Q30_Barbershop))
####################################cleaning for Q30_Church_service
#removing parenthesis 
Rawdata$Q30_Church_service<-gsub("[()]","",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("222222","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("22222","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("2222","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("222","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("22","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning long 2's 
Rawdata$Q30_Church_service<-gsub("2","*",
                                       as.character(Rawdata$Q30_Church_service))
#cleaning previous entered data 
Rawdata$Q30_Church_service<-gsub("678","*",
                                       as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("7","*",
                                       as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("4","*",
                                       as.character(Rawdata$Q30_Church_service))

####################################cleaning for Q30_Community_Health_Advocate
#removing parenthesis 
Rawdata$Q30_Community_Health_Advocate<-gsub("[()]","",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("222222","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("22222","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("2222","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("222","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("22","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning long 2's 
Rawdata$Q30_Community_Health_Advocate<-gsub("2","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
#cleaning previous entered data 
Rawdata$Q30_Community_Health_Advocate<-gsub("678","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("7","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("4","*",
                                         as.character(Rawdata$Q30_Community_Health_Advocate))
####################################cleaning for Q30_Community_members
#removing parenthesis 
Rawdata$Q30_Community_members<-gsub("[()]","",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("222222","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("22222","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("2222","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("222","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("22","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning long 2's 
Rawdata$Q30_Community_members<-gsub("2","*",
                            as.character(Rawdata$Q30_Community_members))
#cleaning previous entered data 
Rawdata$Q30_Community_members<-gsub("678","*",
                            as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("7","*",
                            as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("4","*",
                            as.character(Rawdata$Q30_Community_members))
####################################cleaning for Q30_Handout_flier
#removing parenthesis 
Rawdata$Q30_Handout_flier<-gsub("[()]","",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("222222","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("22222","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("2222","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("222","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("22","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning long 2's 
Rawdata$Q30_Handout_flier<-gsub("2","*",
                                as.character(Rawdata$Q30_Handout_flier))
#cleaning previous entered data 
Rawdata$Q30_Handout_flier<-gsub("678","*",
                                as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("7","*",
                                as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("4","*",
                                as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("11","1",
                                as.character(Rawdata$Q30_Handout_flier))
####################################cleaning for Q30_Others
#removing parenthesis 
Rawdata$Q30_Others<-gsub("[()]","",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("222222","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("22222","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("2222","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("222","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("22","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning long 2's 
Rawdata$Q30_Others<-gsub("2","*",
                                       as.character(Rawdata$Q30_Others))
#cleaning previous entered data 
Rawdata$Q30_Others<-gsub("678","*",
                                       as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("7","*",
                                       as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("4","*",
                                       as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("11","1",
                                       as.character(Rawdata$Q30_Others))
####################################cleaning for Q30_Standard_media
#removing parenthesis 
Rawdata$Q30_Standard_media<-gsub("[()]","",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("222222","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("22222","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("2222","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("222","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("22","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning long 2's 
Rawdata$Q30_Standard_media<-gsub("2","*",
                                as.character(Rawdata$Q30_Standard_media))
#cleaning previous entered data 
Rawdata$Q30_Standard_media<-gsub("678","*",
                                as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("7","*",
                                as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("4","*",
                                as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("11","1",
                                as.character(Rawdata$Q30_Standard_media))
####################################cleaning for Q30_Social_media
#removing parenthesis 
Rawdata$Q30_Social_media<-gsub("[()]","",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("222222","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("22222","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("2222","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("222","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("22","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning long 2's 
Rawdata$Q30_Social_media<-gsub("2","*",
                                       as.character(Rawdata$Q30_Social_media))
#cleaning previous entered data 
Rawdata$Q30_Social_media<-gsub("678","*",
                                       as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("7","*",
                                       as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("4","*",
                                       as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("11","1",
                                       as.character(Rawdata$Q30_Social_media))
