#Now that I looked at it closely, it looks good with leaving the neutral 
#color to as is beige or the like, s. agree and agree a shade of blue and the s 
#disagree and disagree shades of red. The 70, 40% and 94% 51% are still not clear to me.
#Instead of 4 figures (1 each for each question) I would do two figures (1 for children and 1 for elderly in the household) – would also report N in each case and question.


#download packages
install.packages("likert")
install.packages("RColorBrewer")

#library
library(likert)
library(RColorBrewer)

Question_15 = "I (or my chidlren) am at risk of getting a COVID-19 infection"
Question_16 = "My family members are at risk of COVID-19 infection"
Question_17 = "I feel knowledgeable about the risk of getting COVID-19 infection"
Question_18 = "I am worried about the likehood of getting a COVID-19 infection in the near future"

# table for participants with children in their household response to “I (or my chidlren) am at risk of getting a COVID-19 infection” 
question = c(Question_15, Question_16, Question_17, Question_18)
Strongly_Disagree = c(7.155026, 6.666667, 2.863962, 5.476190)
Disagree = c(8.858603, 8.275862, 1.909308, 7.142857 )
Neutral = c(9.028961, 8.735632, 4.534606, 10.714286)
Agree = c(7.495741, 8.275862, 12.887828, 0.09285714)
Strongly_Agree = c(4.429302, 3.678161, 13.603819, 3.571429)

df <- data.frame(question, Strongly_Disagree, Disagree, Neutral, Agree, Strongly_Agree)

##############################################################################################################


#creating a figure for Eldery members who have not been told they have covid crossed with risk questions
Item = c(Question_15, Question_16, Question_17, Question_18)
Strongly_Disagree = c(15.98, 16.36, 6.69, 14.80)
Disagree = c(19.39, 16.13, 3.59, 15.04 )
Neutral = c(19.39, 18.89, 9.57, 24.8)
Agree = c(18.53, 22.11, 33.97, 18.62)
Strongly_Agree = c(7.48, 7.14, 26.32, 7.63)

df2 = data.frame(Item, Strongly_Disagree, Disagree, Neutral, Agree, Strongly_Agree)

#creating plot 
plot(likert(summary = df2), legend.position="right", plot.percent.neutral=FALSE, plot.percent.low = FALSE, plot.percent.high = FALSE) + 
  scale_fill_manual(values = brewer.pal(n=5,"RdYlBu"), breaks = c("Strongly_Disagree", "Disagree", "Neutral","Agree", "Strongly_Agree")) #order and color the likert boxes

#creating a figure for participants with children who have not been told they have covid crossed with risk questions
Item = c(Question_15, Question_16, Question_17, Question_18)
Strongly_Disagree = c(13.11, 14.25, 5.01, 12.62 )
Disagree = c(14.99, 11.7,2.86 , 11.42 )
Neutral = c(14.1, 14.48, 7.40, 19.29)
Agree = c(14.99, 17.47, 28.16, 15.00 )
Strongly_Agree = c(5.79, 6.43, 20.76, 5.48)

df <- data.frame(Item, Strongly_Disagree, Disagree, Neutral, Agree, Strongly_Agree)

#creating plot 
plot(likert(summary = df), legend.position="right", plot.percent.neutral=FALSE, plot.percent.low = FALSE, plot.percent.high = FALSE) + 
  scale_fill_manual(values = brewer.pal(n=5,"RdYlBu"), breaks = c("Strongly_Disagree", "Disagree", "Neutral","Agree", "Strongly_Agree")) #order and color the likert boxes
