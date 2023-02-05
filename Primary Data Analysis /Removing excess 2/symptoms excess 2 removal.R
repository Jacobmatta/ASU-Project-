#changing missing values of conditions to "*"
CAC <- CAC %>% mutate(Question_13_Fever = ifelse(is.na(Question_13_Fever), "*", Question_13_Fever))
CAC <- CAC %>% mutate(Question_13_Cough = ifelse(is.na(Question_13_Cough), "*", Question_13_Cough))
CAC <- CAC %>% mutate(Question_13_Shortness_of_breath = ifelse(is.na(Question_13_Shortness_of_breath), "*", Question_13_Shortness_of_breath))
CAC <- CAC %>% mutate(Question_13_Fatigue = ifelse(is.na(Question_13_Fatigue), "*", Question_13_Fatigue))
CAC <- CAC %>% mutate(Question_13_Muscle_Body_Aches = ifelse(is.na(Question_13_Muscle_Body_Aches), "*", Question_13_Muscle_Body_Aches))
CAC <- CAC %>% mutate(Question_13_Headache = ifelse(is.na(Question_13_Headache), "*", Question_13_Headache))
CAC <- CAC %>% mutate(Question_13_Loss_of_Taste = ifelse(is.na(Question_13_Loss_of_Taste), "*", Question_13_Loss_of_Taste))
CAC <- CAC %>% mutate(Question_13_Sore_Throat = ifelse(is.na(Question_13_Sore_Throat), "*", Question_13_Sore_Throat))
CAC <- CAC %>% mutate(Question_13_Congestion = ifelse(is.na(Question_13_Congestion), "*", Question_13_Congestion))
CAC <- CAC %>% mutate(Question_13_Nausea = ifelse(is.na(Question_13_Nausea), "*", Question_13_Nausea))
CAC <- CAC %>% mutate(Question_13_Diarrhea = ifelse(is.na(Question_13_Diarrhea), "*", Question_13_Diarrhea))
CAC <- CAC %>% mutate(Question_13_Asymptomatic = ifelse(is.na(Question_13_Asymptomatic), "*", Question_13_Asymptomatic))
CAC <- CAC %>% mutate(Question_13_Other = ifelse(is.na(Question_13_Other), "*", Question_13_Other))
####################################cleaning for Fever
#removing parenthesis 
CAC$Question_13_Fever<-gsub("[()]","",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("222222","*",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("22222","*",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("2222","*",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("222","*",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("22","*",
                            as.character(CAC$Question_13_Fever))
#cleaning long 2's 
CAC$Question_13_Fever<-gsub("2","*",
                            as.character(CAC$Question_13_Fever))
#cleaning previous entered data 
CAC$Question_13_Fever<-gsub("678","*",
                            as.character(CAC$Question_13_Fever))
CAC$Question_13_Fever<-gsub("7","*",
                            as.character(CAC$Question_13_Fever))
CAC$Question_13_Fever<-gsub("4","*",
                            as.character(CAC$Question_13_Fever))
####################################cleaning for Cough
#removing parenthesis 
CAC$Question_13_Cough<-gsub("[()]","",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("222222","*",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("22222","*",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("2222","*",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("222","*",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("22","*",
                            as.character(CAC$Question_13_Cough))
#cleaning long 2's 
CAC$Question_13_Cough<-gsub("2","*",
                            as.character(CAC$Question_13_Cough))
#cleaning previous entered data 
CAC$Question_13_Cough<-gsub("678","*",
                            as.character(CAC$Question_13_Cough))
CAC$Question_13_Cough<-gsub("7","*",
                            as.character(CAC$Question_13_Cough))
CAC$Question_13_Cough<-gsub("4","*",
                            as.character(CAC$Question_13_Cough))

####################################cleaning for shortness_of_breath
#removing parenthesis 
CAC$Question_13_Shortness_of_breath<-gsub("[()]","",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("222222","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("22222","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("2222","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("222","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("22","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning long 2's 
CAC$Question_13_Shortness_of_breath<-gsub("2","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
#cleaning previous entered data 
CAC$Question_13_Shortness_of_breath<-gsub("678","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
CAC$Question_13_Shortness_of_breath<-gsub("7","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
CAC$Question_13_Shortness_of_breath<-gsub("4","*",
                                          as.character(CAC$Question_13_Shortness_of_breath))
####################################cleaning for Fatigue
#removing parenthesis 
CAC$Question_13_Fatigue<-gsub("[()]","",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("222222","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("22222","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("2222","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("222","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("22","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning long 2's 
CAC$Question_13_Fatigue<-gsub("2","*",
                              as.character(CAC$Question_13_Fatigue))
#cleaning previous entered data 
CAC$Question_13_Fatigue<-gsub("678","*",
                              as.character(CAC$Question_13_Fatigue))
CAC$Question_13_Fatigue<-gsub("7","*",
                              as.character(CAC$Question_13_Fatigue))
CAC$Question_13_Fatigue<-gsub("4","*",
                              as.character(CAC$Question_13_Fatigue))
####################################cleaning for Muscle_Body_Aches
#removing parenthesis 
CAC$Question_13_Muscle_Body_Aches<-gsub("[()]","",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("222222","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("22222","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("2222","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("222","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("22","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning long 2's 
CAC$Question_13_Muscle_Body_Aches<-gsub("2","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
#cleaning previous entered data 
CAC$Question_13_Muscle_Body_Aches<-gsub("678","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
CAC$Question_13_Muscle_Body_Aches<-gsub("7","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
CAC$Question_13_Muscle_Body_Aches<-gsub("4","*",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
CAC$Question_13_Muscle_Body_Aches<-gsub("11","1",
                                        as.character(CAC$Question_13_Muscle_Body_Aches))
####################################cleaning for Headache
#removing parenthesis 
CAC$Question_13_Headache<-gsub("[()]","",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("222222","*",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("22222","*",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("2222","*",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("222","*",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("22","*",
                               as.character(CAC$Question_13_Headache))
#cleaning long 2's 
CAC$Question_13_Headache<-gsub("2","*",
                               as.character(CAC$Question_13_Headache))
#cleaning previous entered data 
CAC$Question_13_Headache<-gsub("678","*",
                               as.character(CAC$Question_13_Headache))
CAC$Question_13_Headache<-gsub("7","*",
                               as.character(CAC$Question_13_Headache))
CAC$Question_13_Headache<-gsub("4","*",
                               as.character(CAC$Question_13_Headache))
CAC$Question_13_Headache<-gsub("11","1",
                               as.character(CAC$Question_13_Headache))
####################################cleaning for Loss_of_Taste
#removing parenthesis 
CAC$Question_13_Loss_of_Taste<-gsub("[()]","",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("222222","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("22222","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("2222","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("222","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("22","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning long 2's 
CAC$Question_13_Loss_of_Taste<-gsub("2","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
#cleaning previous entered data 
CAC$Question_13_Loss_of_Taste<-gsub("678","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
CAC$Question_13_Loss_of_Taste<-gsub("7","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
CAC$Question_13_Loss_of_Taste<-gsub("4","*",
                                    as.character(CAC$Question_13_Loss_of_Taste))
CAC$Question_13_Loss_of_Taste<-gsub("11","1",
                                    as.character(CAC$Question_13_Loss_of_Taste))
####################################cleaning for Sore_Throat
#removing parenthesis 
CAC$Question_13_Sore_Throat<-gsub("[()]","",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("222222","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("22222","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("2222","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("222","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("22","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning long 2's 
CAC$Question_13_Sore_Throat<-gsub("2","*",
                                  as.character(CAC$Question_13_Sore_Throat))
#cleaning previous entered data 
CAC$Question_13_Sore_Throat<-gsub("678","*",
                                  as.character(CAC$Question_13_Sore_Throat))
CAC$Question_13_Sore_Throat<-gsub("7","*",
                                  as.character(CAC$Question_13_Sore_Throat))
CAC$Question_13_Sore_Throat<-gsub("4","*",
                                  as.character(CAC$Question_13_Sore_Throat))
CAC$Question_13_Sore_Throat<-gsub("11","1",
                                  as.character(CAC$Question_13_Sore_Throat))
####################################cleaning for Congestion
#removing parenthesis 
CAC$Question_13_Congestion<-gsub("[()]","",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("222222","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("22222","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("2222","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("222","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("22","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning long 2's 
CAC$Question_13_Congestion<-gsub("2","*",
                                 as.character(CAC$Question_13_Congestion))
#cleaning previous entered data 
CAC$Question_13_Congestion<-gsub("678","*",
                                 as.character(CAC$Question_13_Congestion))
CAC$Question_13_Congestion<-gsub("7","*",
                                 as.character(CAC$Question_13_Congestion))
CAC$Question_13_Congestion<-gsub("4","*",
                                 as.character(CAC$Question_13_Congestion))
####################################cleaning for Nausea
#removing parenthesis 
CAC$Question_13_Nausea<-gsub("[()]","",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("222222","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("22222","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("2222","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("222","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("22","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning long 2's 
CAC$Question_13_Nausea<-gsub("2","*",
                             as.character(CAC$Question_13_Nausea))
#cleaning previous entered data 
CAC$Question_13_Nausea<-gsub("678","*",
                             as.character(CAC$Question_13_Nausea))
CAC$Question_13_Nausea<-gsub("7","*",
                             as.character(CAC$Question_13_Nausea))
CAC$Question_13_Nausea<-gsub("4","*",
                             as.character(CAC$Question_13_Nausea))
####################################cleaning for _Diarrhea
#removing parenthesis 
CAC$Question_13_Diarrhea<-gsub("[()]","",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("222222","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("22222","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("2222","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("222","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("22","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning long 2's 
CAC$Question_13_Diarrhea<-gsub("2","*",
                               as.character(CAC$Question_13_Diarrhea))
#cleaning previous entered data 
CAC$Question_13_Diarrhea<-gsub("678","*",
                               as.character(CAC$Question_13_Diarrhea))
CAC$Question_13_Diarrhea<-gsub("7","*",
                               as.character(CAC$Question_13_Diarrhea))
CAC$Question_13_Diarrhea<-gsub("4","*",
                               as.character(CAC$Question_13_Diarrhea))
####################################cleaning for Asymptomatic
#removing parenthesis 
CAC$Question_13_Asymptomatic<-gsub("[()]","",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("222222","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("22222","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("2222","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("222","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("22","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning long 2's 
CAC$Question_13_Asymptomatic<-gsub("2","*",
                                   as.character(CAC$Question_13_Asymptomatic))
#cleaning previous entered data 
CAC$Question_13_Asymptomatic<-gsub("678","*",
                                   as.character(CAC$Question_13_Asymptomatic))
CAC$Question_13_Asymptomatic<-gsub("7","*",
                                   as.character(CAC$Question_13_Asymptomatic))
CAC$Question_13_Asymptomatic<-gsub("4","*",
                                   as.character(CAC$Question_13_Asymptomatic))
####################################cleaning for Other
#removing parenthesis 
CAC$Question_13_Other<-gsub("[()]","",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("222222","*",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("22222","*",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("2222","*",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("222","*",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("22","*",
                            as.character(CAC$Question_13_Other))
#cleaning long 2's 
CAC$Question_13_Other<-gsub("2","*",
                            as.character(CAC$Question_13_Other))
#cleaning previous entered data 
CAC$Question_13_Other<-gsub("678","*",
                            as.character(CAC$Question_13_Other))
CAC$Question_13_Other<-gsub("7","*",
                            as.character(CAC$Question_13_Other))
CAC$Question_13_Other<-gsub("4","*",
                            as.character(CAC$Question_13_Other))

