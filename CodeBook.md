This is 'a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data'

##Data description:
Data was obtained from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

More info on source data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Transformations or work performed
Input data was passed through script 'run_analysis.R', which performs the following:
+ Merges the training and the test sets to create one data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement. 
+ Uses descriptive activity names to name the activities in the data set
+ Appropriately labels the data set with descriptive variable names. 
+ From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Notes
- Features are normalized and bounded within [-1,1].

##Variables:
	subjectNumber			: identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
	activity				: the activity the participant was enacting. One of...

		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING

The following variables represent the mean values for a given subject number /activity combination as described in the above steps, with the input data being the raw data source described above.
Apart form being a mean-value, they have the same meaning/units as they have in the original dataset. See original dataset for more details.
Note also that most variable names have been altered/sanitised by R's make.names function, but are otherwise unchanged.
	
	X.tBodyAcc.mean...X
	X.tBodyAcc.mean...Y
	X.tBodyAcc.mean...Z
	X.tBodyAcc.std...X
	X.tBodyAcc.std...Y
	X.tBodyAcc.std...Z
	X.tGravityAcc.mean...X
	X.tGravityAcc.mean...Y
	X.tGravityAcc.mean...Z
	X.tGravityAcc.std...X
	X.tGravityAcc.std...Y
	X.tGravityAcc.std...Z
	X.tBodyAccJerk.mean...X
	X.tBodyAccJerk.mean...Y
	X.tBodyAccJerk.mean...Z
	X.tBodyAccJerk.std...X
	X.tBodyAccJerk.std...Y
	X.tBodyAccJerk.std...Z
	X.tBodyGyro.mean...X
	X.tBodyGyro.mean...Y
	X.tBodyGyro.mean...Z
	X.tBodyGyro.std...X
	X.tBodyGyro.std...Y
	X.tBodyGyro.std...Z
	X.tBodyGyroJerk.mean...X
	X.tBodyGyroJerk.mean...Y
	X.tBodyGyroJerk.mean...Z
	X.tBodyGyroJerk.std...X
	X.tBodyGyroJerk.std...Y
	X.tBodyGyroJerk.std...Z
	X.tBodyAccMag.mean..
	X.tBodyAccMag.std..
	X.tGravityAccMag.mean..
	X.tGravityAccMag.std..
	X.tBodyAccJerkMag.mean..
	X.tBodyAccJerkMag.std..
	X.tBodyGyroMag.mean..
	X.tBodyGyroMag.std..
	X.tBodyGyroJerkMag.mean..
	X.tBodyGyroJerkMag.std..
	X.fBodyAcc.mean...X
	X.fBodyAcc.mean...Y
	X.fBodyAcc.mean...Z
	X.fBodyAcc.std...X
	X.fBodyAcc.std...Y
	X.fBodyAcc.std...Z
	X.fBodyAccJerk.mean...X
	X.fBodyAccJerk.mean...Y
	X.fBodyAccJerk.mean...Z
	X.fBodyAccJerk.std...X
	X.fBodyAccJerk.std...Y
	X.fBodyAccJerk.std...Z
	X.fBodyGyro.mean...X
	X.fBodyGyro.mean...Y
	X.fBodyGyro.mean...Z
	X.fBodyGyro.std...X
	X.fBodyGyro.std...Y
	X.fBodyGyro.std...Z
	X.fBodyAccMag.mean..
	X.fBodyAccMag.std..
	X.fBodyBodyAccJerkMag.mean..
	X.fBodyBodyAccJerkMag.std..
	X.fBodyBodyGyroMag.mean..
	X.fBodyBodyGyroMag.std..
	X.fBodyBodyGyroJerkMag.mean..
	X.fBodyBodyGyroJerkMag.std..
