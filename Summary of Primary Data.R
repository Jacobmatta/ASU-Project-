#analyzing completed surveys race by count
ASU_combined_by_race_sum <- table(Copy_of_ASU_Codebook_Combined_4$Race_Ethnicity, exclude = NULL)

ASU_prepost_by_race_sum <- table(Copy_of_ASU_Codebook_Pre_Post$Race_Ethnicity, exclude = NULL)

#analyzing completed surveys race by proportion

ASU_combined_by_race_prop <- prop.table(table(Copy_of_ASU_Codebook_Combined_4$Race_Ethnicity, exclude = NULL))

ASU_prepost_by_race_prop <- prop.table(table(Copy_of_ASU_Codebook_Pre_Post$Race_Ethnicity, exclude = NULL))

#barplot of combined survey by race 
ASU_combined_by_race <-
  barplot(table(Copy_of_ASU_Codebook_Combined_4$Race_Ethnicity))

ASU_combined_by_race_sum
ASU_combined_by_race_prop
#baplot of pre post by race 
ASU_prepost_by_race<- barplot(table(Copy_of_ASU_Codebook_Pre_Post$Race_Ethnicity))

ASU_prepost_by_race_sum
ASU_prepost_by_race_prop
