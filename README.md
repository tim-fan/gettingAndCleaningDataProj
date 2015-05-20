# gettingAndCleaningDataProj
Code and data for course project of Coursera course: Getting and Cleaning Data

Contains a script run_analysis.R that does the following in accordance with the project requirements: 
+ Illustrates how project data was downloaded (project data is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
+ Merges the training and the test sets to create one data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement. 
+ Uses descriptive activity names to name the activities in the data set
+ Appropriately labels the data set with descriptive variable names. 
+ From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Script was run under R-Studio Version 0.98.1062, using R version 3.1.0 (2014-04-10)

Script package dependencies:
* dplyr (tested with dplyr_0.4.1)
* plyr (tested with plyr_1.8.1)
