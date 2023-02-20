#week1 
library(tidyverse)

load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week1_Vax.RData") 
Zip_31705_combined_vax <- Zip_31705_Week1 
rm(Zip_31701_Week1, Zip_31705_Week1, Zip_31707_Week1) 

#week2 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week2_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week2, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week2, Zip_31705_Week2, Zip_31707_Week2) 


#week3 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week3_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week3, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week3, Zip_31705_Week3, Zip_31707_Week3) 

#week4 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week4_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week4, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week4, Zip_31705_Week4, Zip_31707_Week4) 


#week5 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week5_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week5, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week5, Zip_31705_Week5, Zip_31707_Week5) 

#Week6 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week6_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week6, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week6, Zip_31705_Week6, Zip_31707_Week6) 

#Week7 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week7_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week7, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week7, Zip_31705_Week7, Zip_31707_Week7) 

#Week8 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week8_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week8, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week8, Zip_31705_Week8, Zip_31707_Week8) 

#Week9 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week9_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week9, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week9, Zip_31705_Week9, Zip_31707_Week9) 

#Week10 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week10_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week10, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week10, Zip_31705_Week10, Zip_31707_Week10) 
#Week11 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week11_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week11, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week11, Zip_31705_Week11, Zip_31707_Week11) 

#Week12 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week12_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week12, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week12, Zip_31705_Week12, Zip_31707_Week12) 

#Week13 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week13_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week13, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week13, Zip_31705_Week13, Zip_31707_Week13) 

#Week14 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week14_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week14, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week14, Zip_31705_Week14, Zip_31707_Week14) 
#Week15 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week15_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week15, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week15, Zip_31705_Week15, Zip_31707_Week15) 
#Week16 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week16_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week16, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week16, Zip_31705_Week16, Zip_31707_Week16) 
#Week17 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week17_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week17, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week17, Zip_31705_Week17, Zip_31707_Week17) 
#Week18 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week18_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week18, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week18, Zip_31705_Week18, Zip_31707_Week18) 
#Week19 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week19_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week19, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week19, Zip_31705_Week19, Zip_31707_Week19) 
#Week20 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week20_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week20, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week20, Zip_31705_Week20, Zip_31707_Week20) 
#Week21 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week21_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week21, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week21, Zip_31705_Week21, Zip_31707_Week21) 
#Week22 
load("/Users/jacobmatta/Documents/R/ASU-Project-/Secondary Data Analysis /Data/Clean_data/Week22_Vax.RData") 
Zip_31705_combined_vax<- left_join(Zip_31705_combined_vax, Zip_31705_Week22, by = c("FIPS" = "FIPS"))  
rm(Zip_31701_Week22, Zip_31705_Week22, Zip_31707_Week22) 

 
##dropping all columns but total black for 31705 
Zip_31705_combined_vax = Zip_31705_combined_vax %>% select(starts_with("total_black_vax"))

# sum(Zip_31705_combined_vax$total_black_vax_Sept17) 
sum(Zip_31705_combined_vax$total_black_vax_Oct1) 
sum(Zip_31705_combined_vax$total_black_vax_Oct8)  
sum(Zip_31705_combined_vax$total_black_vax_Oct14) 
sum(Zip_31705_combined_vax$total_black_vax_Oct20) 
sum(Zip_31705_combined_vax$total_black_vax_Oct28) 
sum(Zip_31705_combined_vax$total_black_vax_Nov3) 
sum(Zip_31705_combined_vax$total_black_vax_Nov8) 
sum(Zip_31705_combined_vax$total_black_vax_Nov17) 
sum(Zip_31705_combined_vax$total_black_vax_Nov24) 
sum(Zip_31705_combined_vax$total_black_vax_Dec1) 
sum(Zip_31705_combined_vax$total_black_vax_Dec8) 
sum(Zip_31705_combined_vax$total_black_vax_Dec16) 
sum(Zip_31705_combined_vax$total_black_vax_Dec22) 
sum(Zip_31705_combined_vax$total_black_vax_Dec29) 
sum(Zip_31705_combined_vax$total_black_vax_Jan5) 
sum(Zip_31705_combined_vax$total_black_vax_Jan12) 
sum(Zip_31705_combined_vax$total_black_vax_Jan_19) 
sum(Zip_31705_combined_vax$total_black_vax_Jan_26) 
sum(Zip_31705_combined_vax$total_black_vax_Feb_2) 
sum(Zip_31705_combined_vax$total_black_vax_Feb_9) 
sum(Zip_31705_combined_vax$total_black_vax_Feb_16) 

#Separating into x and y 
Zip_31705_combined_total_vax_by_dates <- data.frame(Date = c("Sept17", "Oct1", "Oct8", "Oct14","Oct20","Oct28","Nov3","Nov8","Nov17","Nov24","Dec1", "Dec8", "Dec16", "Dec22", "Dec29", "Jan5", "Jan12", "Jan19", "Jan26", "Feb2", "Feb9", "Feb16"), 
                                                    Total = c(10383, 10389, 10371,10375, 10339, 10327,10304, 10303, 10301, 10303, 10301, 10290, 10297, 10298, 10301, 10317, 10324, 10321, 10337, 10335, 10341, 10343)) 

##ggplot 
Zip_31705_combined_total_vax_by_dates_plot = Zip_31705_combined_total_vax_by_dates %>% 
  ggplot(aes(Date, Total, group=1)) + geom_point() + geom_line() + scale_x_discrete(limits = c("Sept17", "Oct1", "Oct8", "Oct14","Oct20","Oct28","Nov3","Nov8","Nov17","Nov24","Dec1", "Dec8", "Dec16", "Dec22", "Dec29", "Jan5", "Jan12", "Jan19", "Jan26", "Feb2", "Feb9", "Feb16"))
Zip_31705_combined_total_vax_by_dates_plot

#saving
save.image("~/Documents/R/ASU-Project-/total_black_31705.RData")
