#duplicating Question_13 column for Fever responses
ACSD <- ACSD %>%         
  mutate(Question_13_Fever = Question_13)

#duplicating Question_13 column for Cough responses
ACSD <- ACSD %>%         
  mutate(Question_13_Cough = Question_13)


#duplicating Question_13 column for Shortness_of_breath responses
ACSD <- ACSD %>%         
  mutate(Question_13_Shortness_of_breath = Question_13)


#duplicating Question_13 column for Fatigue responses
ACSD <- ACSD %>%         
  mutate(Question_13_Fatigue = Question_13)


#duplicating Question_13 column for Muscle_Body_Aches responses
ACSD <- ACSD %>%         
  mutate(Question_13_Muscle_Body_Aches  = Question_13)

#duplicating Question_13 column for Headache responses
ACSD <- ACSD %>%         
  mutate(Question_13_Headache  = Question_13)


#duplicating Question_13 column for Loss_of_Taste
ACSD <- ACSD %>%         
  mutate(Question_13_Loss_of_Taste = Question_13)


#duplicating Question_13 column for Sore_Throat responses
ACSD <- ACSD %>%         
  mutate(Question_13_Sore_Throat = Question_13)


#duplicating Question_13 column for Congestion responses
ACSD <- ACSD %>%         
  mutate(Question_13_Congestion = Question_13)


#duplicating Question_13 column for Nausea responses
ACSD <- ACSD %>%         
  mutate(Question_13_Nausea = Question_13)


#duplicating Question_13 column for Diarrhea responses 
ACSD <- ACSD %>%         
  mutate(Question_13_Diarrhea = Question_13)


#duplicating Question_13 column for Asymptomatic responses
ACSD <- ACSD %>%         
  mutate(Question_13_Asymptomatic = Question_13)


#duplicating Question_13 column for Other responses
ACSD <- ACSD %>%         
  mutate(Question_13_Other = Question_13)

###################################################################Fever or chills 
#removing Fever or chills values
ACSD$Question_13_Fever<-gsub("Fever or chills","1",
                             as.character(ACSD$Question_13_Fever))
#removing Cough values
ACSD$Question_13_Fever<-gsub("Cough","2",
                             as.character(ACSD$Question_13_Fever))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Fever<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Fever))
ACSD$Question_13_Fever<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Fever))

#removing Fatigue values
ACSD$Question_13_Fever<-gsub("Fatigue","2",
                             as.character(ACSD$Question_13_Fever))

#removing Muscle or body aches values
ACSD$Question_13_Fever<-gsub("Muscle or","2",
                             as.character(ACSD$Question_13_Fever))
#removing Muscle or body aches values
ACSD$Question_13_Fever<-gsub("body aches","2",
                             as.character(ACSD$Question_13_Fever))

#removing Headache values
ACSD$Question_13_Fever<-gsub("Headache","2",
                             as.character(ACSD$Question_13_Fever))

#removing New loss of taste or smell values
ACSD$Question_13_Fever<-gsub("New loss of","2",
                             as.character(ACSD$Question_13_Fever))

#removing New loss of taste or smell values
ACSD$Question_13_Fever<-gsub("taste or smell","2",
                             as.character(ACSD$Question_13_Fever))

#removing Sore throat values
ACSD$Question_13_Fever<-gsub("Sore throat","2",
                             as.character(ACSD$Question_13_Fever))

#removing Congestion or runny nose
ACSD$Question_13_Fever<-gsub("Congestion or","2",
                             as.character(ACSD$Question_13_Fever))
ACSD$Question_13_Fever<-gsub("runny nose","2",
                             as.character(ACSD$Question_13_Fever))
#removing Nausea or vomiting
ACSD$Question_13_Fever<-gsub("Nausea or vomiting","2",
                             as.character(ACSD$Question_13_Fever))

#removing Diarrhea values
ACSD$Question_13_Fever<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Fever))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Fever<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Fever))
ACSD$Question_13_Fever<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Fever))

#removing Other values
ACSD$Question_13_Fever<-gsub("Other","2",as.character(ACSD$Question_13_Fever))


