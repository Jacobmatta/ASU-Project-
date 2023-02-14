#duplicating Q4...52 column for Fever responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Fever = Q4...52)

#duplicating Q4...52 column for Cough responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Cough = Q4...52)


#duplicating Q4...52 column for Shortness_of_breath responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Shortness_of_breath = Q4...52)


#duplicating Q4...52 column for Fatigue responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Fatigue = Q4...52)


#duplicating Q4...52 column for Muscle_Body_Aches responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Muscle_Body_Aches  = Q4...52)

#duplicating Q4...52 column for Headache responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Headache  = Q4...52)


#duplicating Q4...52 column for Loss_of_Taste
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Loss_of_Taste = Q4...52)


#duplicating Q4...52 column for Sore_Throat responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Sore_Throat = Q4...52)


#duplicating Q4...52 column for Congestion responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Congestion = Q4...52)


#duplicating Q4...52 column for Nausea responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Nausea = Q4...52)


#duplicating Q4...52 column for Diarrhea responses 
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Diarrhea = Q4...52)


#duplicating Q4...52 column for Asymptomatic responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Asymptomatic = Q4...52)


#duplicating Q4...52 column for Other responses
Rawdata <- Rawdata %>%         
  mutate(Q4...52_Other = Q4...52)

###################################################################Fever or chills 
#removing Fever or chills values
Rawdata$Q4...52_Fever<-gsub("Fever or chills","1",
                             as.character(Rawdata$Q4...52_Fever))
#removing Cough values
Rawdata$Q4...52_Fever<-gsub("Cough","2",
                             as.character(Rawdata$Q4...52_Fever))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Fever<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Fever))
Rawdata$Q4...52_Fever<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Fever))

#removing Fatigue values
Rawdata$Q4...52_Fever<-gsub("Fatigue","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing Muscle or body aches values
Rawdata$Q4...52_Fever<-gsub("Muscle or","2",
                             as.character(Rawdata$Q4...52_Fever))
#removing Muscle or body aches values
Rawdata$Q4...52_Fever<-gsub("body aches","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing Headache values
Rawdata$Q4...52_Fever<-gsub("Headache","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing New loss of taste or smell values
Rawdata$Q4...52_Fever<-gsub("New loss of","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing New loss of taste or smell values
Rawdata$Q4...52_Fever<-gsub("taste or smell","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing Sore throat values
Rawdata$Q4...52_Fever<-gsub("Sore throat","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing Congestion or runny nose
Rawdata$Q4...52_Fever<-gsub("Congestion or","2",
                             as.character(Rawdata$Q4...52_Fever))
Rawdata$Q4...52_Fever<-gsub("runny nose","2",
                             as.character(Rawdata$Q4...52_Fever))
#removing Nausea or vomiting
Rawdata$Q4...52_Fever<-gsub("Nausea or vomiting","2",
                             as.character(Rawdata$Q4...52_Fever))

#removing Diarrhea values
Rawdata$Q4...52_Fever<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Fever))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Fever<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Fever))
Rawdata$Q4...52_Fever<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Fever))

#removing Other values
Rawdata$Q4...52_Fever<-gsub("Other","2",as.character(Rawdata$Q4...52_Fever))


#Rememving commas 
Rawdata$Q4...52_Fever<-
  gsub(",","",as.character(Rawdata$Q4...52_Fever))

#removing spaces
Rawdata$Q4...52_Fever<-
  gsub(" ","",as.character(Rawdata$Q4...52_Fever))
###################################################################Cough 
#removing Fever or chills values
Rawdata$Q4...52_Cough<-gsub("Fever or chills","2",
                             as.character(Rawdata$Q4...52_Cough))
#removing Cough values
Rawdata$Q4...52_Cough<-gsub("Cough","1",
                             as.character(Rawdata$Q4...52_Cough))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Cough<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Cough))
Rawdata$Q4...52_Cough<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Cough))

