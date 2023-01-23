#duplicating Question_38 column for Handout flier, pamphlet, or brochure responses
ACSD <- ACSD %>%         
  mutate(Question_38_Handout_flier = Question_38)

#duplicating Question_38 column for Social media (TikTok, Instagram, Facebook and Twitter) responses
ACSD <- ACSD %>%         
  mutate(Question_38_Social_media = Question_38)


#duplicating Question_38 column for Standard media source (TV, Radio, Newspaper) responses
ACSD <- ACSD %>%         
  mutate(Question_38_Standard_media = Question_38)


#duplicating Question_38 column for A Community Health Advocate/ or any other community professional responses
ACSD <- ACSD %>%         
  mutate(Question_38_Community_Health_Advocate = Question_38)


#duplicating Question_38 column for Church_service responses
ACSD <- ACSD %>%         
  mutate(Question_38_Church_service  = Question_38)

#duplicating Question_38 column for At the local barbershop responses
ACSD <- ACSD %>%         
  mutate(Question_38_Barbershop  = Question_38)

#duplicating Question_38 column for From community members, friends, or family members responses
ACSD <- ACSD %>%         
  mutate(Question_38_Community_members  = Question_38)

#duplicating Question_38 column for Others
ACSD <- ACSD %>%         
  mutate(Question_38_Others  = Question_38)

###################################################################Handout flier, pamphlet, or brochure responses
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Handout_flier<-gsub("Handout flier, pamphlet, or brochure","1",
                                     as.character(ACSD$Question_38_Handout_flier))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Handout_flier<-gsub("Social media","2",
                                     as.character(ACSD$Question_38_Handout_flier))
ACSD$Question_38_Handout_flier<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                     as.character(ACSD$Question_38_Handout_flier))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Handout_flier<-gsub("Standard media source","2",as.character(ACSD$Question_38_Handout_flier))
ACSD$Question_38_Handout_flier<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Handout_flier))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Handout_flier<-gsub("A Community Health Advocate","2",
                                     as.character(ACSD$Question_38_Handout_flier))
ACSD$Question_38_Handout_flier<-gsub("or any other community professional","2",
                                     as.character(ACSD$Question_38_Handout_flier))
#removing Church service values
ACSD$Question_38_Handout_flier<-gsub("Church service","2",
                                     as.character(ACSD$Question_38_Handout_flier))

#removing At the local barbershop values
ACSD$Question_38_Handout_flier<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Handout_flier))

#removing From community members, friends, or family members values
ACSD$Question_38_Handout_flier<-gsub("From community members","2", as.character(ACSD$Question_38_Handout_flier))
ACSD$Question_38_Handout_flier<-gsub("friends","2", as.character(ACSD$Question_38_Handout_flier))
ACSD$Question_38_Handout_flier<-gsub("or family members","2", as.character(ACSD$Question_38_Handout_flier))

#removing Others values
ACSD$Question_38_Handout_flier<-gsub("Others","2", as.character(ACSD$Question_38_Handout_flier))


#Rememving commas 
ACSD$Question_38_Handout_flier<-
  gsub(",","",as.character(ACSD$Question_38_Handout_flier))

#removing spaces
ACSD$Question_38_Handout_flier<-
  gsub(" ","",as.character(ACSD$Question_38_Handout_flier))
###################################################################Social_media
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Social_media<-gsub("Handout flier, pamphlet, or brochure","2",
                                    as.character(ACSD$Question_38_Social_media))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Social_media<-gsub("Social media","1",
                                    as.character(ACSD$Question_38_Social_media))
ACSD$Question_38_Social_media<-gsub("TikTok, Instagram, Facebook and Twitter","1",
                                    as.character(ACSD$Question_38_Social_media))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Social_media<-gsub("Standard media source","2",as.character(ACSD$Question_38_Social_media))
ACSD$Question_38_Social_media<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Social_media))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Social_media<-gsub("A Community Health Advocate","2",
                                    as.character(ACSD$Question_38_Social_media))
ACSD$Question_38_Social_media<-gsub("or any other community professional","2",
                                    as.character(ACSD$Question_38_Social_media))
