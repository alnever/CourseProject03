# CourseProject03
The solution for the Course Project 03 "Getting and Cleaning Data"
by Aleksei Neverov

##Repo content
1. data - folder with the raw data
2. CodeBook.md - cook book and data dictionary for both datasets of the project
3. run_analysis.R - R-script for creation tidy data set (dataset #2 in project) from the raw data. This script creates the dataset #1 from the raw data, saves it, then read it (this operation may be commented) and create dataset #2
4. result1.csv - dataset #1 estimated from the raw data
5. result2.csv - dataset #2, tidy dataset estimated from the dataset #1 in CSV format
6. result2.txt - dataset #2, tidy dataset estimated from the dataset #1 in TXT format

## Using the script
1. Copy file **run_analisys.R** and folder **data** in your working directory
2. Run RGui or RStudio
3. Set the directory with file **run_analisys.R** and folder **data** as your working directory using setwd() funtion
4. Run the script using **source("run_analysis.R")**

## Short script description
1. Script takes a row data from the **data** folder. The script file and **data** folder must be placed in the same directory.
2. Script prepares some datasets: with activity names and with features names. This script uses an algorythm to create features names from the original variable name. Only names with "mean" and "std" within are included into the final feature's names dataset.
3. Then script reads information about subjects, their activities and features sets associated with the observations. The script does it twice - for train set and for test set. Finally both sets are mergen into one dataset called "Dataset #1"
4. To estimate tidy data set the script groups data from the dataset #1 by Subjects and ActivityNames and calculates average values of other variables for these groups.
5. Script creates three files - result1.csv, result2.csv and result2.txt. The last file is the solution of this project.
Detail description of the datasets and the script are included into the Code Book. 



