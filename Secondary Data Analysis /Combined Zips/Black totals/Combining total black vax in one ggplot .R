c("Sept17", "Oct14","Nov3","Nov24", "Dec16", "Jan5"))

#loading target zip totals  
#need reshape package for melt function  
load("/Users/jacobmatta/Documents/R/GA_Vax/31701/Black Total/Zip_31701_combined_black_total_date_vs_vax.RData") 
load("/Users/jacobmatta/Documents/R/GA_Vax/31705/Zip_31705_combined_black_total_date_vs_vax.RData") 
load("/Users/jacobmatta/Documents/R/GA_Vax/31707/Zip_31707_combined_black_total_date_vs_vax.RData") 
#combining  
Zips_Combined_Total_Black_Vax <- left_join(Zip_31701_combined_total_black_vax_by_dates, Zip_31705_combined_total_vax_by_dates,  by = c("Date" = "Date")) 
Zips_Combined_Total_Black_Vax <- left_join(Zips_Combined_Total_Black_Vax, Zip_31707_combined_total_vax_by_dates,  by = c("Date" = "Date")) 
#delete variables  
rm(Zip_31701_combined_total_black_vax_by_dates, Zip_31705_combined_total_vax_by_dates, Zip_31707_combined_total_vax_by_dates) 
# Convert data to long format 
Zips_Combined_Total_Black_Vax_long <- melt(Zips_Combined_Total_Black_Vax, id = "Date")    
#making line plot 
Total_Black_Plot <- ggplot(Zips_Combined_Total_Black_Vax_long,            # Create ggplot2 plot 
                           aes(x = Date, 
                               y = Vaccination_total,  
                               color = variable,  
                               group = variable,)) + geom_line() + 
  scale_x_discrete(limits =c("Sept17", "Oct14","Nov3","Nov24", "Dec16", "Jan5")) 
#saving 
save.image("~/Documents/R/GA_Vax/Combined Zips/Black totals/ Blacktotal.RData") 
#plot 
Total_Black_Plot 

colnames(Zips_Combined_Total_Black_Vax_long) <- c("Date", "variable", "Vaccination_total")