#Rememving commas 
ACSD$Question_13_Fever<-
  gsub(",","",as.character(ACSD$Question_13_Fever))

#removing spaces
ACSD$Question_13_Fever<-
  gsub(" ","",as.character(ACSD$Question_13_Fever))
###################################################################Cough 
#removing Fever or chills values
ACSD$Question_13_Cough<-gsub("Fever or chills","2",
                             as.character(ACSD$Question_13_Cough))
#removing Cough values
ACSD$Question_13_Cough<-gsub("Cough","1",
                             as.character(ACSD$Question_13_Cough))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Cough<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Cough))
ACSD$Question_13_Cough<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Cough))

#removing Fatigue values
ACSD$Question_13_Cough<-gsub("Fatigue","2",
                             as.character(ACSD$Question_13_Cough))

#removing Muscle or body aches values
ACSD$Question_13_Cough<-gsub("Muscle or","2",
                             as.character(ACSD$Question_13_Cough))
#removing Muscle or body aches values
ACSD$Question_13_Cough<-gsub("body aches","2",
                             as.character(ACSD$Question_13_Cough))

#removing Headache values
ACSD$Question_13_Cough<-gsub("Headache","2",
                             as.character(ACSD$Question_13_Cough))

#removing New loss of taste or smell values
ACSD$Question_13_Cough<-gsub("New loss of","2",
                             as.character(ACSD$Question_13_Cough))

#removing New loss of taste or smell values
ACSD$Question_13_Cough<-gsub("taste or smell","2",
                             as.character(ACSD$Question_13_Cough))

#removing Sore throat values
ACSD$Question_13_Cough<-gsub("Sore throat","2",
                             as.character(ACSD$Question_13_Cough))

#removing Congestion or runny nose
ACSD$Question_13_Cough<-gsub("Congestion or","2",
                             as.character(ACSD$Question_13_Cough))
ACSD$Question_13_Cough<-gsub("runny nose","2",
                             as.character(ACSD$Question_13_Cough))
#removing Nausea or vomiting
ACSD$Question_13_Cough<-gsub("Nausea or vomiting","2",
                             as.character(ACSD$Question_13_Cough))

#removing Diarrhea values
ACSD$Question_13_Cough<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Cough))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Cough<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Cough))
ACSD$Question_13_Cough<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Cough))

#removing Other values
ACSD$Question_13_Cough<-gsub("Other","2",as.character(ACSD$Question_13_Cough))


#Rememving commas 
ACSD$Question_13_Cough<-
  gsub(",","",as.character(ACSD$Question_13_Cough))

#removing spaces
ACSD$Question_13_Cough<-
  gsub(" ","",as.character(ACSD$Question_13_Cough))
