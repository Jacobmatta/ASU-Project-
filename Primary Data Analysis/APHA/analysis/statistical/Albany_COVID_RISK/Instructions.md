Reproducing RESULTS for ASU ABSTRACT and MANUSCRIPT
1. Step 1
  a. Log into Qualtrics using uga email and password*. The link to Qualtrics is below https://ugeorgia.yul1.qualtrics.com/responses/#/surveys/SV_3XmJaYvfq58dWZg

  b. Once logged in, click 'Health Literacy Survey (full survey)' to access the full ASU Qualtrics survey 
  
  c. Next, click on the 'Data & Analysis' tab 
  
  d. Select the 'Export & Import' tab on the right side of the page, under the "Recorded responses" tab
  
  e Select "Export Data..."
  
  f. Select Excel file** and 'Use choice text'***
  
  g. Select 'Download'

Notes:
* In order to have access to the ASU Survey Qualtrics, an ASU or EERG team member with access to the Qualtrics Survey must grant you access. If you do not have access email Tatiana or Jacob 

** The data can be downloaded as any file type of the options that Qualtrics allows. I have chosen Excel as the code I use to clean the data loads the data as an excel file. If you prefer to work with CSV, you will have to change the code to read in a CSV file.

*** We are downloading the excel file as a text file because when the file is downloaded as numerical data, the number system that qualtrics generates does not make sense. This generates problem that takes tedious work to review and correct the different numbers for each response. To prevent this, downloading the data as text allows us to manually convert the character data to the numerical data that we want in a numbered system that makes sense. 

2. Step 2
  a. Go to the shared EERG onedrive folder*
  
  b. Select the 'Project_Health Literacy Program Evaluation' folder 
  
  c. Select the 'Survey data' folder
  
  d. download the 'ASU_penandpaper_preandpost_merged.xlsx' file
  
  c. Delete the codebook sheet
  
Notes:
*In order to gain access to this folder an ASU team member or EERG team member must grant you access.

3. Step 3
  a. Rename the 'ASU_penandpaper_preandpost_merged.xlsx' to include the data of download following this template 'ASU_penandpaper_preandpost_merged-MonthDay_Year.xlsx'. For example 'ASU_penandpaper_preandpost_merged-May17_2023.xlsx'
  
  b. Open the ASU-Project in RStudio
  
  c. Add the downloaded Qualtrics excel file and the 'ASU_penandpaper_preandpost_merged-MonthDay_Year.xlsx' files to the 'rawdata' folder in this R project 
  
4. Step 4
  a. Change the code in 'cleaningcode_descriptive_analysis_prep.R' file to match the name of the qualtrics file and pen and paper files that you downloaded. You can do this by selecting the find/replace button which is the magnifying glass symbol boarding the file. Copy and paste the old name of the qualtrics file and replace it with updated name. Do the same for the pen & paper survey
  
  b. Change the name of the cleans file that is exported at the end of the code to include the date. For example change asu_merged.xlsx to asu_merged-MonthDay_Year.xlsx which would look like this 'asu_merged-May17_2023.xlsx' to reflect the date of when you are conducting the data cleaning.
  
5. Step 5

  a. In find the 'Albany_COVID_RISK' folder* and select the 'ASU_APHA_Abstract_Result.qmd' file 
  
  b. Change file name 'asu_merged-May17_2023.xlsx' to have updated date
  
  c. update statistics numbers when calculating OR, CIs, Standard Error and others

