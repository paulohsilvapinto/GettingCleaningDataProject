CodeBook
=================

##Explaining the experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

## The tidy data

Each observation consists on a pair of student and activity.
The set of variables that were estimated from these signals are: 

- average_mean(): The average mean value for each student and activity.
- average_std(): The average standard deviation value for each student and activity.

To read the data file created by run_analysis.R, considering it was created into your working directory, use the following command:
- tidy_df <- read.csv("tidy_data.txt", sep=" ")

The complete list of columns is:
* subject
  - Type: Integer (Observation);
  - Values: 1-30 subject's ID.
* activity
  - Type: Factor (Observation);
  - values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* tBodyAcc-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAcc-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAcc-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAcc-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAcc-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAcc-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAcc-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAcc-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAcc-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerk-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerk-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyro-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyro-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerk-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerk-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAccMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAccMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* tGravityAccMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of tGravityAccMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerkMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerkMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyAccJerkMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyAccJerkMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerkMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerkMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* tBodyGyroJerkMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of tBodyGyroJerkMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAcc-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAcc-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccJerk-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccJerk-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-mean()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-mean()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-mean()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-mean()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-mean()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-mean()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-std()-X-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-std()-X for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-std()-Y-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-std()-Y for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyGyro-std()-Z-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyGyro-std()-Z for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyAccMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyAccMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyAccJerkMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyAccJerkMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyAccJerkMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyAccJerkMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyGyroMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyGyroMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyGyroMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyGyroMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyGyroJerkMag-mean()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyGyroJerkMag-mean() for each subject and activity;
  - Units: no units. The data is normalized.
* fBodyBodyGyroJerkMag-std()-Average
  - Type: Numeric (Variable);
  - Values: Average of fBodyBodyGyroJerkMag-std() for each subject and activity;
  - Units: no units. The data is normalized.