###################################################################Shortness of breath or difficulty breathing 
#removing Fever or chills values
ACSD$Question_13_Shortness_of_breath<-gsub("Fever or chills","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))
#removing Cough values
ACSD$Question_13_Shortness_of_breath<-gsub("Cough","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Shortness_of_breath<-gsub("Shortness of breath","1",as.character(ACSD$Question_13_Shortness_of_breath))
ACSD$Question_13_Shortness_of_breath<-gsub("or difficulty breathing","1",as.character(ACSD$Question_13_Shortness_of_breath))

#removing Fatigue values
ACSD$Question_13_Shortness_of_breath<-gsub("Fatigue","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing Muscle or body aches values
ACSD$Question_13_Shortness_of_breath<-gsub("Muscle or","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))
#removing Muscle or body aches values
ACSD$Question_13_Shortness_of_breath<-gsub("body aches","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing Headache values
ACSD$Question_13_Shortness_of_breath<-gsub("Headache","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing New loss of taste or smell values
ACSD$Question_13_Shortness_of_breath<-gsub("New loss of","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing New loss of taste or smell values
ACSD$Question_13_Shortness_of_breath<-gsub("taste or smell","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing Sore throat values
ACSD$Question_13_Shortness_of_breath<-gsub("Sore throat","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing Congestion or runny nose
ACSD$Question_13_Shortness_of_breath<-gsub("Congestion or","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))
ACSD$Question_13_Shortness_of_breath<-gsub("runny nose","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))
#removing Nausea or vomiting
ACSD$Question_13_Shortness_of_breath<-gsub("Nausea or vomiting","2",
                                           as.character(ACSD$Question_13_Shortness_of_breath))

#removing Diarrhea values
ACSD$Question_13_Shortness_of_breath<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Shortness_of_breath))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Shortness_of_breath<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Shortness_of_breath))
ACSD$Question_13_Shortness_of_breath<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Shortness_of_breath))

#removing Other values
ACSD$Question_13_Shortness_of_breath<-gsub("Other","2",as.character(ACSD$Question_13_Shortness_of_breath))


#Rememving commas 
ACSD$Question_13_Shortness_of_breath<-
  gsub(",","",as.character(ACSD$Question_13_Shortness_of_breath))

#removing spaces
ACSD$Question_13_Shortness_of_breath<-
  gsub(" ","",as.character(ACSD$Question_13_Shortness_of_breath))
###################################################################Fatigue
#removing Fever or chills values
ACSD$Question_13_Fatigue<-gsub("Fever or chills","2",
                               as.character(ACSD$Question_13_Fatigue))
#removing Cough values
ACSD$Question_13_Fatigue<-gsub("Cough","2",
                               as.character(ACSD$Question_13_Fatigue))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Fatigue<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Fatigue))
ACSD$Question_13_Fatigue<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Fatigue))

#removing Fatigue values
ACSD$Question_13_Fatigue<-gsub("Fatigue","1",
                               as.character(ACSD$Question_13_Fatigue))

#removing Muscle or body aches values
ACSD$Question_13_Fatigue<-gsub("Muscle or","2",
                               as.character(ACSD$Question_13_Fatigue))
#removing Muscle or body aches values
ACSD$Question_13_Fatigue<-gsub("body aches","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing Headache values
ACSD$Question_13_Fatigue<-gsub("Headache","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing New loss of taste or smell values
ACSD$Question_13_Fatigue<-gsub("New loss of","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing New loss of taste or smell values
ACSD$Question_13_Fatigue<-gsub("taste or smell","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing Sore throat values
ACSD$Question_13_Fatigue<-gsub("Sore throat","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing Congestion or runny nose
ACSD$Question_13_Fatigue<-gsub("Congestion or","2",
                               as.character(ACSD$Question_13_Fatigue))
ACSD$Question_13_Fatigue<-gsub("runny nose","2",
                               as.character(ACSD$Question_13_Fatigue))
#removing Nausea or vomiting
ACSD$Question_13_Fatigue<-gsub("Nausea or vomiting","2",
                               as.character(ACSD$Question_13_Fatigue))

#removing Diarrhea values
ACSD$Question_13_Fatigue<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Fatigue))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Fatigue<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Fatigue))
ACSD$Question_13_Fatigue<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Fatigue))

#removing Other values
ACSD$Question_13_Fatigue<-gsub("Other","2",as.character(ACSD$Question_13_Fatigue))


#Rememving commas 
ACSD$Question_13_Fatigue<-
  gsub(",","",as.character(ACSD$Question_13_Fatigue))

#removing spaces
ACSD$Question_13_Fatigue<-
  gsub(" ","",as.character(ACSD$Question_13_Fatigue))
