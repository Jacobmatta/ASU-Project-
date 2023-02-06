#changing missing values of conditions to "*"
Rawdata <- Rawdata %>% mutate(Q4...52_Fever = ifelse(is.na(Q4...52_Fever), "*", Q4...52_Fever))
Rawdata <- Rawdata %>% mutate(Q4...52_Cough = ifelse(is.na(Q4...52_Cough), "*", Q4...52_Cough))
Rawdata <- Rawdata %>% mutate(Q4...52_Shortness_of_breath = ifelse(is.na(Q4...52_Shortness_of_breath), "*", Q4...52_Shortness_of_breath))
Rawdata <- Rawdata %>% mutate(Q4...52_Fatigue = ifelse(is.na(Q4...52_Fatigue), "*", Q4...52_Fatigue))
Rawdata <- Rawdata %>% mutate(Q4...52_Muscle_Body_Aches = ifelse(is.na(Q4...52_Muscle_Body_Aches), "*", Q4...52_Muscle_Body_Aches))
Rawdata <- Rawdata %>% mutate(Q4...52_Headache = ifelse(is.na(Q4...52_Headache), "*", Q4...52_Headache))
Rawdata <- Rawdata %>% mutate(Q4...52_Loss_of_Taste = ifelse(is.na(Q4...52_Loss_of_Taste), "*", Q4...52_Loss_of_Taste))
Rawdata <- Rawdata %>% mutate(Q4...52_Sore_Throat = ifelse(is.na(Q4...52_Sore_Throat), "*", Q4...52_Sore_Throat))
Rawdata <- Rawdata %>% mutate(Q4...52_Congestion = ifelse(is.na(Q4...52_Congestion), "*", Q4...52_Congestion))
Rawdata <- Rawdata %>% mutate(Q4...52_Nausea = ifelse(is.na(Q4...52_Nausea), "*", Q4...52_Nausea))
Rawdata <- Rawdata %>% mutate(Q4...52_Diarrhea = ifelse(is.na(Q4...52_Diarrhea), "*", Q4...52_Diarrhea))
Rawdata <- Rawdata %>% mutate(Q4...52_Asymptomatic = ifelse(is.na(Q4...52_Asymptomatic), "*", Q4...52_Asymptomatic))
Rawdata <- Rawdata %>% mutate(Q4...52_Other = ifelse(is.na(Q4...52_Other), "*", Q4...52_Other))
####################################cleaning for Fever
#removing parenthesis 
Rawdata$Q4...52_Fever<-gsub("[()]","",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("222222","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("22222","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("2222","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("222","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("22","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning long 2's 
Rawdata$Q4...52_Fever<-gsub("2","*",
                            as.character(Rawdata$Q4...52_Fever))
#cleaning previous entered data 
Rawdata$Q4...52_Fever<-gsub("678","*",
                            as.character(Rawdata$Q4...52_Fever))
Rawdata$Q4...52_Fever<-gsub("7","*",
                            as.character(Rawdata$Q4...52_Fever))
Rawdata$Q4...52_Fever<-gsub("4","*",
                            as.character(Rawdata$Q4...52_Fever))
####################################cleaning for Cough
#removing parenthesis 
Rawdata$Q4...52_Cough<-gsub("[()]","",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("222222","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("22222","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("2222","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("222","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("22","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning long 2's 
Rawdata$Q4...52_Cough<-gsub("2","*",
                            as.character(Rawdata$Q4...52_Cough))
#cleaning previous entered data 
Rawdata$Q4...52_Cough<-gsub("678","*",
                            as.character(Rawdata$Q4...52_Cough))
Rawdata$Q4...52_Cough<-gsub("7","*",
                            as.character(Rawdata$Q4...52_Cough))
Rawdata$Q4...52_Cough<-gsub("4","*",
                            as.character(Rawdata$Q4...52_Cough))

####################################cleaning for shortness_of_breath
#removing parenthesis 
Rawdata$Q4...52_Shortness_of_breath<-gsub("[()]","",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("222222","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("22222","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("2222","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("222","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("22","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning long 2's 
Rawdata$Q4...52_Shortness_of_breath<-gsub("2","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
#cleaning previous entered data 
Rawdata$Q4...52_Shortness_of_breath<-gsub("678","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
Rawdata$Q4...52_Shortness_of_breath<-gsub("7","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
Rawdata$Q4...52_Shortness_of_breath<-gsub("4","*",
                                          as.character(Rawdata$Q4...52_Shortness_of_breath))
####################################cleaning for Fatigue
#removing parenthesis 
Rawdata$Q4...52_Fatigue<-gsub("[()]","",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("222222","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("22222","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("2222","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("222","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("22","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning long 2's 
Rawdata$Q4...52_Fatigue<-gsub("2","*",
                              as.character(Rawdata$Q4...52_Fatigue))
#cleaning previous entered data 
Rawdata$Q4...52_Fatigue<-gsub("678","*",
                              as.character(Rawdata$Q4...52_Fatigue))
Rawdata$Q4...52_Fatigue<-gsub("7","*",
                              as.character(Rawdata$Q4...52_Fatigue))
Rawdata$Q4...52_Fatigue<-gsub("4","*",
                              as.character(Rawdata$Q4...52_Fatigue))
####################################cleaning for Muscle_Body_Aches
#removing parenthesis 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("[()]","",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("222222","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("22222","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("2222","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("222","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("22","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning long 2's 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("2","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
#cleaning previous entered data 
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("678","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("7","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("4","*",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
Rawdata$Q4...52_Muscle_Body_Aches<-gsub("11","1",
                                        as.character(Rawdata$Q4...52_Muscle_Body_Aches))
####################################cleaning for Headache
#removing parenthesis 
Rawdata$Q4...52_Headache<-gsub("[()]","",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("222222","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("22222","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("2222","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("222","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("22","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning long 2's 
Rawdata$Q4...52_Headache<-gsub("2","*",
                               as.character(Rawdata$Q4...52_Headache))
#cleaning previous entered data 
Rawdata$Q4...52_Headache<-gsub("678","*",
                               as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("7","*",
                               as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("4","*",
                               as.character(Rawdata$Q4...52_Headache))
Rawdata$Q4...52_Headache<-gsub("11","1",
                               as.character(Rawdata$Q4...52_Headache))
####################################cleaning for Loss_of_Taste
#removing parenthesis 
Rawdata$Q4...52_Loss_of_Taste<-gsub("[()]","",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("222222","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("22222","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("2222","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("222","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("22","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning long 2's 
Rawdata$Q4...52_Loss_of_Taste<-gsub("2","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
#cleaning previous entered data 
Rawdata$Q4...52_Loss_of_Taste<-gsub("678","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("7","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("4","*",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
Rawdata$Q4...52_Loss_of_Taste<-gsub("11","1",
                                    as.character(Rawdata$Q4...52_Loss_of_Taste))
####################################cleaning for Sore_Throat
#removing parenthesis 
Rawdata$Q4...52_Sore_Throat<-gsub("[()]","",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("222222","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("22222","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("2222","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("222","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("22","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning long 2's 
Rawdata$Q4...52_Sore_Throat<-gsub("2","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
#cleaning previous entered data 
Rawdata$Q4...52_Sore_Throat<-gsub("678","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("7","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("4","*",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
Rawdata$Q4...52_Sore_Throat<-gsub("11","1",
                                  as.character(Rawdata$Q4...52_Sore_Throat))
####################################cleaning for Congestion
#removing parenthesis 
Rawdata$Q4...52_Congestion<-gsub("[()]","",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("222222","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("22222","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("2222","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("222","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("22","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning long 2's 
Rawdata$Q4...52_Congestion<-gsub("2","*",
                                 as.character(Rawdata$Q4...52_Congestion))
#cleaning previous entered data 
Rawdata$Q4...52_Congestion<-gsub("678","*",
                                 as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("7","*",
                                 as.character(Rawdata$Q4...52_Congestion))
Rawdata$Q4...52_Congestion<-gsub("4","*",
                                 as.character(Rawdata$Q4...52_Congestion))
####################################cleaning for Nausea
#removing parenthesis 
Rawdata$Q4...52_Nausea<-gsub("[()]","",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("222222","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("22222","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("2222","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("222","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("22","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning long 2's 
Rawdata$Q4...52_Nausea<-gsub("2","*",
                             as.character(Rawdata$Q4...52_Nausea))
#cleaning previous entered data 
Rawdata$Q4...52_Nausea<-gsub("678","*",
                             as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("7","*",
                             as.character(Rawdata$Q4...52_Nausea))
Rawdata$Q4...52_Nausea<-gsub("4","*",
                             as.character(Rawdata$Q4...52_Nausea))
####################################cleaning for _Diarrhea
#removing parenthesis 
Rawdata$Q4...52_Diarrhea<-gsub("[()]","",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("222222","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("22222","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("2222","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("222","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("22","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning long 2's 
Rawdata$Q4...52_Diarrhea<-gsub("2","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
#cleaning previous entered data 
Rawdata$Q4...52_Diarrhea<-gsub("678","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("7","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
Rawdata$Q4...52_Diarrhea<-gsub("4","*",
                               as.character(Rawdata$Q4...52_Diarrhea))
####################################cleaning for Asymptomatic
#removing parenthesis 
Rawdata$Q4...52_Asymptomatic<-gsub("[()]","",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("222222","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("22222","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("2222","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("222","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("22","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning long 2's 
Rawdata$Q4...52_Asymptomatic<-gsub("2","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
#cleaning previous entered data 
Rawdata$Q4...52_Asymptomatic<-gsub("678","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("7","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
Rawdata$Q4...52_Asymptomatic<-gsub("4","*",
                                   as.character(Rawdata$Q4...52_Asymptomatic))
####################################cleaning for Other
#removing parenthesis 
Rawdata$Q4...52_Other<-gsub("[()]","",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("222222","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("22222","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("2222","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("222","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("22","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning long 2's 
Rawdata$Q4...52_Other<-gsub("2","*",
                            as.character(Rawdata$Q4...52_Other))
#cleaning previous entered data 
Rawdata$Q4...52_Other<-gsub("678","*",
                            as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("7","*",
                            as.character(Rawdata$Q4...52_Other))
Rawdata$Q4...52_Other<-gsub("4","*",
                            as.character(Rawdata$Q4...52_Other))