#removing Church service values
ACSD$Question_38_Social_media<-gsub("Church service","2",
                                    as.character(ACSD$Question_38_Social_media))

#removing At the local barbershop values
ACSD$Question_38_Social_media<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Social_media))

#removing From community members, friends, or family members values
ACSD$Question_38_Social_media<-gsub("From community members","2", as.character(ACSD$Question_38_Social_media))
ACSD$Question_38_Social_media<-gsub("friends","2", as.character(ACSD$Question_38_Social_media))
ACSD$Question_38_Social_media<-gsub("or family members","2", as.character(ACSD$Question_38_Social_media))

#removing Others values
ACSD$Question_38_Social_media<-gsub("Others","2", as.character(ACSD$Question_38_Social_media))


#Rememving commas 
ACSD$Question_38_Social_media<-
  gsub(",","",as.character(ACSD$Question_38_Social_media))

#removing spaces
ACSD$Question_38_Social_media<-
  gsub(" ","",as.character(ACSD$Question_38_Social_media))
###################################################################Standard_media
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Standard_media<-gsub("Handout flier, pamphlet, or brochure","2",
                                      as.character(ACSD$Question_38_Standard_media))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Standard_media<-gsub("Social media","2",
                                      as.character(ACSD$Question_38_Standard_media))
ACSD$Question_38_Standard_media<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                      as.character(ACSD$Question_38_Standard_media))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Standard_media<-gsub("Standard media source","1",as.character(ACSD$Question_38_Standard_media))
ACSD$Question_38_Standard_media<-gsub("TV, Radio, Newspaper","1",as.character(ACSD$Question_38_Standard_media))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Standard_media<-gsub("A Community Health Advocate","2",
                                      as.character(ACSD$Question_38_Standard_media))
ACSD$Question_38_Standard_media<-gsub("or any other community professional","2",
                                      as.character(ACSD$Question_38_Standard_media))
#removing Church service values
ACSD$Question_38_Standard_media<-gsub("Church service","2",
                                      as.character(ACSD$Question_38_Standard_media))

#removing At the local barbershop values
ACSD$Question_38_Standard_media<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Standard_media))

#removing From community members, friends, or family members values
ACSD$Question_38_Standard_media<-gsub("From community members","2", as.character(ACSD$Question_38_Standard_media))
ACSD$Question_38_Standard_media<-gsub("friends","2", as.character(ACSD$Question_38_Standard_media))
ACSD$Question_38_Standard_media<-gsub("or family members","2", as.character(ACSD$Question_38_Standard_media))

#removing Others values
ACSD$Question_38_Standard_media<-gsub("Others","2", as.character(ACSD$Question_38_Standard_media))


#Rememving commas 
ACSD$Question_38_Standard_media<-
  gsub(",","",as.character(ACSD$Question_38_Standard_media))

#removing spaces
ACSD$Question_38_Standard_media<-
  gsub(" ","",as.character(ACSD$Question_38_Standard_media))
###################################################################Community_Health_Advocate
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Community_Health_Advocate<-gsub("Handout flier, pamphlet, or brochure","2",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Community_Health_Advocate<-gsub("Social media","2",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))
ACSD$Question_38_Community_Health_Advocate<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Community_Health_Advocate<-gsub("Standard media source","2",as.character(ACSD$Question_38_Community_Health_Advocate))
ACSD$Question_38_Community_Health_Advocate<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Community_Health_Advocate))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Community_Health_Advocate<-gsub("A Community Health Advocate","1",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))
ACSD$Question_38_Community_Health_Advocate<-gsub("or any other community professional","1",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))
#removing Church service values
ACSD$Question_38_Community_Health_Advocate<-gsub("Church service","2",
                                                 as.character(ACSD$Question_38_Community_Health_Advocate))

#removing At the local barbershop values
ACSD$Question_38_Community_Health_Advocate<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Community_Health_Advocate))

#removing From community members, friends, or family members values
ACSD$Question_38_Community_Health_Advocate<-gsub("From community members","2", as.character(ACSD$Question_38_Community_Health_Advocate))
ACSD$Question_38_Community_Health_Advocate<-gsub("friends","2", as.character(ACSD$Question_38_Community_Health_Advocate))
ACSD$Question_38_Community_Health_Advocate<-gsub("or family members","2", as.character(ACSD$Question_38_Community_Health_Advocate))

