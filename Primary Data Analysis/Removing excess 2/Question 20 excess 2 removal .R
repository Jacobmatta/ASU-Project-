#changing missing values of conditions to "*"
Rawdata <- Rawdata %>% mutate(Q7...59_Avoiding= ifelse(is.na(Q7...59_Avoiding), "*", Q7...59_Avoiding))
Rawdata <- Rawdata %>% mutate(Q7...59_Basic_Health= ifelse(is.na(Q7...59_Basic_Health), "*", Q7...59_Basic_Health))
Rawdata <- Rawdata %>% mutate(Q7...59_COVID_19_Vacc = ifelse(is.na(Q7...59_COVID_19_Vacc), "*", Q7...59_COVID_19_Vacc))
Rawdata <- Rawdata %>% mutate(Q7...59_Following_recommendations = ifelse(is.na(Q7...59_Following_recommendations), "*", Q7...59_Following_recommendations))
Rawdata <- Rawdata %>% mutate(Q7...59_Getting_tested = ifelse(is.na(Q7...59_Getting_tested), "*", Q7...59_Getting_tested))
Rawdata <- Rawdata %>% mutate(Q7...59_Improving_ventilation = ifelse(is.na(Q7...59_Improving_ventilation), "*", Q7...59_Improving_ventilation))
Rawdata <- Rawdata %>% mutate(Q7...59_Seeking = ifelse(is.na(Q7...59_Seeking), "*", Q7...59_Seeking))
Rawdata <- Rawdata %>% mutate(Q7...59_Staying_home = ifelse(is.na(Q7...59_Staying_home), "*", Q7...59_Staying_home))

####################################cleaning for Avoiding
#removing parenthesis 
Rawdata$Q7...59_Avoiding<-gsub("[()]","",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("222222","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("22222","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("2222","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("222","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("22","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning long 2's 
Rawdata$Q7...59_Avoiding<-gsub("2","*",
                            as.character(Rawdata$Q7...59_Avoiding))
#cleaning previous entered data 
Rawdata$Q7...59_Avoiding<-gsub("678","*",
                            as.character(Rawdata$Q7...59_Avoiding))
Rawdata$Q7...59_Avoiding<-gsub("7","*",
                            as.character(Rawdata$Q7...59_Avoiding))
Rawdata$Q7...59_Avoiding<-gsub("4","*",
                            as.character(Rawdata$Q7...59_Avoiding))
####################################cleaning for Q7...59_Basic_Health
#removing parenthesis 
Rawdata$Q7...59_Basic_Health<-gsub("[()]","",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("222222","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("22222","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("2222","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("222","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("22","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning long 2's 
Rawdata$Q7...59_Basic_Health<-gsub("2","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
#cleaning previous entered data 
Rawdata$Q7...59_Basic_Health<-gsub("678","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
Rawdata$Q7...59_Basic_Health<-gsub("7","*",
                            as.character(Rawdata$Q7...59_Basic_Health))
Rawdata$Q7...59_Basic_Health<-gsub("4","*",
                            as.character(Rawdata$Q7...59_Basic_Health))

####################################cleaning for Q7...59_COVID_19_Vacc
#removing parenthesis 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("[()]","",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("222222","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("22222","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("2222","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("222","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("22","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning long 2's 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("2","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
#cleaning previous entered data 
Rawdata$Q7...59_COVID_19_Vacc<-gsub("678","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
Rawdata$Q7...59_COVID_19_Vacc<-gsub("7","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
Rawdata$Q7...59_COVID_19_Vacc<-gsub("4","*",
                                          as.character(Rawdata$Q7...59_COVID_19_Vacc))
####################################cleaning for Following_recommendations
#removing parenthesis 
Rawdata$Q7...59_Following_recommendations<-gsub("[()]","",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("222222","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("22222","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("2222","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("222","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("22","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning long 2's 
Rawdata$Q7...59_Following_recommendations<-gsub("2","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
#cleaning previous entered data 
Rawdata$Q7...59_Following_recommendations<-gsub("678","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
Rawdata$Q7...59_Following_recommendations<-gsub("7","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
Rawdata$Q7...59_Following_recommendations<-gsub("4","*",
                              as.character(Rawdata$Q7...59_Following_recommendations))
####################################cleaning for Getting_tested
#removing parenthesis 
Rawdata$Q7...59_Getting_tested<-gsub("[()]","",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("222222","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("22222","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("2222","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("222","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("22","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning long 2's 
Rawdata$Q7...59_Getting_tested<-gsub("2","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
#cleaning previous entered data 
Rawdata$Q7...59_Getting_tested<-gsub("678","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
Rawdata$Q7...59_Getting_tested<-gsub("7","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
Rawdata$Q7...59_Getting_tested<-gsub("4","*",
                                        as.character(Rawdata$Q7...59_Getting_tested))
Rawdata$Q7...59_Getting_tested<-gsub("11","1",
                                        as.character(Rawdata$Q7...59_Getting_tested))
####################################cleaning for Improving_ventilation
#removing parenthesis 
Rawdata$Q7...59_Improving_ventilation<-gsub("[()]","",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("222222","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("22222","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("2222","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("222","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("22","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning long 2's 
Rawdata$Q7...59_Improving_ventilation<-gsub("2","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
#cleaning previous entered data 
Rawdata$Q7...59_Improving_ventilation<-gsub("678","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
Rawdata$Q7...59_Improving_ventilation<-gsub("7","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
Rawdata$Q7...59_Improving_ventilation<-gsub("4","*",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
Rawdata$Q7...59_Improving_ventilation<-gsub("11","1",
                               as.character(Rawdata$Q7...59_Improving_ventilation))
####################################cleaning for Q7...59_Seeking
#removing parenthesis 
Rawdata$Q7...59_Seeking<-gsub("[()]","",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("222222","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("22222","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("2222","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("222","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("22","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning long 2's 
Rawdata$Q7...59_Seeking<-gsub("2","*",
                                    as.character(Rawdata$Q7...59_Seeking))
#cleaning previous entered data 
Rawdata$Q7...59_Seeking<-gsub("678","*",
                                    as.character(Rawdata$Q7...59_Seeking))
Rawdata$Q7...59_Seeking<-gsub("7","*",
                                    as.character(Rawdata$Q7...59_Seeking))
Rawdata$Q7...59_Seeking<-gsub("4","*",
                                    as.character(Rawdata$Q7...59_Seeking))
Rawdata$Q7...59_Seeking<-gsub("11","1",
                                    as.character(Rawdata$Q7...59_Seeking))
####################################cleaning for Q7...59_Staying_home
#removing parenthesis 
Rawdata$Q7...59_Staying_home<-gsub("[()]","",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("222222","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("22222","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("2222","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("222","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("22","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning long 2's 
Rawdata$Q7...59_Staying_home<-gsub("2","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
#cleaning previous entered data 
Rawdata$Q7...59_Staying_home<-gsub("678","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
Rawdata$Q7...59_Staying_home<-gsub("7","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
Rawdata$Q7...59_Staying_home<-gsub("4","*",
                                  as.character(Rawdata$Q7...59_Staying_home))
Rawdata$Q7...59_Staying_home<-gsub("11","1",
                                  as.character(Rawdata$Q7...59_Staying_home))
