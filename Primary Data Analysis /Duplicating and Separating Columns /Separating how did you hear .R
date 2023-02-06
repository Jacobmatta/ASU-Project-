#duplicating Q30 column for Handout flier, pamphlet, or brochure responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Handout_flier = Q30)

#duplicating Q30 column for Social media (TikTok, Instagram, Facebook and Twitter) responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Social_media = Q30)


#duplicating Q30 column for Standard media source (TV, Radio, Newspaper) responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Standard_media = Q30)


#duplicating Q30 column for A Community Health Advocate/ or any other community professional responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Community_Health_Advocate = Q30)


#duplicating Q30 column for Church_service responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Church_service  = Q30)

#duplicating Q30 column for At the local barbershop responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Barbershop  = Q30)

#duplicating Q30 column for From community members, friends, or family members responses
Rawdata <- Rawdata %>%         
  mutate(Q30_Community_members  = Q30)

#duplicating Q30 column for Others
Rawdata <- Rawdata %>%         
  mutate(Q30_Others  = Q30)

###################################################################Handout flier, pamphlet, or brochure responses
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Handout_flier<-gsub("Handout flier, pamphlet, or brochure","1",
                                     as.character(Rawdata$Q30_Handout_flier))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Handout_flier<-gsub("Social media","2",
                                     as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                     as.character(Rawdata$Q30_Handout_flier))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Handout_flier<-gsub("Standard media source","2",as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Handout_flier))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Handout_flier<-gsub("A Community Health Advocate","2",
                                     as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("or any other community professional","2",
                                     as.character(Rawdata$Q30_Handout_flier))
#removing Church service values
Rawdata$Q30_Handout_flier<-gsub("Church service","2",
                                     as.character(Rawdata$Q30_Handout_flier))

#removing At the local barbershop values
Rawdata$Q30_Handout_flier<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Handout_flier))

#removing From community members, friends, or family members values
Rawdata$Q30_Handout_flier<-gsub("From community members","2", as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("friends","2", as.character(Rawdata$Q30_Handout_flier))
Rawdata$Q30_Handout_flier<-gsub("or family members","2", as.character(Rawdata$Q30_Handout_flier))

#removing Others values
Rawdata$Q30_Handout_flier<-gsub("Others","2", as.character(Rawdata$Q30_Handout_flier))


#Rememving commas 
Rawdata$Q30_Handout_flier<-
  gsub(",","",as.character(Rawdata$Q30_Handout_flier))

#removing spaces
Rawdata$Q30_Handout_flier<-
  gsub(" ","",as.character(Rawdata$Q30_Handout_flier))
###################################################################Social_media
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Social_media<-gsub("Handout flier, pamphlet, or brochure","2",
                                    as.character(Rawdata$Q30_Social_media))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Social_media<-gsub("Social media","1",
                                    as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("TikTok, Instagram, Facebook and Twitter","1",
                                    as.character(Rawdata$Q30_Social_media))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Social_media<-gsub("Standard media source","2",as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Social_media))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Social_media<-gsub("A Community Health Advocate","2",
                                    as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("or any other community professional","2",
                                    as.character(Rawdata$Q30_Social_media))
#removing Church service values
Rawdata$Q30_Social_media<-gsub("Church service","2",
                                    as.character(Rawdata$Q30_Social_media))

#removing At the local barbershop values
Rawdata$Q30_Social_media<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Social_media))

