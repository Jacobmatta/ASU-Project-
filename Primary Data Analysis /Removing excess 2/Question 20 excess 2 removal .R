#changing missing values of conditions to "*"
CAC <- CAC %>% mutate(Question_20_Avoiding= ifelse(is.na(Question_20_Avoiding), "*", Question_20_Avoiding))
CAC <- CAC %>% mutate(Question_20_Basic_Health= ifelse(is.na(Question_20_Basic_Health), "*", Question_20_Basic_Health))
CAC <- CAC %>% mutate(Question_20_COVID_19_Vacc = ifelse(is.na(Question_20_COVID_19_Vacc), "*", Question_20_COVID_19_Vacc))
CAC <- CAC %>% mutate(Question_20_Following_recommendations = ifelse(is.na(Question_20_Following_recommendations), "*", Question_20_Following_recommendations))
CAC <- CAC %>% mutate(Question_20_Getting_tested = ifelse(is.na(Question_20_Getting_tested), "*", Question_20_Getting_tested))
CAC <- CAC %>% mutate(Question_20_Improving_ventilation = ifelse(is.na(Question_20_Improving_ventilation), "*", Question_20_Improving_ventilation))
CAC <- CAC %>% mutate(Question_20_Seeking = ifelse(is.na(Question_20_Seeking), "*", Question_20_Seeking))
CAC <- CAC %>% mutate(Question_20_Staying_home = ifelse(is.na(Question_20_Staying_home), "*", Question_20_Staying_home))