###################################################################Muscle or body aches
#removing Fever or chills values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Fever or chills","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))
#removing Cough values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Cough","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Muscle_Body_Aches))
ACSD$Question_13_Muscle_Body_Aches<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Fatigue values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Fatigue","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Muscle or body aches values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Muscle or","1",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))
ACSD$Question_13_Muscle_Body_Aches<-gsub("body aches","1",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Headache values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Headache","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing New loss of taste or smell values
ACSD$Question_13_Muscle_Body_Aches<-gsub("New loss of","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing New loss of taste or smell values
ACSD$Question_13_Muscle_Body_Aches<-gsub("taste or smell","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Sore throat values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Sore throat","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Congestion or runny nose
ACSD$Question_13_Muscle_Body_Aches<-gsub("Congestion or","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))
ACSD$Question_13_Muscle_Body_Aches<-gsub("runny nose","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))
#removing Nausea or vomiting
ACSD$Question_13_Muscle_Body_Aches<-gsub("Nausea or vomiting","2",
                                         as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Diarrhea values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Muscle_Body_Aches))
ACSD$Question_13_Muscle_Body_Aches<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing Other values
ACSD$Question_13_Muscle_Body_Aches<-gsub("Other","2",as.character(ACSD$Question_13_Muscle_Body_Aches))


#Rememving commas 
ACSD$Question_13_Muscle_Body_Aches<-
  gsub(",","",as.character(ACSD$Question_13_Muscle_Body_Aches))

#removing spaces
ACSD$Question_13_Muscle_Body_Aches<-
  gsub(" ","",as.character(ACSD$Question_13_Muscle_Body_Aches))
###################################################################Headache
#removing Fever or chills values
ACSD$Question_13_Headache<-gsub("Fever or chills","2",
                                as.character(ACSD$Question_13_Headache))
#removing Cough values
ACSD$Question_13_Headache<-gsub("Cough","2",
                                as.character(ACSD$Question_13_Headache))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Headache<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Headache))
ACSD$Question_13_Headache<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Headache))

#removing Fatigue values
ACSD$Question_13_Headache<-gsub("Fatigue","2",
                                as.character(ACSD$Question_13_Headache))

#removing Muscle or body aches values
ACSD$Question_13_Headache<-gsub("Muscle or","2",
                                as.character(ACSD$Question_13_Headache))
ACSD$Question_13_Headache<-gsub("body aches","2",
                                as.character(ACSD$Question_13_Headache))

#removing Headache values
ACSD$Question_13_Headache<-gsub("Headache","1",
                                as.character(ACSD$Question_13_Headache))

#removing New loss of taste or smell values
ACSD$Question_13_Headache<-gsub("New loss of","2",
                                as.character(ACSD$Question_13_Headache))

#removing New loss of taste or smell values
ACSD$Question_13_Headache<-gsub("taste or smell","2",
                                as.character(ACSD$Question_13_Headache))

#removing Sore throat values
ACSD$Question_13_Headache<-gsub("Sore throat","2",
                                as.character(ACSD$Question_13_Headache))

#removing Congestion or runny nose
ACSD$Question_13_Headache<-gsub("Congestion or","2",
                                as.character(ACSD$Question_13_Headache))
ACSD$Question_13_Headache<-gsub("runny nose","2",
                                as.character(ACSD$Question_13_Headache))
#removing Nausea or vomiting
ACSD$Question_13_Headache<-gsub("Nausea or vomiting","2",
                                as.character(ACSD$Question_13_Headache))

#removing Diarrhea values
ACSD$Question_13_Headache<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Headache))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Headache<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Headache))
ACSD$Question_13_Headache<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Headache))

#removing Other values
ACSD$Question_13_Headache<-gsub("Other","2",as.character(ACSD$Question_13_Headache))


#Rememving commas 
ACSD$Question_13_Headache<-
  gsub(",","",as.character(ACSD$Question_13_Headache))

#removing spaces
ACSD$Question_13_Headache<-
  gsub(" ","",as.character(ACSD$Question_13_Headache))
###################################################################New loss of taste or smell values
#removing Fever or chills values
ACSD$Question_13_Loss_of_Taste<-gsub("Fever or chills","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))
#removing Cough values
ACSD$Question_13_Loss_of_Taste<-gsub("Cough","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Loss_of_Taste<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Loss_of_Taste))
ACSD$Question_13_Loss_of_Taste<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Loss_of_Taste))