#removing Fatigue values
Rawdata$Q4...52_Cough<-gsub("Fatigue","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing Muscle or body aches values
Rawdata$Q4...52_Cough<-gsub("Muscle or","2",
                             as.character(Rawdata$Q4...52_Cough))
#removing Muscle or body aches values
Rawdata$Q4...52_Cough<-gsub("body aches","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing Headache values
Rawdata$Q4...52_Cough<-gsub("Headache","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing New loss of taste or smell values
Rawdata$Q4...52_Cough<-gsub("New loss of","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing New loss of taste or smell values
Rawdata$Q4...52_Cough<-gsub("taste or smell","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing Sore throat values
Rawdata$Q4...52_Cough<-gsub("Sore throat","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing Congestion or runny nose
Rawdata$Q4...52_Cough<-gsub("Congestion or","2",
                             as.character(Rawdata$Q4...52_Cough))
Rawdata$Q4...52_Cough<-gsub("runny nose","2",
                             as.character(Rawdata$Q4...52_Cough))
#removing Nausea or vomiting
Rawdata$Q4...52_Cough<-gsub("Nausea or vomiting","2",
                             as.character(Rawdata$Q4...52_Cough))

#removing Diarrhea values
Rawdata$Q4...52_Cough<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Cough))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Cough<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Cough))
Rawdata$Q4...52_Cough<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Cough))

#removing Other values
Rawdata$Q4...52_Cough<-gsub("Other","2",as.character(Rawdata$Q4...52_Cough))


#Rememving commas 
Rawdata$Q4...52_Cough<-
  gsub(",","",as.character(Rawdata$Q4...52_Cough))

#removing spaces
Rawdata$Q4...52_Cough<-
  gsub(" ","",as.character(Rawdata$Q4...52_Cough))
###################################################################Shortness of breath or difficulty breathing 
#removing Fever or chills values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Fever or chills","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))
#removing Cough values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Cough","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Shortness of breath","1",as.character(Rawdata$Q4...52_Shortness_of_breath))
Rawdata$Q4...52_Shortness_of_breath<-gsub("or difficulty breathing","1",as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Fatigue values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Fatigue","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Muscle or body aches values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Muscle or","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))
#removing Muscle or body aches values
Rawdata$Q4...52_Shortness_of_breath<-gsub("body aches","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Headache values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Headache","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing New loss of taste or smell values
Rawdata$Q4...52_Shortness_of_breath<-gsub("New loss of","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing New loss of taste or smell values
Rawdata$Q4...52_Shortness_of_breath<-gsub("taste or smell","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Sore throat values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Sore throat","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Congestion or runny nose
Rawdata$Q4...52_Shortness_of_breath<-gsub("Congestion or","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))
Rawdata$Q4...52_Shortness_of_breath<-gsub("runny nose","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))
#removing Nausea or vomiting
Rawdata$Q4...52_Shortness_of_breath<-gsub("Nausea or vomiting","2",
                                           as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Diarrhea values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Shortness_of_breath))
Rawdata$Q4...52_Shortness_of_breath<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing Other values
Rawdata$Q4...52_Shortness_of_breath<-gsub("Other","2",as.character(Rawdata$Q4...52_Shortness_of_breath))


#Rememving commas 
Rawdata$Q4...52_Shortness_of_breath<-
  gsub(",","",as.character(Rawdata$Q4...52_Shortness_of_breath))

#removing spaces
Rawdata$Q4...52_Shortness_of_breath<-
  gsub(" ","",as.character(Rawdata$Q4...52_Shortness_of_breath))
###################################################################Fatigue
#removing Fever or chills values
Rawdata$Q4...52_Fatigue<-gsub("Fever or chills","2",
                               as.character(Rawdata$Q4...52_Fatigue))
#removing Cough values
Rawdata$Q4...52_Fatigue<-gsub("Cough","2",
                               as.character(Rawdata$Q4...52_Fatigue))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Fatigue<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Fatigue))
Rawdata$Q4...52_Fatigue<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Fatigue))

#removing Fatigue values
Rawdata$Q4...52_Fatigue<-gsub("Fatigue","1",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing Muscle or body aches values
Rawdata$Q4...52_Fatigue<-gsub("Muscle or","2",
                               as.character(Rawdata$Q4...52_Fatigue))
#removing Muscle or body aches values
Rawdata$Q4...52_Fatigue<-gsub("body aches","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing Headache values
Rawdata$Q4...52_Fatigue<-gsub("Headache","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing New loss of taste or smell values
Rawdata$Q4...52_Fatigue<-gsub("New loss of","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing New loss of taste or smell values
Rawdata$Q4...52_Fatigue<-gsub("taste or smell","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing Sore throat values
Rawdata$Q4...52_Fatigue<-gsub("Sore throat","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing Congestion or runny nose
Rawdata$Q4...52_Fatigue<-gsub("Congestion or","2",
                               as.character(Rawdata$Q4...52_Fatigue))
Rawdata$Q4...52_Fatigue<-gsub("runny nose","2",
                               as.character(Rawdata$Q4...52_Fatigue))
#removing Nausea or vomiting
Rawdata$Q4...52_Fatigue<-gsub("Nausea or vomiting","2",
                               as.character(Rawdata$Q4...52_Fatigue))

#removing Diarrhea values
Rawdata$Q4...52_Fatigue<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Fatigue))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Fatigue<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Fatigue))
Rawdata$Q4...52_Fatigue<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Fatigue))