#removing Others values
ACSD$Question_38_Community_Health_Advocate<-gsub("Others","2", as.character(ACSD$Question_38_Community_Health_Advocate))


#Rememving commas 
ACSD$Question_38_Community_Health_Advocate<-
  gsub(",","",as.character(ACSD$Question_38_Community_Health_Advocate))

#removing spaces
ACSD$Question_38_Community_Health_Advocate<-
  gsub(" ","",as.character(ACSD$Question_38_Community_Health_Advocate))
###################################################################Church_service
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Church_service<-gsub("Handout flier, pamphlet, or brochure","2",
                                      as.character(ACSD$Question_38_Church_service))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Church_service<-gsub("Social media","2",
                                      as.character(ACSD$Question_38_Church_service))
ACSD$Question_38_Church_service<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                      as.character(ACSD$Question_38_Church_service))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Church_service<-gsub("Standard media source","2",as.character(ACSD$Question_38_Church_service))
ACSD$Question_38_Church_service<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Church_service))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Church_service<-gsub("A Community Health Advocate","2",
                                      as.character(ACSD$Question_38_Church_service))
ACSD$Question_38_Church_service<-gsub("or any other community professional","2",
                                      as.character(ACSD$Question_38_Church_service))
#removing Church service values
ACSD$Question_38_Church_service<-gsub("Church service","1",
                                      as.character(ACSD$Question_38_Church_service))

#removing At the local barbershop values
ACSD$Question_38_Church_service<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Church_service))

#removing From community members, friends, or family members values
ACSD$Question_38_Church_service<-gsub("From community members","2", as.character(ACSD$Question_38_Church_service))
ACSD$Question_38_Church_service<-gsub("friends","2", as.character(ACSD$Question_38_Church_service))
ACSD$Question_38_Church_service<-gsub("or family members","2", as.character(ACSD$Question_38_Church_service))

#removing Others values
ACSD$Question_38_Church_service<-gsub("Others","2", as.character(ACSD$Question_38_Church_service))


#Rememving commas 
ACSD$Question_38_Church_service<-
  gsub(",","",as.character(ACSD$Question_38_Church_service))

#removing spaces
ACSD$Question_38_Church_service<-
  gsub(" ","",as.character(ACSD$Question_38_Church_service))
###################################################################Barbershop
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Barbershop<-gsub("Handout flier, pamphlet, or brochure","2",
                                  as.character(ACSD$Question_38_Barbershop))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Barbershop<-gsub("Social media","2",
                                  as.character(ACSD$Question_38_Barbershop))
ACSD$Question_38_Barbershop<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                  as.character(ACSD$Question_38_Barbershop))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Barbershop<-gsub("Standard media source","2",as.character(ACSD$Question_38_Barbershop))
ACSD$Question_38_Barbershop<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Barbershop))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Barbershop<-gsub("A Community Health Advocate","2",
                                  as.character(ACSD$Question_38_Barbershop))
ACSD$Question_38_Barbershop<-gsub("or any other community professional","2",
                                  as.character(ACSD$Question_38_Barbershop))
#removing Church service values
ACSD$Question_38_Barbershop<-gsub("Church service","2",
                                  as.character(ACSD$Question_38_Barbershop))

#removing At the local barbershop values
ACSD$Question_38_Barbershop<-gsub("At the local barbershop","1", as.character(ACSD$Question_38_Barbershop))

#removing From community members, friends, or family members values
ACSD$Question_38_Barbershop<-gsub("From community members","2", as.character(ACSD$Question_38_Barbershop))
ACSD$Question_38_Barbershop<-gsub("friends","2", as.character(ACSD$Question_38_Barbershop))
ACSD$Question_38_Barbershop<-gsub("or family members","2", as.character(ACSD$Question_38_Barbershop))

#removing Others values
ACSD$Question_38_Barbershop<-gsub("Others","2", as.character(ACSD$Question_38_Barbershop))