#removing Fatigue values
ACSD$Question_13_Loss_of_Taste<-gsub("Fatigue","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing Muscle or body aches values
ACSD$Question_13_Loss_of_Taste<-gsub("Muscle or","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))
ACSD$Question_13_Loss_of_Taste<-gsub("body aches","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing Headache values
ACSD$Question_13_Loss_of_Taste<-gsub("Headache","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing New loss of taste or smell values
ACSD$Question_13_Loss_of_Taste<-gsub("New loss of","1",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

ACSD$Question_13_Loss_of_Taste<-gsub("taste or smell","1",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing Sore throat values
ACSD$Question_13_Loss_of_Taste<-gsub("Sore throat","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing Congestion or runny nose
ACSD$Question_13_Loss_of_Taste<-gsub("Congestion or","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))
ACSD$Question_13_Loss_of_Taste<-gsub("runny nose","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))
#removing Nausea or vomiting
ACSD$Question_13_Loss_of_Taste<-gsub("Nausea or vomiting","2",
                                     as.character(ACSD$Question_13_Loss_of_Taste))

#removing Diarrhea values
ACSD$Question_13_Loss_of_Taste<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Loss_of_Taste))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Loss_of_Taste<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Loss_of_Taste))
ACSD$Question_13_Loss_of_Taste<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Loss_of_Taste))

#removing Other values
ACSD$Question_13_Loss_of_Taste<-gsub("Other","2",as.character(ACSD$Question_13_Loss_of_Taste))


#Rememving commas 
ACSD$Question_13_Loss_of_Taste<-
  gsub(",","",as.character(ACSD$Question_13_Loss_of_Taste))

#removing spaces
ACSD$Question_13_Loss_of_Taste<-
  gsub(" ","",as.character(ACSD$Question_13_Loss_of_Taste))
###################################################################Sore throat
#removing Fever or chills values
ACSD$Question_13_Sore_Throat<-gsub("Fever or chills","2",
                                   as.character(ACSD$Question_13_Sore_Throat))
#removing Cough values
ACSD$Question_13_Sore_Throat<-gsub("Cough","2",
                                   as.character(ACSD$Question_13_Sore_Throat))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Sore_Throat<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Sore_Throat))
ACSD$Question_13_Sore_Throat<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Sore_Throat))

#removing Fatigue values
ACSD$Question_13_Sore_Throat<-gsub("Fatigue","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing Muscle or body aches values
ACSD$Question_13_Sore_Throat<-gsub("Muscle or","2",
                                   as.character(ACSD$Question_13_Sore_Throat))
ACSD$Question_13_Sore_Throat<-gsub("body aches","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing Headache values
ACSD$Question_13_Sore_Throat<-gsub("Headache","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing New loss of taste or smell values
ACSD$Question_13_Sore_Throat<-gsub("New loss of","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

ACSD$Question_13_Sore_Throat<-gsub("taste or smell","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing Sore throat values
ACSD$Question_13_Sore_Throat<-gsub("Sore throat","1",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing Congestion or runny nose
ACSD$Question_13_Sore_Throat<-gsub("Congestion or","2",
                                   as.character(ACSD$Question_13_Sore_Throat))
ACSD$Question_13_Sore_Throat<-gsub("runny nose","2",
                                   as.character(ACSD$Question_13_Sore_Throat))
#removing Nausea or vomiting
ACSD$Question_13_Sore_Throat<-gsub("Nausea or vomiting","2",
                                   as.character(ACSD$Question_13_Sore_Throat))

#removing Diarrhea values
ACSD$Question_13_Sore_Throat<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Sore_Throat))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Sore_Throat<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Sore_Throat))
ACSD$Question_13_Sore_Throat<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Sore_Throat))

#removing Other values
ACSD$Question_13_Sore_Throat<-gsub("Other","2",as.character(ACSD$Question_13_Sore_Throat))


#Rememving commas 
ACSD$Question_13_Sore_Throat<-
  gsub(",","",as.character(ACSD$Question_13_Sore_Throat))

#removing spaces
ACSD$Question_13_Sore_Throat<-
  gsub(" ","",as.character(ACSD$Question_13_Sore_Throat))
###################################################################Congestion or runny nose
#removing Fever or chills values
ACSD$Question_13_Congestion<-gsub("Fever or chills","2",
                                  as.character(ACSD$Question_13_Congestion))
