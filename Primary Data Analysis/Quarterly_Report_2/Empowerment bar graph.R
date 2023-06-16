
#download packages
install.packages("likert")
install.packages("RColorBrewer")

#library
library(likert)
library(RColorBrewer)
library(here)
library(dplyr)
library(DescTools)
library(ggplot2)

## Loading 
data_location = here("Primary Data Analysis ASU", "APHA","Data", "cleandata", "April11.rds")
Jan_March = readRDS(data_location)
# Creating a data set that includes data January 1st, 2023 through March 31st, 2023
Jan_March <- Jan_March[!(grepl("^10|^11|^12|^04", Jan_March$Date)), ]


# Summary for Question_35: How confident are you about COVID 19 vaccine after participating in the event today?
Question_35 = Jan_March$Question_35 %>% replace(is.na(.), "*")
Question_35_pertable= PercTable(Question_35)
Question_35_pertable

Question_35 = "How confident are you about COVID 19 vaccine after participating in the event today?"

# Create a data frame in the required format
df <- data.frame(
  Confidence_Level = c("Very Confident", "Moderately Confident", "Moderately Unconfident", "Very Unconfident"),
  Percentage = c(75.4, 14.6, 1.5, 2.0)
)


  df2 <- df                                                 # Replicate original data
df2$Confidence_Level <- factor(df2$Confidence_Level,                                    # Change ordering manually
                  levels = c("Very Confident", "Moderately Confident", "Moderately Unconfident", "Very Unconfident"))

ggplot(df2, aes(x = Confidence_Level, y = Percentage)) +
  geom_bar(stat = "identity", fill = "blue") +
  geom_text(aes(label = Percentage), vjust = -0.5) +
  ggtitle("Empowerment Measurement") +
  xlab("Confidence Level") +
  ylab("Percentage") +
  theme_minimal() 