####################################cleaning for Avoiding
#removing parenthesis 
CAC$Question_20_Avoiding<-gsub("[()]","",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("222222","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("22222","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("2222","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("222","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("22","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning long 2's 
CAC$Question_20_Avoiding<-gsub("2","*",
                            as.character(CAC$Question_20_Avoiding))
#cleaning previous entered data 
CAC$Question_20_Avoiding<-gsub("678","*",
                            as.character(CAC$Question_20_Avoiding))
CAC$Question_20_Avoiding<-gsub("7","*",
                            as.character(CAC$Question_20_Avoiding))
CAC$Question_20_Avoiding<-gsub("4","*",
                            as.character(CAC$Question_20_Avoiding))
####################################cleaning for Question_20_Basic_Health
#removing parenthesis 
CAC$Question_20_Basic_Health<-gsub("[()]","",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("222222","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("22222","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("2222","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("222","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("22","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning long 2's 
CAC$Question_20_Basic_Health<-gsub("2","*",
                            as.character(CAC$Question_20_Basic_Health))
#cleaning previous entered data 
CAC$Question_20_Basic_Health<-gsub("678","*",
                            as.character(CAC$Question_20_Basic_Health))
CAC$Question_20_Basic_Health<-gsub("7","*",
                            as.character(CAC$Question_20_Basic_Health))
CAC$Question_20_Basic_Health<-gsub("4","*",
                            as.character(CAC$Question_20_Basic_Health))

####################################cleaning for Question_20_COVID_19_Vacc
#removing parenthesis 
CAC$Question_20_COVID_19_Vacc<-gsub("[()]","",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("222222","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("22222","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("2222","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("222","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("22","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning long 2's 
CAC$Question_20_COVID_19_Vacc<-gsub("2","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
#cleaning previous entered data 
CAC$Question_20_COVID_19_Vacc<-gsub("678","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
CAC$Question_20_COVID_19_Vacc<-gsub("7","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
CAC$Question_20_COVID_19_Vacc<-gsub("4","*",
                                          as.character(CAC$Question_20_COVID_19_Vacc))
####################################cleaning for Following_recommendations
#removing parenthesis 
CAC$Question_20_Following_recommendations<-gsub("[()]","",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("222222","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("22222","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("2222","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("222","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("22","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning long 2's 
CAC$Question_20_Following_recommendations<-gsub("2","*",
                              as.character(CAC$Question_20_Following_recommendations))
#cleaning previous entered data 
CAC$Question_20_Following_recommendations<-gsub("678","*",
                              as.character(CAC$Question_20_Following_recommendations))
CAC$Question_20_Following_recommendations<-gsub("7","*",
                              as.character(CAC$Question_20_Following_recommendations))
CAC$Question_20_Following_recommendations<-gsub("4","*",
                              as.character(CAC$Question_20_Following_recommendations))
####################################cleaning for Getting_tested
#removing parenthesis 
CAC$Question_20_Getting_tested<-gsub("[()]","",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("222222","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("22222","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("2222","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("222","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("22","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning long 2's 
CAC$Question_20_Getting_tested<-gsub("2","*",
                                        as.character(CAC$Question_20_Getting_tested))
#cleaning previous entered data 
CAC$Question_20_Getting_tested<-gsub("678","*",
                                        as.character(CAC$Question_20_Getting_tested))
CAC$Question_20_Getting_tested<-gsub("7","*",
                                        as.character(CAC$Question_20_Getting_tested))
CAC$Question_20_Getting_tested<-gsub("4","*",
                                        as.character(CAC$Question_20_Getting_tested))
CAC$Question_20_Getting_tested<-gsub("11","1",
                                        as.character(CAC$Question_20_Getting_tested))
####################################cleaning for Improving_ventilation
#removing parenthesis 
CAC$Question_20_Improving_ventilation<-gsub("[()]","",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("222222","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("22222","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("2222","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("222","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("22","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning long 2's 
CAC$Question_20_Improving_ventilation<-gsub("2","*",
                               as.character(CAC$Question_20_Improving_ventilation))
#cleaning previous entered data 
CAC$Question_20_Improving_ventilation<-gsub("678","*",
                               as.character(CAC$Question_20_Improving_ventilation))
CAC$Question_20_Improving_ventilation<-gsub("7","*",
                               as.character(CAC$Question_20_Improving_ventilation))
CAC$Question_20_Improving_ventilation<-gsub("4","*",
                               as.character(CAC$Question_20_Improving_ventilation))
CAC$Question_20_Improving_ventilation<-gsub("11","1",
                               as.character(CAC$Question_20_Improving_ventilation))
####################################cleaning for Question_20_Seeking
#removing parenthesis 
CAC$Question_20_Seeking<-gsub("[()]","",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("222222","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("22222","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("2222","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("222","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("22","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning long 2's 
CAC$Question_20_Seeking<-gsub("2","*",
                                    as.character(CAC$Question_20_Seeking))
#cleaning previous entered data 
CAC$Question_20_Seeking<-gsub("678","*",
                                    as.character(CAC$Question_20_Seeking))
CAC$Question_20_Seeking<-gsub("7","*",
                                    as.character(CAC$Question_20_Seeking))
CAC$Question_20_Seeking<-gsub("4","*",
                                    as.character(CAC$Question_20_Seeking))
CAC$Question_20_Seeking<-gsub("11","1",
                                    as.character(CAC$Question_20_Seeking))
####################################cleaning for Question_20_Staying_home
#removing parenthesis 
CAC$Question_20_Staying_home<-gsub("[()]","",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("222222","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("22222","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("2222","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("222","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("22","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning long 2's 
CAC$Question_20_Staying_home<-gsub("2","*",
                                  as.character(CAC$Question_20_Staying_home))
#cleaning previous entered data 
CAC$Question_20_Staying_home<-gsub("678","*",
                                  as.character(CAC$Question_20_Staying_home))
CAC$Question_20_Staying_home<-gsub("7","*",
                                  as.character(CAC$Question_20_Staying_home))
CAC$Question_20_Staying_home<-gsub("4","*",
                                  as.character(CAC$Question_20_Staying_home))
CAC$Question_20_Staying_home<-gsub("11","1",
                                  as.character(CAC$Question_20_Staying_home))