#removing Cough values
ACSD$Question_13_Congestion<-gsub("Cough","2",
                                  as.character(ACSD$Question_13_Congestion))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Congestion<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Congestion))
ACSD$Question_13_Congestion<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Congestion))

#removing Fatigue values
ACSD$Question_13_Congestion<-gsub("Fatigue","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing Muscle or body aches values
ACSD$Question_13_Congestion<-gsub("Muscle or","2",
                                  as.character(ACSD$Question_13_Congestion))
ACSD$Question_13_Congestion<-gsub("body aches","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing Headache values
ACSD$Question_13_Congestion<-gsub("Headache","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing New loss of taste or smell values
ACSD$Question_13_Congestion<-gsub("New loss of","2",
                                  as.character(ACSD$Question_13_Congestion))

ACSD$Question_13_Congestion<-gsub("taste or smell","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing Sore throat values
ACSD$Question_13_Congestion<-gsub("Sore throat","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing Congestion or runny nose
ACSD$Question_13_Congestion<-gsub("Congestion or","1",
                                  as.character(ACSD$Question_13_Congestion))
ACSD$Question_13_Congestion<-gsub("runny nose","1",
                                  as.character(ACSD$Question_13_Congestion))
#removing Nausea or vomiting
ACSD$Question_13_Congestion<-gsub("Nausea or vomiting","2",
                                  as.character(ACSD$Question_13_Congestion))

#removing Diarrhea values
ACSD$Question_13_Congestion<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Congestion))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Congestion<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Congestion))
ACSD$Question_13_Congestion<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Congestion))

#removing Other values
ACSD$Question_13_Congestion<-gsub("Other","2",as.character(ACSD$Question_13_Congestion))


#Rememving commas 
ACSD$Question_13_Congestion<-
  gsub(",","",as.character(ACSD$Question_13_Congestion))

#removing spaces
ACSD$Question_13_Congestion<-
  gsub(" ","",as.character(ACSD$Question_13_Congestion))
###################################################################Nausea
#removing Fever or chills values
ACSD$Question_13_Nausea<-gsub("Fever or chills","2",
                              as.character(ACSD$Question_13_Nausea))
#removing Cough values
ACSD$Question_13_Nausea<-gsub("Cough","2",
                              as.character(ACSD$Question_13_Nausea))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Nausea<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Nausea))
ACSD$Question_13_Nausea<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Nausea))

#removing Fatigue values
ACSD$Question_13_Nausea<-gsub("Fatigue","2",
                              as.character(ACSD$Question_13_Nausea))

#removing Muscle or body aches values
ACSD$Question_13_Nausea<-gsub("Muscle or","2",
                              as.character(ACSD$Question_13_Nausea))
ACSD$Question_13_Nausea<-gsub("body aches","2",
                              as.character(ACSD$Question_13_Nausea))

#removing Headache values
ACSD$Question_13_Nausea<-gsub("Headache","2",
                              as.character(ACSD$Question_13_Nausea))

#removing New loss of taste or smell values
ACSD$Question_13_Nausea<-gsub("New loss of","2",
                              as.character(ACSD$Question_13_Nausea))

ACSD$Question_13_Nausea<-gsub("taste or smell","2",
                              as.character(ACSD$Question_13_Nausea))

#removing Sore throat values
ACSD$Question_13_Nausea<-gsub("Sore throat","2",
                              as.character(ACSD$Question_13_Nausea))

#removing Congestion or runny nose
ACSD$Question_13_Nausea<-gsub("Congestion or","2",
                              as.character(ACSD$Question_13_Nausea))
ACSD$Question_13_Nausea<-gsub("runny nose","2",
                              as.character(ACSD$Question_13_Nausea))
#removing Nausea or vomiting
ACSD$Question_13_Nausea<-gsub("Nausea or vomiting","1",
                              as.character(ACSD$Question_13_Nausea))

#removing Diarrhea values
ACSD$Question_13_Nausea<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Nausea))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Nausea<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Nausea))
ACSD$Question_13_Nausea<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Nausea))

