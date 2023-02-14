install.packages("stringr")
library(stringr)

abc <- Health_Literacy_Survey_full_survey_January_13[-c(1), 
                                                     c('ResponseId', 'Q4...52')]
names(abc)[names(abc) == "Q4...52"] <- "symptoms"
abc$symptoms <- str_split_fixed(abc$symptoms," ,", 14)

Health_Literacy_Survey_full_survey_January_13 <- 
  merge(Health_Literacy_Survey_full_survey_January_13, abc, 
        by = 'ResponseId', all.x = TRUE)

Health_Literacy_Survey_full_survey_January_13$symptoms <- ifelse(Health_Literacy_Survey_full_survey_January_13$symptoms == "Asymptomatic (No symptoms but tested positive)", 1, 0)

table(Health_Literacy_Survey_full_survey_January_13$symptoms)

table(Health_Literacy_Survey_full_survey_January_13$Q4...52, useNA = "ifany")