#removing From community members, friends, or family members values
Rawdata$Q30_Social_media<-gsub("From community members","2", as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("friends","2", as.character(Rawdata$Q30_Social_media))
Rawdata$Q30_Social_media<-gsub("or family members","2", as.character(Rawdata$Q30_Social_media))

#removing Others values
Rawdata$Q30_Social_media<-gsub("Others","2", as.character(Rawdata$Q30_Social_media))


#Rememving commas 
Rawdata$Q30_Social_media<-
  gsub(",","",as.character(Rawdata$Q30_Social_media))

#removing spaces
Rawdata$Q30_Social_media<-
  gsub(" ","",as.character(Rawdata$Q30_Social_media))
###################################################################Standard_media
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Standard_media<-gsub("Handout flier, pamphlet, or brochure","2",
                                      as.character(Rawdata$Q30_Standard_media))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Standard_media<-gsub("Social media","2",
                                      as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                      as.character(Rawdata$Q30_Standard_media))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Standard_media<-gsub("Standard media source","1",as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("TV, Radio, Newspaper","1",as.character(Rawdata$Q30_Standard_media))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Standard_media<-gsub("A Community Health Advocate","2",
                                      as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("or any other community professional","2",
                                      as.character(Rawdata$Q30_Standard_media))
#removing Church service values
Rawdata$Q30_Standard_media<-gsub("Church service","2",
                                      as.character(Rawdata$Q30_Standard_media))

#removing At the local barbershop values
Rawdata$Q30_Standard_media<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Standard_media))

#removing From community members, friends, or family members values
Rawdata$Q30_Standard_media<-gsub("From community members","2", as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("friends","2", as.character(Rawdata$Q30_Standard_media))
Rawdata$Q30_Standard_media<-gsub("or family members","2", as.character(Rawdata$Q30_Standard_media))

#removing Others values
Rawdata$Q30_Standard_media<-gsub("Others","2", as.character(Rawdata$Q30_Standard_media))


#Rememving commas 
Rawdata$Q30_Standard_media<-
  gsub(",","",as.character(Rawdata$Q30_Standard_media))

#removing spaces
Rawdata$Q30_Standard_media<-
  gsub(" ","",as.character(Rawdata$Q30_Standard_media))
###################################################################Community_Health_Advocate
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Community_Health_Advocate<-gsub("Handout flier, pamphlet, or brochure","2",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Community_Health_Advocate<-gsub("Social media","2",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Community_Health_Advocate<-gsub("Standard media source","2",as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Community_Health_Advocate))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Community_Health_Advocate<-gsub("A Community Health Advocate","1",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("or any other community professional","1",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))
#removing Church service values
Rawdata$Q30_Community_Health_Advocate<-gsub("Church service","2",
                                                 as.character(Rawdata$Q30_Community_Health_Advocate))

#removing At the local barbershop values
Rawdata$Q30_Community_Health_Advocate<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Community_Health_Advocate))

#removing From community members, friends, or family members values
Rawdata$Q30_Community_Health_Advocate<-gsub("From community members","2", as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("friends","2", as.character(Rawdata$Q30_Community_Health_Advocate))
Rawdata$Q30_Community_Health_Advocate<-gsub("or family members","2", as.character(Rawdata$Q30_Community_Health_Advocate))

#removing Others values
Rawdata$Q30_Community_Health_Advocate<-gsub("Others","2", as.character(Rawdata$Q30_Community_Health_Advocate))


#Rememving commas 
Rawdata$Q30_Community_Health_Advocate<-
  gsub(",","",as.character(Rawdata$Q30_Community_Health_Advocate))

#removing spaces
Rawdata$Q30_Community_Health_Advocate<-
  gsub(" ","",as.character(Rawdata$Q30_Community_Health_Advocate))
###################################################################Church_service
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Church_service<-gsub("Handout flier, pamphlet, or brochure","2",
                                      as.character(Rawdata$Q30_Church_service))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Church_service<-gsub("Social media","2",
                                      as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                      as.character(Rawdata$Q30_Church_service))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Church_service<-gsub("Standard media source","2",as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Church_service))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Church_service<-gsub("A Community Health Advocate","2",
                                      as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("or any other community professional","2",
                                      as.character(Rawdata$Q30_Church_service))
#removing Church service values
Rawdata$Q30_Church_service<-gsub("Church service","1",
                                      as.character(Rawdata$Q30_Church_service))

#removing At the local barbershop values
Rawdata$Q30_Church_service<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Church_service))