#removing Other values
Rawdata$Q4...52_Fatigue<-gsub("Other","2",as.character(Rawdata$Q4...52_Fatigue))


#Rememving commas 
Rawdata$Q4...52_Fatigue<-
  gsub(",","",as.character(Rawdata$Q4...52_Fatigue))

#removing spaces
Rawdata$Q4...52_Fatigue<-
  gsub(" ","",as.character(Rawdata$Q4...52_Fatigue))
###################################################################Muscle or body aches
#removing Fever or chills values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Fever or chills","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#removing Cough values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Cough","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Fatigue values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Fatigue","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Muscle or body aches values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Muscle or","1",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("body aches","1",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Headache values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Headache","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing New loss of taste or smell values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("New loss of","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing New loss of taste or smell values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("taste or smell","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Sore throat values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Sore throat","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Congestion or runny nose
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Congestion or","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("runny nose","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#removing Nausea or vomiting
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Nausea or vomiting","2",
                                         as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Diarrhea values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing Other values
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("Other","2",as.character(Rawdata$Q4...52_Muscle_Body_Aches))


#Rememving commas 
Rawdata$Q4...52_Muscle_Body_Aches<-
  gsub(",","",as.character(Rawdata$Q4...52_Muscle_Body_Aches))

#removing spaces
Rawdata$Q4...52_Muscle_Body_Aches<-
  gsub(" ","",as.character(Rawdata$Q4...52_Muscle_Body_Aches))
###################################################################Headache
#removing Fever or chills values
Rawdata$Q4...52_Headache<-gsub("Fever or chills","2",
                                as.character(Rawdata$Q4...52_Headache))
#removing Cough values
Rawdata$Q4...52_Headache<-gsub("Cough","2",
                                as.character(Rawdata$Q4...52_Headache))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Headache<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Headache))

