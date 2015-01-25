---
title: "README.md"
author: "Susan Hahn"
date: "Tuesday, January 20, 2015"
output: html_document
---


### run\_analysis.R

run\_analysis.R is an R script designed to process data files from the Human Activity Recognition Using Smartphones Dataset, and to produce two tidy datasets.  To create the first file, observations from the various files of this dataset are merged, variables are selected, and variable names and labels are corrected.  The second file uses data from the first file as input, then grouped averages are calculated and new variable names are created.

More information on the Human Activity Recognition Using Smartphones Dataset is avalable here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data files used for this project were downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The two output datasets are:

1.  final\_test\_train_data.txt -- a file containing a modified subset of the data drawn from a number of the original data files.
    
2.  final\_test\_train_averages.txt --  a file containing the average of each measurement variable in the final\_test\_train_data file, grouped by activity and subject.

This script expects to find the input data files in a subdirectory of the working directory; this data subdirectory is named "UCI\_HAR\_Dataset."  The script is stored in the working directory, and the two output files are written there as well. 

### Data Processing to Produce final\_test\_train\_data.txt

The following steps were performed by this script to prepare the final\_test\_train\_data file:

1.1 **y\_test.txt**, containing activity numbers associated with each of the main test data file observations, is read in using:

    tAct <- read.table("./UCI_HAR_Dataset/test/y_test.txt", col.names="ActivityNum")
    
Measurements were recorded for each of six activities.
    
1.2 **subject\_test.txt**, containing subject numbers associated with each of the main test data file observations, is read in using:

    tSub <- read.table("./UCI_HAR_Dataset/test/subject_test.txt", col.names="SubjectNum")
    
Subjects are the 30 volunteers who took part in the Human Activity Recognition Using Smartphones study.  Each subject was assigned a number 1:30.
    
1.3 **x\_test.txt**, the main test data file, is read in using:

    tData <- read.table("./UCI_HAR_Dataset/test/x_test.txt")
    
1.4 A variable named **SourceFile** is created and given the value "test" to indicate the source of the test file observations.

    tData$SourceFile <- "test"
    
1.5 **features.txt**, containing variable names for all variables in x_test,  is read in using:

    columnNames <- read.table("./UCI_HAR_Dataset/features.txt", stringsAsFactors=FALSE)
    
1.6 The **SourceFile** variable name is added to the list of variable names from step 1.5.
    
1.7 The prepared variable name header is added to **x_text**.

1.8 **y\_test**, **subject\_test** and **x\_test** are comined using cbind.

1.9 **activity_labels.txt**, containing string labels for each of the six activities tracked by the data along with their assigned numbers (1:6), is read in using:

    actNames <- read.table("./UCI_HAR_Dataset/activity_labels.txt", col.names=c("ActivityNum", "ActivityName"))
    
1.10 **activity\_labels** is merged with the combined dataset from step 1.8, then the activity number variable is dropped.

1.11 Processing steps 1.1 to 1.10 are repeated to create the comined "train" dataset from *y\_train**, **subject\_train** and **x\_train**, with SourceFile = "train" added to indicate the source of observations.  A variable name header and activity labels are also added as before.

1.12 The **test** and **train** datasets are combined using rbind.

1.13 The variable names from **features.txt** are retrieved again, and variable names containing mean() and std() are identified using grep for inclusion in the variable section list.

1.14 Variable names from the mean() list, that are not part of the paired mean() and std() measurent variables, are identified using grep and removed from the variable selection list.

1.15  **ActivityName**, **SubjectNum** and **SourceFile** variable names are added to the variable selection list, then this list is used to select variables from the data combined in step 1.12.

1.16  Non-standard variable names are corrected using gsub and make.names.

1.17 This final dataset of selected variables is written to **final\_test\_train\_data.txt** using:

    write.table(finalData, "./final_test_train_data.txt", sep="\t", row.names=FALSE)
    
This data file can be read in R using:

    read.table("./final\_test\_train\_data.txt", sep="\\t", header=TRUE)
    
'data.frame':    10299 obs. of  69 variables
    
For more detailed information on the contents of this file, please refer to the codebook.

### Data Processing to Produce final\_test\_train\_avgs.txt

The following steps were performed by this script to prepare the final\_test\_train\_avgs file:

2.1 The dataset used to write **final\_test\_train\_data.txt** is the only input for this process.

2.2 The measurement variables (3:68) are each averaged across all observations grouped by activity and subject (6 activities by 30 subjects).

2.3 "Avg." is prefixed to the original variable names, and these new names are applied to the calculated mean variables created in 2.2.

2.4 The final averages dataset, containing Activity, Subject and the 66 average variables, is written using:

    write.table(finalAvgs, "./final_test_train_avgs.txt", sep="\t", row.names=FALSE)

This file can be read in R using:

    read.table("./final_test_train_avgs.txt", sep="\t", header=TRUE)

'data.frame':    180 obs. of  68 variables

### Note

run\_analysis.R and its associated files were created as my project submission for the Coursera class _Getting and Cleaning Data_, one of the courses in Johns Hopkins University's **Data Science Specialization**.

 https://www.coursera.org/specialization/jhudatascience/1