#Rememving commas 
ACSD$Question_38_Barbershop<-
  gsub(",","",as.character(ACSD$Question_38_Barbershop))

#removing spaces
ACSD$Question_38_Barbershop<-
  gsub(" ","",as.character(ACSD$Question_38_Barbershop))
###################################################################Community_members
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Community_members<-gsub("Handout flier, pamphlet, or brochure","2",
                                         as.character(ACSD$Question_38_Community_members))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Community_members<-gsub("Social media","2",
                                         as.character(ACSD$Question_38_Community_members))
ACSD$Question_38_Community_members<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                                         as.character(ACSD$Question_38_Community_members))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Community_members<-gsub("Standard media source","2",as.character(ACSD$Question_38_Community_members))
ACSD$Question_38_Community_members<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Community_members))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Community_members<-gsub("A Community Health Advocate","2",
                                         as.character(ACSD$Question_38_Community_members))
ACSD$Question_38_Community_members<-gsub("or any other community professional","2",
                                         as.character(ACSD$Question_38_Community_members))
#removing Church service values
ACSD$Question_38_Community_members<-gsub("Church service","2",
                                         as.character(ACSD$Question_38_Community_members))

#removing At the local barbershop values
ACSD$Question_38_Community_members<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Community_members))

#removing From community members, friends, or family members values
ACSD$Question_38_Community_members<-gsub("From community members","1", as.character(ACSD$Question_38_Community_members))
ACSD$Question_38_Community_members<-gsub("friends","1", as.character(ACSD$Question_38_Community_members))
ACSD$Question_38_Community_members<-gsub("or family members","1", as.character(ACSD$Question_38_Community_members))

#removing Others values
ACSD$Question_38_Community_members<-gsub("Others","2", as.character(ACSD$Question_38_Community_members))


#Rememving commas 
ACSD$Question_38_Community_members<-
  gsub(",","",as.character(ACSD$Question_38_Community_members))

#removing spaces
ACSD$Question_38_Community_members<-
  gsub(" ","",as.character(ACSD$Question_38_Community_members))
###################################################################Others
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_38_Others<-gsub("Handout flier, pamphlet, or brochure","2",
                              as.character(ACSD$Question_38_Others))

#removing Social media (TikTok, Instagram, Facebook and Twitter) values
ACSD$Question_38_Others<-gsub("Social media","2",
                              as.character(ACSD$Question_38_Others))
ACSD$Question_38_Others<-gsub("TikTok, Instagram, Facebook and Twitter","2",
                              as.character(ACSD$Question_38_Others))

#removing Standard media source (TV, Radio, Newspaper)
ACSD$Question_38_Others<-gsub("Standard media source","2",as.character(ACSD$Question_38_Others))
ACSD$Question_38_Others<-gsub("TV, Radio, Newspaper","2",as.character(ACSD$Question_38_Others))


#removing A Community Health Advocate/ or any other community professional values
ACSD$Question_38_Others<-gsub("A Community Health Advocate","2",
                              as.character(ACSD$Question_38_Others))
ACSD$Question_38_Others<-gsub("or any other community professional","2",
                              as.character(ACSD$Question_38_Others))
#removing Church service values
ACSD$Question_38_Others<-gsub("Church service","2",
                              as.character(ACSD$Question_38_Others))

#removing At the local barbershop values
ACSD$Question_38_Others<-gsub("At the local barbershop","2", as.character(ACSD$Question_38_Others))

#removing From community members, friends, or family members values
ACSD$Question_38_Others<-gsub("From community members","2", as.character(ACSD$Question_38_Others))
ACSD$Question_38_Others<-gsub("friends","2", as.character(ACSD$Question_38_Others))
ACSD$Question_38_Others<-gsub("or family members","2", as.character(ACSD$Question_38_Others))

#removing Others values
ACSD$Question_38_Others<-gsub("Others","1", as.character(ACSD$Question_38_Others))


#Rememving commas 
ACSD$Question_38_Others<-
  gsub(",","",as.character(ACSD$Question_38_Others))

#removing spaces
ACSD$Question_38_Others<-
  gsub(" ","",as.character(ACSD$Question_38_Others))