#removing Fatigue values
Rawdata$Q4...52_Headache<-gsub("Fatigue","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing Muscle or body aches values
Rawdata$Q4...52_Headache<-gsub("Muscle or","2",
                                as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("body aches","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing Headache values
Rawdata$Q4...52_Headache<-gsub("Headache","1",
                                as.character(Rawdata$Q4...52_Headache))

#removing New loss of taste or smell values
Rawdata$Q4...52_Headache<-gsub("New loss of","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing New loss of taste or smell values
Rawdata$Q4...52_Headache<-gsub("taste or smell","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing Sore throat values
Rawdata$Q4...52_Headache<-gsub("Sore throat","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing Congestion or runny nose
Rawdata$Q4...52_Headache<-gsub("Congestion or","2",
                                as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("runny nose","2",
                                as.character(Rawdata$Q4...52_Headache))
#removing Nausea or vomiting
Rawdata$Q4...52_Headache<-gsub("Nausea or vomiting","2",
                                as.character(Rawdata$Q4...52_Headache))

#removing Diarrhea values
Rawdata$Q4...52_Headache<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Headache))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Headache<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Headache))

#removing Other values
Rawdata$Q4...52_Headache<-gsub("Other","2",as.character(Rawdata$Q4...52_Headache))


#Rememving commas 
Rawdata$Q4...52_Headache<-
  gsub(",","",as.character(Rawdata$Q4...52_Headache))

#removing spaces
Rawdata$Q4...52_Headache<-
  gsub(" ","",as.character(Rawdata$Q4...52_Headache))
###################################################################New loss of taste or smell values
#removing Fever or chills values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Fever or chills","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))
#removing Cough values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Cough","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Fatigue values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Fatigue","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Muscle or body aches values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Muscle or","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("body aches","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Headache values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Headache","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing New loss of taste or smell values
Rawdata$Q4...52_Loss_of_Taste<-gsub("New loss of","1",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

Rawdata$Q4...52_Loss_of_Taste<-gsub("taste or smell","1",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Sore throat values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Sore throat","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Congestion or runny nose
Rawdata$Q4...52_Loss_of_Taste<-gsub("Congestion or","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("runny nose","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))
#removing Nausea or vomiting
Rawdata$Q4...52_Loss_of_Taste<-gsub("Nausea or vomiting","2",
                                     as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Diarrhea values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing Other values
Rawdata$Q4...52_Loss_of_Taste<-gsub("Other","2",as.character(Rawdata$Q4...52_Loss_of_Taste))


#Rememving commas 
Rawdata$Q4...52_Loss_of_Taste<-
  gsub(",","",as.character(Rawdata$Q4...52_Loss_of_Taste))

#removing spaces
Rawdata$Q4...52_Loss_of_Taste<-
  gsub(" ","",as.character(Rawdata$Q4...52_Loss_of_Taste))
###################################################################Sore throat
#removing Fever or chills values
Rawdata$Q4...52_Sore_Throat<-gsub("Fever or chills","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))
#removing Cough values
Rawdata$Q4...52_Sore_Throat<-gsub("Cough","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Sore_Throat<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Sore_Throat))

#removing Fatigue values
Rawdata$Q4...52_Sore_Throat<-gsub("Fatigue","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing Muscle or body aches values
Rawdata$Q4...52_Sore_Throat<-gsub("Muscle or","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("body aches","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing Headache values
Rawdata$Q4...52_Sore_Throat<-gsub("Headache","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing New loss of taste or smell values
Rawdata$Q4...52_Sore_Throat<-gsub("New loss of","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

Rawdata$Q4...52_Sore_Throat<-gsub("taste or smell","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing Sore throat values
Rawdata$Q4...52_Sore_Throat<-gsub("Sore throat","1",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing Congestion or runny nose
Rawdata$Q4...52_Sore_Throat<-gsub("Congestion or","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("runny nose","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))
#removing Nausea or vomiting
Rawdata$Q4...52_Sore_Throat<-gsub("Nausea or vomiting","2",
                                   as.character(Rawdata$Q4...52_Sore_Throat))

#removing Diarrhea values
Rawdata$Q4...52_Sore_Throat<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Sore_Throat))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Sore_Throat<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Sore_Throat))

#removing Other values
Rawdata$Q4...52_Sore_Throat<-gsub("Other","2",as.character(Rawdata$Q4...52_Sore_Throat))


#Rememving commas 
Rawdata$Q4...52_Sore_Throat<-
  gsub(",","",as.character(Rawdata$Q4...52_Sore_Throat))

#removing spaces
Rawdata$Q4...52_Sore_Throat<-
  gsub(" ","",as.character(Rawdata$Q4...52_Sore_Throat))
###################################################################Congestion or runny nose
#removing Fever or chills values
Rawdata$Q4...52_Congestion<-gsub("Fever or chills","2",
                                  as.character(Rawdata$Q4...52_Congestion))
#removing Cough values
Rawdata$Q4...52_Congestion<-gsub("Cough","2",
                                  as.character(Rawdata$Q4...52_Congestion))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Congestion<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Congestion))

#removing Fatigue values
Rawdata$Q4...52_Congestion<-gsub("Fatigue","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing Muscle or body aches values
Rawdata$Q4...52_Congestion<-gsub("Muscle or","2",
                                  as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("body aches","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing Headache values
Rawdata$Q4...52_Congestion<-gsub("Headache","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing New loss of taste or smell values
Rawdata$Q4...52_Congestion<-gsub("New loss of","2",
                                  as.character(Rawdata$Q4...52_Congestion))

Rawdata$Q4...52_Congestion<-gsub("taste or smell","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing Sore throat values
Rawdata$Q4...52_Congestion<-gsub("Sore throat","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing Congestion or runny nose
Rawdata$Q4...52_Congestion<-gsub("Congestion or","1",
                                  as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("runny nose","1",
                                  as.character(Rawdata$Q4...52_Congestion))
#removing Nausea or vomiting
Rawdata$Q4...52_Congestion<-gsub("Nausea or vomiting","2",
                                  as.character(Rawdata$Q4...52_Congestion))

#removing Diarrhea values
Rawdata$Q4...52_Congestion<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Congestion))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Congestion<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Congestion))

#removing Other values
Rawdata$Q4...52_Congestion<-gsub("Other","2",as.character(Rawdata$Q4...52_Congestion))


#Rememving commas 
Rawdata$Q4...52_Congestion<-
  gsub(",","",as.character(Rawdata$Q4...52_Congestion))

#removing spaces
Rawdata$Q4...52_Congestion<-
  gsub(" ","",as.character(Rawdata$Q4...52_Congestion))
###################################################################Nausea
#removing Fever or chills values
Rawdata$Q4...52_Nausea<-gsub("Fever or chills","2",
                              as.character(Rawdata$Q4...52_Nausea))
#removing Cough values
Rawdata$Q4...52_Nausea<-gsub("Cough","2",
                              as.character(Rawdata$Q4...52_Nausea))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Nausea<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Nausea))

#removing Fatigue values
Rawdata$Q4...52_Nausea<-gsub("Fatigue","2",
                              as.character(Rawdata$Q4...52_Nausea))

#removing Muscle or body aches values
Rawdata$Q4...52_Nausea<-gsub("Muscle or","2",
                              as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("body aches","2",
                              as.character(Rawdata$Q4...52_Nausea))

#removing Headache values
Rawdata$Q4...52_Nausea<-gsub("Headache","2",
                              as.character(Rawdata$Q4...52_Nausea))

#removing New loss of taste or smell values
Rawdata$Q4...52_Nausea<-gsub("New loss of","2",
                              as.character(Rawdata$Q4...52_Nausea))

Rawdata$Q4...52_Nausea<-gsub("taste or smell","2",
                              as.character(Rawdata$Q4...52_Nausea))

#removing Sore throat values
Rawdata$Q4...52_Nausea<-gsub("Sore throat","2",
                              as.character(Rawdata$Q4...52_Nausea))

#removing Congestion or runny nose
Rawdata$Q4...52_Nausea<-gsub("Congestion or","2",
                              as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("runny nose","2",
                              as.character(Rawdata$Q4...52_Nausea))
#removing Nausea or vomiting
Rawdata$Q4...52_Nausea<-gsub("Nausea or vomiting","1",
                              as.character(Rawdata$Q4...52_Nausea))

#removing Diarrhea values
Rawdata$Q4...52_Nausea<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Nausea))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Nausea<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Nausea))

#removing Other values
Rawdata$Q4...52_Nausea<-gsub("Other","2",as.character(Rawdata$Q4...52_Nausea))


#Rememving commas 
Rawdata$Q4...52_Nausea<-
  gsub(",","",as.character(Rawdata$Q4...52_Nausea))

#removing spaces
Rawdata$Q4...52_Nausea<-
  gsub(" ","",as.character(Rawdata$Q4...52_Nausea))
###################################################################Diarrhea
#removing Fever or chills values
Rawdata$Q4...52_Diarrhea<-gsub("Fever or chills","2",
                                as.character(Rawdata$Q4...52_Diarrhea))
#removing Cough values
Rawdata$Q4...52_Diarrhea<-gsub("Cough","2",
                                as.character(Rawdata$Q4...52_Diarrhea))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Diarrhea<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Diarrhea))

#removing Fatigue values
Rawdata$Q4...52_Diarrhea<-gsub("Fatigue","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing Muscle or body aches values
Rawdata$Q4...52_Diarrhea<-gsub("Muscle or","2",
                                as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("body aches","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing Headache values
Rawdata$Q4...52_Diarrhea<-gsub("Headache","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing New loss of taste or smell values
Rawdata$Q4...52_Diarrhea<-gsub("New loss of","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

Rawdata$Q4...52_Diarrhea<-gsub("taste or smell","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing Sore throat values
Rawdata$Q4...52_Diarrhea<-gsub("Sore throat","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing Congestion or runny nose
Rawdata$Q4...52_Diarrhea<-gsub("Congestion or","2",
                                as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("runny nose","2",
                                as.character(Rawdata$Q4...52_Diarrhea))
#removing Nausea or vomiting
Rawdata$Q4...52_Diarrhea<-gsub("Nausea or vomiting","2",
                                as.character(Rawdata$Q4...52_Diarrhea))

#removing Diarrhea values
Rawdata$Q4...52_Diarrhea<-gsub("Diarrhea","1",as.character(Rawdata$Q4...52_Diarrhea))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Diarrhea<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Diarrhea))

#removing Other values
Rawdata$Q4...52_Diarrhea<-gsub("Other","2",as.character(Rawdata$Q4...52_Diarrhea))


#Rememving commas 
Rawdata$Q4...52_Diarrhea<-
  gsub(",","",as.character(Rawdata$Q4...52_Diarrhea))

#removing spaces
Rawdata$Q4...52_Diarrhea<-
  gsub(" ","",as.character(Rawdata$Q4...52_Diarrhea))
###################################################################Asymptomatic
#removing Fever or chills values
Rawdata$Q4...52_Asymptomatic<-gsub("Fever or chills","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))
#removing Cough values
Rawdata$Q4...52_Asymptomatic<-gsub("Cough","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Asymptomatic<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Asymptomatic))

#removing Fatigue values
Rawdata$Q4...52_Asymptomatic<-gsub("Fatigue","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing Muscle or body aches values
Rawdata$Q4...52_Asymptomatic<-gsub("Muscle or","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("body aches","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing Headache values
Rawdata$Q4...52_Asymptomatic<-gsub("Headache","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing New loss of taste or smell values
Rawdata$Q4...52_Asymptomatic<-gsub("New loss of","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

Rawdata$Q4...52_Asymptomatic<-gsub("taste or smell","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing Sore throat values
Rawdata$Q4...52_Asymptomatic<-gsub("Sore throat","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing Congestion or runny nose
Rawdata$Q4...52_Asymptomatic<-gsub("Congestion or","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("runny nose","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))
#removing Nausea or vomiting
Rawdata$Q4...52_Asymptomatic<-gsub("Nausea or vomiting","2",
                                    as.character(Rawdata$Q4...52_Asymptomatic))

#removing Diarrhea values
Rawdata$Q4...52_Asymptomatic<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Asymptomatic))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Asymptomatic<-gsub("Asymptomatic","1",as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("No symptoms but tested positive","1",as.character(Rawdata$Q4...52_Asymptomatic))

#removing Other values
Rawdata$Q4...52_Asymptomatic<-gsub("Other","2",as.character(Rawdata$Q4...52_Asymptomatic))


#Rememving commas 
Rawdata$Q4...52_Asymptomatic<-
  gsub(",","",as.character(Rawdata$Q4...52_Asymptomatic))

#removing spaces
Rawdata$Q4...52_Asymptomatic<-
  gsub(" ","",as.character(Rawdata$Q4...52_Asymptomatic))
###################################################################Other
#removing Fever or chills values
Rawdata$Q4...52_Other<-gsub("Fever or chills","2",
                             as.character(Rawdata$Q4...52_Other))
#removing Cough values
Rawdata$Q4...52_Other<-gsub("Cough","2",
                             as.character(Rawdata$Q4...52_Other))
#removing Shortness of breath or difficulty breathing values
Rawdata$Q4...52_Other<-gsub("Shortness of breath","2",as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("or difficulty breathing","2",as.character(Rawdata$Q4...52_Other))

#removing Fatigue values
Rawdata$Q4...52_Other<-gsub("Fatigue","2",
                             as.character(Rawdata$Q4...52_Other))

#removing Muscle or body aches values
Rawdata$Q4...52_Other<-gsub("Muscle or","2",
                             as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("body aches","2",
                             as.character(Rawdata$Q4...52_Other))

#removing Headache values
Rawdata$Q4...52_Other<-gsub("Headache","2",
                             as.character(Rawdata$Q4...52_Other))

#removing New loss of taste or smell values
Rawdata$Q4...52_Other<-gsub("New loss of","2",
                             as.character(Rawdata$Q4...52_Other))

Rawdata$Q4...52_Other<-gsub("taste or smell","2",
                             as.character(Rawdata$Q4...52_Other))

#removing Sore throat values
Rawdata$Q4...52_Other<-gsub("Sore throat","2",
                             as.character(Rawdata$Q4...52_Other))

#removing Congestion or runny nose
Rawdata$Q4...52_Other<-gsub("Congestion or","2",
                             as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("runny nose","2",
                             as.character(Rawdata$Q4...52_Other))
#removing Nausea or vomiting
Rawdata$Q4...52_Other<-gsub("Nausea or vomiting","2",
                             as.character(Rawdata$Q4...52_Other))

#removing Diarrhea values
Rawdata$Q4...52_Other<-gsub("Diarrhea","2",as.character(Rawdata$Q4...52_Other))

#removing Asymptomatic (No symptoms but tested positive) values
Rawdata$Q4...52_Other<-gsub("Asymptomatic","2",as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("No symptoms but tested positive","2",as.character(Rawdata$Q4...52_Other))

#removing Other values
Rawdata$Q4...52_Other<-gsub("Other","1",as.character(Rawdata$Q4...52_Other))


#Rememving commas 
Rawdata$Q4...52_Other<-
  gsub(",","",as.character(Rawdata$Q4...52_Other))

#removing spaces
Rawdata$Q4...52_Other<-
  gsub(" ","",as.character(Rawdata$Q4...52_Other))
