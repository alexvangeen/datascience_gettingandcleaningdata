# CodeBook for tidy data set

## Description and Source data set
This codebook set is for the tidy data set in this repo (tidy_data.txt) that is derived from the raw data set at the UCL machine learning repository available 
here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
The dataset involves human activity and performance indicators using Smartphones. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the 
data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
## Structure tidy data set
The tidy_data.txt data file is a text file, containing space-separated values. The first row lists the variables and the following 
rows containe the contain the values of these variables for each observation (=activity and subject combination). These variables
include the mean and standard deviations of the variables in the original data set. 
## Variable description
* SUBJECT this is the identifyer for the individual that performed the activity and that the measurements belong to. it 
ranges from 1 to 30
* ACTIVITY this is the identifyer for the activity of which the measurements belong to. This is a categorical variable with the
following potential values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
The following variables are all numeric. 
*	tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z	are the average measurements (mean) of the time-domain 
body acceleration in the X, Y and Z directions:
* tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z are the measurements of the standard deviation of the time-domain 
body acceleration in the X, Y and Z directions:
* tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z are the average time-domain gravity acceleration in 
the X, Y and Z directions
* tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z	are the standard deviation of the time-domain gravity acceleration in 
the X, Y and Z directions
* tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z are the average time-domain body acceleration jerk (derivation of the 
acceleration in time) in the X, Y and Z directions
* tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z are the standard deviation of the time-domain body acceleration jerk (derivation of 
the acceleration in time) in the X, Y and Z directions
* tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z are the average time-domain body angular velocity in the X, Y and 
Z directions
* tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z are the standard deviation of the time-domain body angular velocity 
in the X, Y and Z directions
* tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z are the average time-domain body angular velocity jerk (derivation of 
the angular velocity in time) in the X, Y and Z directions
* tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z are the standard deviation of the time-domain body angular 
velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions
* tBodyAccMag-mean(), tBodyAccMag-std() are the aerage and standard deviation of the time-domain magnitude of body acceleration
* tGravityAccMag-mean(), tGravityAccMag-std() are the average and standard deviation of the time-domain magnitude of gravity acceleration
* tBodyAccJerkMag-mean(), tBodyAccJerkMag-std() are the average and standard deviation of the time-domain magnitude of body acceleration jerk 
(derivation of the acceleration in time)
* tBodyGyroMag-mean(), tBodyGyroMag-std() are the average and standard deviation of the time-domain magnitude of body angular 
velocity
* tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std() are the average and standard deviation of the time-domain magnitude of body 
angular velocity jerk (derivation of the angular velocity in time)
* fBodyAcc-mean()-X	, fBodyAcc-mean()-Y	, fBodyAcc-mean()-Z	are the average frequency-domain body acceleration in the 
X, Y and Z directions
* fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z are the Standard deviation of the frequency-domain body acceleration 
in the X, Y and Z directions
* fBodyAcc-meanFreq()-X, fBodyAcc-meanFreq()-Y, fBodyAcc-meanFreq()-Z	are the weighted average of the frequency components of 
the frequency-domain body acceleration in the X, Y and Z directions
* fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z are the average frequency-domain body acceleration jerk 
(derivation of the acceleration in time) in the X, Y and Z directions
* fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z	are the standard deviation of the frequency-domain body 
acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions
* fBodyAccJerk-meanFreq()-X, fBodyAccJerk-meanFreq()-Y, fBodyAccJerk-meanFreq()-Z are the weighted average of the frequency 
components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions
* fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z are the average frequency-domain body angular velocity in the 
X, Y and Z directions
* fBodyGyro-std()-X	, fBodyGyro-std()-Y, fBodyGyro-std()-Z are the standard deviation of the frequency-domain body angular 
velocity in the X, Y and Z directions
* fBodyGyro-meanFreq()-X, fBodyGyro-meanFreq()-Y, fBodyGyro-meanFreq()-Z are the weighted average of the frequency components 
of the frequency-domain body angular velocity in the X, Y and Z directions
* fBodyAccMag-mean(), fBodyAccMag-std(), fBodyAccMag-meanFreq() are the average, standard deviation, and weighted average of 
the frequency components of the frequency-domain magnitude of body acceleration
* fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std(), fBodyBodyAccJerkMag-meanFreq() are the average, standard deviation, 
and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk 
(derivation of the acceleration in time)
* fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(), fBodyBodyGyroMag-meanFreq() are the average, standard deviation, and weighted 
average of the frequency components of the frequency-domain magnitude of body angular velocity:
* fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std(), fBodyBodyGyroJerkMag-meanFreq() are the average, standard deviation,
and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of
the angular velocity in time)
## Transformations
The following transformations were applied to the source data:
* The training and test sets were merged
* I extracted means and standard deviations for all measurements 
* Activities were labeled with descriptive names
* final datast (tidy_data.text) was created with for each activity and subject combo (row) the average for each variable
These transformations were exectuted by the script run_analysis.R, see also README.md
