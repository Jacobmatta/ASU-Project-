#download packages
install.packages("likert")

#library
library(likert)

#Likert graph for: “I (or my chidlren) am at risk of getting a COVID-19 infection”
Item = c("Elderly", "Child")
Strongly_Disagree = c(24,42)
Disagree = c(27,52)
Neutral = c(22,53)
Agree = c(24,44)
Strongly_Agree = c(16,26)

df <- data.frame(Item, Strongly_Disagree, Disagree, Neutral, Agree, Strongly_Agree)

#basic plot
plot(likert(summary = df))

## Pretty Plot (Image Below)
plot(likert(summary = df), plot.percent.neutral=FALSE, legend.position="right") + labs(title = "I (or my chidlren) am at risk of getting a COVID-19 infection")