#removing Other values
ACSD$Question_13_Nausea<-gsub("Other","2",as.character(ACSD$Question_13_Nausea))


#Rememving commas 
ACSD$Question_13_Nausea<-
  gsub(",","",as.character(ACSD$Question_13_Nausea))

#removing spaces
ACSD$Question_13_Nausea<-
  gsub(" ","",as.character(ACSD$Question_13_Nausea))
###################################################################Diarrhea
#removing Fever or chills values
ACSD$Question_13_Diarrhea<-gsub("Fever or chills","2",
                                as.character(ACSD$Question_13_Diarrhea))
#removing Cough values
ACSD$Question_13_Diarrhea<-gsub("Cough","2",
                                as.character(ACSD$Question_13_Diarrhea))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Diarrhea<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Diarrhea))
ACSD$Question_13_Diarrhea<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Diarrhea))

#removing Fatigue values
ACSD$Question_13_Diarrhea<-gsub("Fatigue","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing Muscle or body aches values
ACSD$Question_13_Diarrhea<-gsub("Muscle or","2",
                                as.character(ACSD$Question_13_Diarrhea))
ACSD$Question_13_Diarrhea<-gsub("body aches","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing Headache values
ACSD$Question_13_Diarrhea<-gsub("Headache","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing New loss of taste or smell values
ACSD$Question_13_Diarrhea<-gsub("New loss of","2",
                                as.character(ACSD$Question_13_Diarrhea))

ACSD$Question_13_Diarrhea<-gsub("taste or smell","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing Sore throat values
ACSD$Question_13_Diarrhea<-gsub("Sore throat","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing Congestion or runny nose
ACSD$Question_13_Diarrhea<-gsub("Congestion or","2",
                                as.character(ACSD$Question_13_Diarrhea))
ACSD$Question_13_Diarrhea<-gsub("runny nose","2",
                                as.character(ACSD$Question_13_Diarrhea))
#removing Nausea or vomiting
ACSD$Question_13_Diarrhea<-gsub("Nausea or vomiting","2",
                                as.character(ACSD$Question_13_Diarrhea))

#removing Diarrhea values
ACSD$Question_13_Diarrhea<-gsub("Diarrhea","1",as.character(ACSD$Question_13_Diarrhea))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Diarrhea<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Diarrhea))
ACSD$Question_13_Diarrhea<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Diarrhea))

#removing Other values
ACSD$Question_13_Diarrhea<-gsub("Other","2",as.character(ACSD$Question_13_Diarrhea))


#Rememving commas 
ACSD$Question_13_Diarrhea<-
  gsub(",","",as.character(ACSD$Question_13_Diarrhea))

#removing spaces
ACSD$Question_13_Diarrhea<-
  gsub(" ","",as.character(ACSD$Question_13_Diarrhea))
###################################################################Asymptomatic
#removing Fever or chills values
ACSD$Question_13_Asymptomatic<-gsub("Fever or chills","2",
                                    as.character(ACSD$Question_13_Asymptomatic))
#removing Cough values
ACSD$Question_13_Asymptomatic<-gsub("Cough","2",
                                    as.character(ACSD$Question_13_Asymptomatic))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Asymptomatic<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Asymptomatic))
ACSD$Question_13_Asymptomatic<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Asymptomatic))

