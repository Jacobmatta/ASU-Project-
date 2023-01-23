#duplicating Question_20 column for Basic_Health responses
ACSD <- ACSD %>%         
  mutate(Question_20_Basic_Health = Question_20)

#duplicating Question_20 column for COVID_19_Vacc responses
ACSD <- ACSD %>%         
  mutate(Question_20_COVID_19_Vacc = Question_20)


#duplicating Question_20 column for Improving_ventilation responses
ACSD <- ACSD %>%         
  mutate(Question_20_Improving_ventilation = Question_20)


#duplicating Question_20 column for Getting_tested responses
ACSD <- ACSD %>%         
  mutate(Question_20_Getting_tested = Question_20)


#duplicating Question_20 column for Following_recommendations responses
ACSD <- ACSD %>%         
  mutate(Question_20_Following_recommendations  = Question_20)

#duplicating Question_20 column for Staying_home responses
ACSD <- ACSD %>%         
  mutate(Question_20_Staying_home  = Question_20)

#duplicating Question_20 column for Seeking responses
ACSD <- ACSD %>%         
  mutate(Question_20_Seeking = Question_20)

#duplicating Question_20 column for Avoiding responses
ACSD <- ACSD %>%         
  mutate(Question_20_Avoiding = Question_20)
###################################################################Following recommendations for what to do if you have been exposed values
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Following_recommendations<-gsub("Basic health and hygiene practices","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

ACSD$Question_20_Following_recommendations<-gsub("mask wearing, handwashing, etc.","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Following_recommendations<-gsub("Staying up to date with COVID-19 vaccines","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Improving ventilation
ACSD$Question_20_Following_recommendations<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Following_recommendations))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Following_recommendations<-gsub("Getting tested for COVID-19 if needed","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Following_recommendations<-gsub("Following recommendations for what to do if you have been exposed","1",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Following_recommendations<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Following_recommendations<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Following_recommendations<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                                 as.character(ACSD$Question_20_Following_recommendations))

#Rememving commas 
ACSD$Question_20_Following_recommendations<-
  gsub(",","",as.character(ACSD$Question_20_Following_recommendations))

#removing spaces
ACSD$Question_20_Following_recommendations<-
  gsub(" ","",as.character(ACSD$Question_20_Following_recommendations))

#duplicating Question_20 column for Seeking_treatment
ACSD <- ACSD %>%         
  mutate(Question_20_Seeking_treatment = Question_20)


#duplicating Question_20 column for Avoiding_contact responses
ACSD <- ACSD %>%         
  mutate(Question_20_Avoiding_contact = Question_20)
###################################################################Basic 
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Basic_Health<-gsub("Basic health and hygiene practices","1",
                                    as.character(ACSD$Question_20_Basic_Health))

ACSD$Question_20_Basic_Health<-gsub("mask wearing, handwashing, etc.","1",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Basic_Health<-gsub("Staying up to date with COVID-19 vaccines","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Improving ventilation
ACSD$Question_20_Basic_Health<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Basic_Health))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Basic_Health<-gsub("Getting tested for COVID-19 if needed","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Basic_Health<-gsub("Following recommendations for what to do if you have been exposed","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Basic_Health<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Basic_Health<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Basic_Health<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                    as.character(ACSD$Question_20_Basic_Health))

#Rememving commas 
ACSD$Question_20_Basic_Health<-
  gsub(",","",as.character(ACSD$Question_20_Basic_Health))

#removing spaces
ACSD$Question_20_Basic_Health<-
  gsub(" ","",as.character(ACSD$Question_20_Basic_Health))

###################################################################taying up to date with COVID-19 vaccines 
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_COVID_19_Vacc<-gsub("Basic health and hygiene practices","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

ACSD$Question_20_COVID_19_Vacc<-gsub("mask wearing, handwashing, etc.","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_COVID_19_Vacc<-gsub("Staying up to date with COVID-19 vaccines","1",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Improving ventilation
ACSD$Question_20_COVID_19_Vacc<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_COVID_19_Vacc<-gsub("Getting tested for COVID-19 if needed","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_COVID_19_Vacc<-gsub("Following recommendations for what to do if you have been exposed","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_COVID_19_Vacc<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_COVID_19_Vacc<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_COVID_19_Vacc<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                     as.character(ACSD$Question_20_COVID_19_Vacc))

#Rememving commas 
ACSD$Question_20_COVID_19_Vacc<-
  gsub(",","",as.character(ACSD$Question_20_COVID_19_Vacc))

#removing spaces
ACSD$Question_20_COVID_19_Vacc<-
  gsub(" ","",as.character(ACSD$Question_20_COVID_19_Vacc))
###################################################################Improving ventilation
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Improving_ventilation<-gsub("Basic health and hygiene practices","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

ACSD$Question_20_Improving_ventilation<-gsub("mask wearing, handwashing, etc.","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Improving_ventilation<-gsub("Staying up to date with COVID-19 vaccines","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Improving ventilation
ACSD$Question_20_Improving_ventilation<-gsub("Improving ventilation","1",as.character(ACSD$Question_20_Improving_ventilation))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Improving_ventilation<-gsub("Getting tested for COVID-19 if needed","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Improving_ventilation<-gsub("Following recommendations for what to do if you have been exposed","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Improving_ventilation<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Improving_ventilation<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Improving_ventilation<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                             as.character(ACSD$Question_20_Improving_ventilation))

#Rememving commas 
ACSD$Question_20_Improving_ventilation<-
  gsub(",","",as.character(ACSD$Question_20_Improving_ventilation))

#removing spaces
ACSD$Question_20_Improving_ventilation<-
  gsub(" ","",as.character(ACSD$Question_20_Improving_ventilation))
###################################################################Getting tested for COVID-19 if needed
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Getting_tested<-gsub("Basic health and hygiene practices","2",
                                      as.character(ACSD$Question_20_Getting_tested))

ACSD$Question_20_Getting_tested<-gsub("mask wearing, handwashing, etc.","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Getting_tested<-gsub("Staying up to date with COVID-19 vaccines","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Improving ventilation
ACSD$Question_20_Getting_tested<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Getting_tested))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Getting_tested<-gsub("Getting tested for COVID-19 if needed","1",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Getting_tested<-gsub("Following recommendations for what to do if you have been exposed","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Getting_tested<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Getting_tested<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Getting_tested<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                      as.character(ACSD$Question_20_Getting_tested))

#Rememving commas 
ACSD$Question_20_Getting_tested<-
  gsub(",","",as.character(ACSD$Question_20_Getting_tested))

#removing spaces
ACSD$Question_20_Getting_tested<-
  gsub(" ","",as.character(ACSD$Question_20_Getting_tested))
###################################################################Staying at home if you have suspected or confirmed COVID-19
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Staying_home<-gsub("Basic health and hygiene practices","2",
                                    as.character(ACSD$Question_20_Staying_home))

ACSD$Question_20_Staying_home<-gsub("mask wearing, handwashing, etc.","2",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Staying_home<-gsub("Staying up to date with COVID-19 vaccines","2",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Improving ventilation
ACSD$Question_20_Staying_home<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Staying_home))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Staying_home<-gsub("Getting tested for COVID-19 if needed","2",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Staying_home<-gsub("Following recommendations for what to do if you have been exposed","2",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Staying_home<-gsub("Staying at home if you have suspected or confirmed COVID-19","1",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Staying_home<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                    as.character(ACSD$Question_20_Staying_home))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Staying_home<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                                    as.character(ACSD$Question_20_Staying_home))

#Rememving commas 
ACSD$Question_20_Staying_home<-
  gsub(",","",as.character(ACSD$Question_20_Staying_home))

#removing spaces
ACSD$Question_20_Staying_home<-
  gsub(" ","",as.character(ACSD$Question_20_Staying_home))
###################################################################Seeking treatment if you have COVID-19 and are at a high risk of getting very sick
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Seeking<-gsub("Basic health and hygiene practices","2",
                               as.character(ACSD$Question_20_Seeking))

ACSD$Question_20_Seeking<-gsub("mask wearing, handwashing, etc.","2",
                               as.character(ACSD$Question_20_Seeking))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Seeking<-gsub("Staying up to date with COVID-19 vaccines","2",
                               as.character(ACSD$Question_20_Seeking))

#removing Improving ventilation
ACSD$Question_20_Seeking<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Seeking))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Seeking<-gsub("Getting tested for COVID-19 if needed","2",
                               as.character(ACSD$Question_20_Seeking))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Seeking<-gsub("Following recommendations for what to do if you have been exposed","2",
                               as.character(ACSD$Question_20_Seeking))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Seeking<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                               as.character(ACSD$Question_20_Seeking))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Seeking<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","1",
                               as.character(ACSD$Question_20_Seeking))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Seeking<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","2",
                               as.character(ACSD$Question_20_Seeking))

#Rememving commas 
ACSD$Question_20_Seeking<-
  gsub(",","",as.character(ACSD$Question_20_Seeking))

#removing spaces
ACSD$Question_20_Seeking<-
  gsub(" ","",as.character(ACSD$Question_20_Seeking))
###################################################################Avoiding
#removing Basic health and hygiene practices 
#(mask wearing, handwashing, etc.) values
ACSD$Question_20_Avoiding<-gsub("Basic health and hygiene practices","2",
                                as.character(ACSD$Question_20_Avoiding))

ACSD$Question_20_Avoiding<-gsub("mask wearing, handwashing, etc.","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Staying up to date with COVID-19 vaccines values
ACSD$Question_20_Avoiding<-gsub("Staying up to date with COVID-19 vaccines","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Improving ventilation
ACSD$Question_20_Avoiding<-gsub("Improving ventilation","2",as.character(ACSD$Question_20_Avoiding))

#removing Getting tested for COVID-19 if needed values
ACSD$Question_20_Avoiding<-gsub("Getting tested for COVID-19 if needed","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Following recommendations for what to do if you have been exposed values
ACSD$Question_20_Avoiding<-gsub("Following recommendations for what to do if you have been exposed","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Staying at home if you have suspected or confirmed COVID-19 values
ACSD$Question_20_Avoiding<-gsub("Staying at home if you have suspected or confirmed COVID-19","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Seeking treatment if you have COVID-19 and are at a high risk of getting very sick values
ACSD$Question_20_Avoiding<-gsub("Seeking treatment if you have COVID-19 and are at a high risk of getting very sick","2",
                                as.character(ACSD$Question_20_Avoiding))

#removing Avoiding contact with people who have suspected or confirmed COVID-19 values
ACSD$Question_20_Avoiding<-gsub("Avoiding contact with people who have suspected or confirmed COVID-19","1",
                                as.character(ACSD$Question_20_Avoiding))

#Rememving commas 
ACSD$Question_20_Avoiding<-
  gsub(",","",as.character(ACSD$Question_20_Avoiding))

#removing spaces
ACSD$Question_20_Avoiding<-
  gsub(" ","",as.character(ACSD$Question_20_Avoiding))