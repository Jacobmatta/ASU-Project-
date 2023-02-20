#Week22 
#library
library(here)
library(readxl) #for loading Excel files
library(dplyr) #for data processing/cleaning
library(tidyr) #for data processing/cleaning

#upload 
data_location <- here("Secondary Data Analysis ","Data","Raw_data","Feb_16.xlsx")

#reading in data 
Feb_16 = read_excel(data_location)

glimpse(Feb_16)

#filtering data by  county   
Dougherty_Vax_Week22 <- filter(Feb_16, COUNTY_NAME == "Dougherty County")  
#replacing negative values with 0

Dougherty_Vax_Week22 [Dougherty_Vax_Week22 < 0] <- 0  

#organize the data. then separate into zips and add a zip code column   



#total vax column that sums the rows across for each census tract  

Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_vax_Week22 = sum(across(ends_with("VAX")), na.rm = T))  



#total vax column for male and female  

Dougherty_Vax_Week22 <- Dougherty_Vax_Week22  %>% rowwise() %>%   
  
  mutate(total_male_vax = sum(across(starts_with("M") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_female_vax = sum(across(starts_with("F") & ends_with("VAX")), na.rm = T))  



#total white, black, asian, other race male   

Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_masian_vax = sum(across(starts_with("MAsianNHPI") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_mblack_vax = sum(across(starts_with("MBlack") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22<- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_morace_vax = sum(across(starts_with("MOtherRace") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_mwhite_vax = sum(across(starts_with("MWhite") & ends_with("VAX")), na.rm = T))  



#total white, black, asian, other race female   



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_fasian_vax = sum(across(starts_with("FAsianNHPI") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_fblack_vax = sum(across(starts_with("FBlack") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_forace_vax = sum(across(starts_with("FOtherRace") & ends_with("VAX")), na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>%   
  
  mutate(total_fwhite_vax = sum(across(starts_with("FWhite") & ends_with("VAX")), na.rm = T))  



#Race totals (male + female )  



Dougherty_Vax_Week22$total_asian_vax <- Dougherty_Vax_Week22$total_masian_vax + Dougherty_Vax_Week22$total_fasian_vax  



Dougherty_Vax_Week22$total_black_vax <- Dougherty_Vax_Week22$total_mblack_vax + Dougherty_Vax_Week22$total_fblack_vax  



Dougherty_Vax_Week22$total_orace_vax <- Dougherty_Vax_Week22$total_morace_vax + Dougherty_Vax_Week22$total_forace_vax  



Dougherty_Vax_Week22$total_white_vax <- Dougherty_Vax_Week22$total_mwhite_vax + Dougherty_Vax_Week22$total_fwhite_vax  



#Summing for age totals: 05-09, 10-17, 18-44, 45-64, 65+  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_05_09_vax = sum(FAsianNHPI_05_09_VAX, MAsianNHPI_05_09_VAX, UAsianNHPI_05_09_VAX,FBlack_05_09_VAX, MBlack_05_09_VAX, UBlack_05_09_VAX,FNone_05_09_VAX, MNone_05_09_VAX, UNone_05_09_VAX,FOtherRace_05_09_VAX, MOtherRace_05_09_VAX, UOtherRace_05_09_VAX,FWhite_05_09_VAX, MWhite_05_09_VAX, UWhite_05_09_VAX, na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_10_17_vax = sum(FAsianNHPI_10_17_VAX, MAsianNHPI_10_17_VAX, UAsianNHPI_10_17_VAX,FBlack_10_17_VAX, MBlack_10_17_VAX, UBlack_10_17_VAX,FNone_10_17_VAX, MNone_10_17_VAX, UNone_10_17_VAX,FOtherRace_10_17_VAX, MOtherRace_10_17_VAX, UOtherRace_10_17_VAX,FWhite_10_17_VAX, MWhite_10_17_VAX, UWhite_10_17_VAX, na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_18_44_vax = sum(FAsianNHPI_18_44_VAX, MAsianNHPI_18_44_VAX, UAsianNHPI_18_44_VAX,FBlack_18_44_VAX, MBlack_18_44_VAX, UBlack_18_44_VAX,FNone_18_44_VAX, MNone_18_44_VAX, UNone_18_44_VAX,FOtherRace_18_44_VAX, MOtherRace_18_44_VAX, UOtherRace_18_44_VAX,FWhite_18_44_VAX, MWhite_18_44_VAX, UWhite_18_44_VAX, na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_45_64_vax = sum(FAsianNHPI_45_64_VAX, MAsianNHPI_45_64_VAX, UAsianNHPI_45_64_VAX,FBlack_45_64_VAX, MBlack_45_64_VAX, UBlack_45_64_VAX,FNone_45_64_VAX, MNone_45_64_VAX, UNone_45_64_VAX,FOtherRace_45_64_VAX, MOtherRace_45_64_VAX, UOtherRace_45_64_VAX,FWhite_45_64_VAX, MWhite_45_64_VAX, UWhite_45_64_VAX, na.rm = T))  



Dougherty_Vax_Week22 <- Dougherty_Vax_Week22 %>% rowwise() %>% mutate(total_65Plus_vax = sum(FAsianNHPI_65Plus_VAX, MAsianNHPI_65Plus_VAX, UAsianNHPI_65Plus_VAX,FBlack_65Plus_VAX, MBlack_65Plus_VAX, UBlack_65Plus_VAX,FNone_65Plus_VAX, MNone_65Plus_VAX, UNone_65Plus_VAX,FOtherRace_65Plus_VAX, MOtherRace_65Plus_VAX, UOtherRace_65Plus_VAX,FWhite_65Plus_VAX, MWhite_65Plus_VAX, UWhite_65Plus_VAX, na.rm = T))  



#Extract necessary variables only  

Dougherty_Vax_Week22_compressed <- Dougherty_Vax_Week22[,c(1:4,185:204)]  



#filtering data by zip: 31701  

Zip_31701_Week22<-filter(Dougherty_Vax_Week22_compressed,FIPS=="13095000700" | FIPS=="13095000800" | FIPS=="13095001403" | FIPS=="13095001500" | FIPS=="13095010601" | FIPS=="13095011300" | FIPS=="13095011400" | FIPS=="13095010602")  



#filtering data by zip: 31705  

Zip_31705_Week22 <- filter(Dougherty_Vax_Week22_compressed, FIPS=="13095000100" | FIPS=="13095000200" | FIPS=="13095010302" | FIPS=="13095010700" | FIPS=="13095010900" | FIPS=="13095011000" | FIPS=="13095011200" | FIPS=="13095011600")  


#filtering data by zip: 31707  

Zip_31707_Week22 <- filter(Dougherty_Vax_Week22_compressed, FIPS=="13095000400" | FIPS=="13095000501" | FIPS=="13095000502" | FIPS=="13095000600" | FIPS=="13095000900" | FIPS=="13095001000" | FIPS=="13095001100")  
#Change the column names for 31701 Week22  
colnames(Zip_31701_Week22) <- c("FIPS", "GEONAME", "COUNTY_ID", "COUNTY_NAME", "total_vax_Feb_16", "total_male_vax_Feb_16", "total_female_vax_Feb_16", "total_masian_vax_Feb_16", "total_mblack_vax_Feb_16", "total_morace_vax_Feb_16", "total_mwhite_vax_Feb_16", "total_fasian_vax_Feb_16", "total_fblack_vax_Feb_16", "total_forace_vax_Feb_16", "total_fwhite_vax_Feb_16", "total_asian_vax_Feb_16","total_black_vax_Feb_16", "total_orace_vax_Feb_16", "total_white_vax_Feb_16", "total_05_09_vax_Feb_16", "total_10_17_vax_Feb_16", "total_18_44_vax_Feb_16", "total_45_64_vax_Feb_16", "total_65Plus_vax_Feb_16") 
#change column names for 31705 Week22  
colnames(Zip_31705_Week22) <- c("FIPS", "GEONAME", "COUNTY_ID", "COUNTY_NAME", "total_vax_Feb_16", "total_male_vax_Feb_16", "total_female_vax_Feb_16", "total_masian_vax_Feb_16", "total_mblack_vax_Feb_16", "total_morace_vax_Feb_16", "total_mwhite_vax_Feb_16", "total_fasian_vax_Feb_16", "total_fblack_vax_Feb_16", "total_forace_vax_Feb_16", "total_fwhite_vax_Feb_16", "total_asian_vax_Feb_16","total_black_vax_Feb_16", "total_orace_vax_Feb_16", "total_white_vax_Feb_16", "total_05_09_vax_Feb_16", "total_10_17_vax_Feb_16", "total_18_44_vax_Feb_16", "total_45_64_vax_Feb_16", "total_65Plus_vax_Feb_16") 
#change column names for 31707 Week22  
colnames(Zip_31707_Week22) <- c("FIPS", "GEONAME", "COUNTY_ID", "COUNTY_NAME", "total_vax_Feb_16", "total_male_vax_Feb_16", "total_female_vax_Feb_16", "total_masian_vax_Feb_16", "total_mblack_vax_Feb_16", "total_morace_vax_Feb_16", "total_mwhite_vax_Feb_16", "total_fasian_vax_Feb_16", "total_fblack_vax_Feb_16", "total_forace_vax_Feb_16", "total_fwhite_vax_Feb_16", "total_asian_vax_Feb_16","total_black_vax_Feb_16", "total_orace_vax_Feb_16", "total_white_vax_Feb_16", "total_05_09_vax_Feb_16", "total_10_17_vax_Feb_16", "total_18_44_vax_Feb_16", "total_45_64_vax_Feb_16", "total_65Plus_vax_Feb_16") 


##deleting excess variables 
rm(Dougherty_Vax_Week22, Dougherty_Vax_Week22_compressed, Feb_16) 


##saving 
save.image("~/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week22_Vax.RData")
