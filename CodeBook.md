# CodeBook


#Project description
create a tidy data set from the raw data collected from the accelerometers from the Samsung Galaxy S smartphone. 
The new data set contains the means for each subject and each activity of the means or standard deviations of variables 

#Collecting the raw data
The raw data set is downloaded from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

description of the experiment:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

Reference: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#project requirement:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

As a reference, below are the components of a tidy data set:

1. Each variable you measure should be in one column.
2. Each different observation of that variable should be in a different row.
3. There should be one table for each "kind" of variable.
4. If you have multiple tables, they should include a column in the table that allows them to be linked.

(source: lecture notes)

#Descriptions of variables in "new_tidy_data.txt"

###subject
  1. The subject that does the experiment.
  2. Integer
  3. 1..30 .Integer numbers representing the subject
  
###labels
  1. The activity done by the subject in the experiment
  2. Character
  3. levels: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
  
###tBodyAcc.mean.X
  1. The mean (for fixed subject and activity) of the means of body acceleration in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyAcc.mean.Y
  1. The mean (for fixed subject and activity) of the means of body acceleration in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyAcc.mean.Z
  1. The mean (for fixed subject and activity) of the means of body acceleration in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyAcc.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tBodyAcc.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyAcc.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAcc-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tGravityAcc.mean.X
  1. The mean (for fixed subject and activity) of the means of gravity acceleration in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tGravityAcc.mean.Y
  1. The mean (for fixed subject and activity) of the means of gravity acceleration in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tGravityAcc.mean.Z
  1. The mean (for fixed subject and activity) of the means of gravity acceleration in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tGravityAcc.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of gravity acceleration in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tGravityAcc.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of gravity acceleration in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tGravityAcc.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of gravity acceleration in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAcc-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyAccJerk.mean.X
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tBodyAccJerk.mean.Y
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyAccJerk.mean.Z
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 

###tBodyAccJerk.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyAccJerk.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.    

###tBodyAccJerk.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerk-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyGyro.mean.X
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 
  
###tBodyGyro.mean.Y
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 

###tBodyGyro.mean.Z
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###tBodyGyro.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tBodyGyro.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tBodyGyro.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyro-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###tBodyGyroJerk.mean.X
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyGyroJerk.mean.Y
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###tBodyGyroJerk.mean.Z
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.    

###tBodyGyroJerk.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the x-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###tBodyGyroJerk.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the y-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###tBodyGyroJerk.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the z-direction (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerk-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###tBodyAccMag.mean
  1. The mean (for fixed subject and activity) of the means of body acceleration magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyAccMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###tGravityAccMag.mean
  1. The mean (for fixed subject and activity) of the means of gravity acceleration magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAccMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tGravityAccMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of gravity acceleration magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tGravityAccMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyAccJerkMag.mean
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerkMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyAccJerkMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyAccJerkMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###tBodyGyroMag.mean
  1. The mean (for fixed subject and activity) of the means of body angular velocity magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyGyroMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###tBodyGyroJerkMag.mean
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerkMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###tBodyGyroJerkMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk magnitude (time domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "tBodyGyroJerkMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.     
  
  
  
  
  
###fBodyAcc.mean.X
  1. The mean (for fixed subject and activity) of the means of body acceleration in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAcc.mean.Y
  1. The mean (for fixed subject and activity) of the means of body acceleration in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAcc.mean.Z
  1. The mean (for fixed subject and activity) of the means of body acceleration in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAcc.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###fBodyAcc.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAcc.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAcc-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAccJerk.mean.X
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###fBodyAccJerk.mean.Y
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyAccJerk.mean.Z
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 

###fBodyAccJerk.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyAccJerk.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.    

###fBodyAccJerk.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerk-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyGyro.mean.X
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 
  
###fBodyGyro.mean.Y
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit. 

###fBodyGyro.mean.Z
  1. The mean (for fixed subject and activity) of the means of body angular velocity in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###fBodyGyro.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###fBodyGyro.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###fBodyGyro.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyro-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###fBodyGyroJerk.mean.X
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-mean()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyGyroJerk.mean.Y
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-mean()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###fBodyGyroJerk.mean.Z
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-mean()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.    

###fBodyGyroJerk.std.X
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the x-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-std()-X" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.

###fBodyGyroJerk.std.Y
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the y-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-std()-Y" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.
  
###fBodyGyroJerk.std.Z
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk in the z-direction (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerk-std()-Z" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyAccMag.mean
  1. The mean (for fixed subject and activity) of the means of body acceleration magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyAccMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  

###fBodyAccJerkMag.mean
  1. The mean (for fixed subject and activity) of the means of body acceleration jerk magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerkMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyAccJerkMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body acceleration jerk magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyAccJerkMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###fBodyGyroMag.mean
  1. The mean (for fixed subject and activity) of the means of body angular velocity magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyGyroMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.   

###fBodyGyroJerkMag.mean
  1. The mean (for fixed subject and activity) of the means of body angular velocity jerk magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerkMag-mean()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.  
  
###fBodyGyroJerkMag.std
  1. The mean (for fixed subject and activity) of the standard deviations of body angular velocity jerk magnitude (frequency domain signals)
  2. numeric
  3. -1..1
  4. In the raw data set the values of the feature denoted by "fBodyGyroJerkMag-std()" have already been normalized to be within -1 and 1. The value of this variable is obtained by taking the mean of these feature values across all records for a fixed subject and a fixed activity. Due to normalization this variable has no unit.     
