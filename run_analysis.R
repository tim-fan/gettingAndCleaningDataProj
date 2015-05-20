library(dplyr)

dataUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
dataZip <- 'projData.zip'

#download.file(url = dataUrl, destfile = dataZip) #date downloaded = "Sun May 17 18:14:38 2015"
#unzip(zipfile = dataZip)


## READ DATA

#get col names for the x-data
xNamesFile <- list.files(path = getwd()  , pattern = 'features\\.txt',recursive = TRUE)
xFeatureNames <- make.names(read.table(xNamesFile)[,2], unique = TRUE)

readXYSubject <- function(dataType)
{
  #helper function - reads x-data, y-data and subject data, and returns them in a single dataset
  # dataType can be 'test' or 'train'
  getFilePath <- function(varType) {list.files(path = getwd(), pattern = paste('^',varType,'_',dataType,'\\.txt',sep=''),recursive = TRUE)}
  readFile <- function(varType, colNames) {read.table(getFilePath(varType), col.names = colNames)}
  
  allData <- mapply(readFile, c('X', 'y', 'subject'), list(xFeatureNames, 'activity', 'subjectNumber'))  
  do.call(cbind, allData)  
}

#Step 1: 'Merges the training and the test sets to create one data set'
#read and merge test and train data (X, Y and subject data for each)
allData <-  rbind(readXYSubject('test'),readXYSubject('train'))


## ALTER DATA 

#Step 2: 'Extracts only the measurements on the mean and standard deviation for each measurement.'
# I assume we also want to keep activity type and subject number
tidyData  <- select(allData, subjectNumber, activity, grep('mean\\.\\.|std\\.\\.', names(allData)))

#Step 3: 'Uses descriptive activity names to name the activities in the data set'
#alter y-data to have string-valued activity labels instead of integer codes
activityLabels <- read.table('UCI HAR Dataset//activity_labels.txt')
activityIntToString <- function(activityInt)
{
  activityInt <- activityLabels[activityLabels[,1] == activityInt,2]
}
tidyData$activity <- sapply(tidyData$activity,activityIntToString)

#Step 4: 'Appropriately labels the data set with descriptive variable names. '
# -> already done - variable names were applied when datasets were loaded (above).

#Step 5: 'From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.'
tidyData2 <- ddply(.data = allData, .variables = .(subjectNumber, activity), .fun = colwise(mean))