#removing Fatigue values
ACSD$Question_13_Asymptomatic<-gsub("Fatigue","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing Muscle or body aches values
ACSD$Question_13_Asymptomatic<-gsub("Muscle or","2",
                                    as.character(ACSD$Question_13_Asymptomatic))
ACSD$Question_13_Asymptomatic<-gsub("body aches","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing Headache values
ACSD$Question_13_Asymptomatic<-gsub("Headache","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing New loss of taste or smell values
ACSD$Question_13_Asymptomatic<-gsub("New loss of","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

ACSD$Question_13_Asymptomatic<-gsub("taste or smell","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing Sore throat values
ACSD$Question_13_Asymptomatic<-gsub("Sore throat","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing Congestion or runny nose
ACSD$Question_13_Asymptomatic<-gsub("Congestion or","2",
                                    as.character(ACSD$Question_13_Asymptomatic))
ACSD$Question_13_Asymptomatic<-gsub("runny nose","2",
                                    as.character(ACSD$Question_13_Asymptomatic))
#removing Nausea or vomiting
ACSD$Question_13_Asymptomatic<-gsub("Nausea or vomiting","2",
                                    as.character(ACSD$Question_13_Asymptomatic))

#removing Diarrhea values
ACSD$Question_13_Asymptomatic<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Asymptomatic))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Asymptomatic<-gsub("Asymptomatic","1",as.character(ACSD$Question_13_Asymptomatic))
ACSD$Question_13_Asymptomatic<-gsub("No symptoms but tested positive","1",as.character(ACSD$Question_13_Asymptomatic))

#removing Other values
ACSD$Question_13_Asymptomatic<-gsub("Other","2",as.character(ACSD$Question_13_Asymptomatic))


#Rememving commas 
ACSD$Question_13_Asymptomatic<-
  gsub(",","",as.character(ACSD$Question_13_Asymptomatic))

#removing spaces
ACSD$Question_13_Asymptomatic<-
  gsub(" ","",as.character(ACSD$Question_13_Asymptomatic))
###################################################################Other
#removing Fever or chills values
ACSD$Question_13_Other<-gsub("Fever or chills","2",
                             as.character(ACSD$Question_13_Other))
#removing Cough values
ACSD$Question_13_Other<-gsub("Cough","2",
                             as.character(ACSD$Question_13_Other))
#removing Shortness of breath or difficulty breathing values
ACSD$Question_13_Other<-gsub("Shortness of breath","2",as.character(ACSD$Question_13_Other))
ACSD$Question_13_Other<-gsub("or difficulty breathing","2",as.character(ACSD$Question_13_Other))

#removing Fatigue values
ACSD$Question_13_Other<-gsub("Fatigue","2",
                             as.character(ACSD$Question_13_Other))

#removing Muscle or body aches values
ACSD$Question_13_Other<-gsub("Muscle or","2",
                             as.character(ACSD$Question_13_Other))
ACSD$Question_13_Other<-gsub("body aches","2",
                             as.character(ACSD$Question_13_Other))

#removing Headache values
ACSD$Question_13_Other<-gsub("Headache","2",
                             as.character(ACSD$Question_13_Other))

#removing New loss of taste or smell values
ACSD$Question_13_Other<-gsub("New loss of","2",
                             as.character(ACSD$Question_13_Other))

ACSD$Question_13_Other<-gsub("taste or smell","2",
                             as.character(ACSD$Question_13_Other))

#removing Sore throat values
ACSD$Question_13_Other<-gsub("Sore throat","2",
                             as.character(ACSD$Question_13_Other))

#removing Congestion or runny nose
ACSD$Question_13_Other<-gsub("Congestion or","2",
                             as.character(ACSD$Question_13_Other))
ACSD$Question_13_Other<-gsub("runny nose","2",
                             as.character(ACSD$Question_13_Other))
#removing Nausea or vomiting
ACSD$Question_13_Other<-gsub("Nausea or vomiting","2",
                             as.character(ACSD$Question_13_Other))

#removing Diarrhea values
ACSD$Question_13_Other<-gsub("Diarrhea","2",as.character(ACSD$Question_13_Other))

#removing Asymptomatic (No symptoms but tested positive) values
ACSD$Question_13_Other<-gsub("Asymptomatic","2",as.character(ACSD$Question_13_Other))
ACSD$Question_13_Other<-gsub("No symptoms but tested positive","2",as.character(ACSD$Question_13_Other))

#removing Other values
ACSD$Question_13_Other<-gsub("Other","1",as.character(ACSD$Question_13_Other))


#Rememving commas 
ACSD$Question_13_Other<-
  gsub(",","",as.character(ACSD$Question_13_Other))

#removing spaces
ACSD$Question_13_Other<-
  gsub(" ","",as.character(ACSD$Question_13_Other))