#removing From community members, friends, or family members values
Rawdata$Q30_Church_service<-gsub("From community members","2", as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("friends","2", as.character(Rawdata$Q30_Church_service))
Rawdata$Q30_Church_service<-gsub("or family members","2", as.character(Rawdata$Q30_Church_service))

#removing Others values
Rawdata$Q30_Church_service<-gsub("Others","2", as.character(Rawdata$Q30_Church_service))


#Rememving commas 
Rawdata$Q30_Church_service<-
  gsub(",","",as.character(Rawdata$Q30_Church_service))

#removing spaces
Rawdata$Q30_Church_service<-
  gsub(" ","",as.character(Rawdata$Q30_Church_service))
###################################################################Barbershop
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Barbershop<-gsub("Handout flier, pamphlet, or brochure","2",
                                  as.character(Rawdata$Q30_Barbershop))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Barbershop<-gsub("Social media","2",
                                  as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                  as.character(Rawdata$Q30_Barbershop))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Barbershop<-gsub("Standard media source","2",as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Barbershop))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Barbershop<-gsub("A Community Health Advocate","2",
                                  as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("or any other community professional","2",
                                  as.character(Rawdata$Q30_Barbershop))
#removing Church service values
Rawdata$Q30_Barbershop<-gsub("Church service","2",
                                  as.character(Rawdata$Q30_Barbershop))

#removing At the local barbershop values
Rawdata$Q30_Barbershop<-gsub("At the local barbershop","1", as.character(Rawdata$Q30_Barbershop))

#removing From community members, friends, or family members values
Rawdata$Q30_Barbershop<-gsub("From community members","2", as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("friends","2", as.character(Rawdata$Q30_Barbershop))
Rawdata$Q30_Barbershop<-gsub("or family members","2", as.character(Rawdata$Q30_Barbershop))

#removing Others values
Rawdata$Q30_Barbershop<-gsub("Others","2", as.character(Rawdata$Q30_Barbershop))


#Rememving commas 
Rawdata$Q30_Barbershop<-
  gsub(",","",as.character(Rawdata$Q30_Barbershop))

#removing spaces
Rawdata$Q30_Barbershop<-
  gsub(" ","",as.character(Rawdata$Q30_Barbershop))
###################################################################Community_members
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Community_members<-gsub("Handout flier, pamphlet, or brochure","2",
                                         as.character(Rawdata$Q30_Community_members))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Community_members<-gsub("Social media","2",
                                         as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                         as.character(Rawdata$Q30_Community_members))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Community_members<-gsub("Standard media source","2",as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Community_members))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Community_members<-gsub("A Community Health Advocate","2",
                                         as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("or any other community professional","2",
                                         as.character(Rawdata$Q30_Community_members))
#removing Church service values
Rawdata$Q30_Community_members<-gsub("Church service","2",
                                         as.character(Rawdata$Q30_Community_members))

#removing At the local barbershop values
Rawdata$Q30_Community_members<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Community_members))

#removing From community members, friends, or family members values
Rawdata$Q30_Community_members<-gsub("From community members","1", as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("friends","1", as.character(Rawdata$Q30_Community_members))
Rawdata$Q30_Community_members<-gsub("or family members","1", as.character(Rawdata$Q30_Community_members))

#removing Others values
Rawdata$Q30_Community_members<-gsub("Others","2", as.character(Rawdata$Q30_Community_members))


#Rememving commas 
Rawdata$Q30_Community_members<-
  gsub(",","",as.character(Rawdata$Q30_Community_members))

#removing spaces
Rawdata$Q30_Community_members<-
  gsub(" ","",as.character(Rawdata$Q30_Community_members))
###################################################################Others
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
Rawdata$Q30_Others<-gsub("Handout flier, pamphlet, or brochure","2",
                              as.character(Rawdata$Q30_Others))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
Rawdata$Q30_Others<-gsub("Social media","2",
                              as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                              as.character(Rawdata$Q30_Others))

#removing Standard media source (TV, Radio, Newspaper)
Rawdata$Q30_Others<-gsub("Standard media source","2",as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("TV, Radio, Newspaper","2",as.character(Rawdata$Q30_Others))


#removing A Community Health Advocate/ or any other community professional values
Rawdata$Q30_Others<-gsub("A Community Health Advocate","2",
                              as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("or any other community professional","2",
                              as.character(Rawdata$Q30_Others))
#removing Church service values
Rawdata$Q30_Others<-gsub("Church service","2",
                              as.character(Rawdata$Q30_Others))

#removing At the local barbershop values
Rawdata$Q30_Others<-gsub("At the local barbershop","2", as.character(Rawdata$Q30_Others))

#removing From community members, friends, or family members values
Rawdata$Q30_Others<-gsub("From community members","2", as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("friends","2", as.character(Rawdata$Q30_Others))
Rawdata$Q30_Others<-gsub("or family members","2", as.character(Rawdata$Q30_Others))

#removing Others values
Rawdata$Q30_Others<-gsub("Others","1", as.character(Rawdata$Q30_Others))


#Rememving commas 
Rawdata$Q30_Others<-
  gsub(",","",as.character(Rawdata$Q30_Others))

#removing spaces
Rawdata$Q30_Others<-
  gsub(" ","",as.character(Rawdata$Q30_Others))
