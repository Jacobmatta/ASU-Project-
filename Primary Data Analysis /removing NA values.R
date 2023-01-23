library("dplyr")
library("tidyr")
library(readxl)

#importing dataset
Copy_of_ASU_Codebook_Combined_Copy <- read_excel("Copy of ASU_Codebook_Combined_Copy.xlsx")

CAC <- Copy_of_ASU_Codebook_Combined_Copy

#changing values to missing 
CAC %>% mutate(Event = replace_na(Event, "*"))

CAC %>% mutate(Gender = replace_na(Gender, "*"))

CAC %>% mutate(Age = replace_na(Age, "*"))

CAC %>% mutate(Specifiy_Race = replace_na(Specifiy_Race, "*"))