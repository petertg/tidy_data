Purpose of this study
=====================
Construct a tidy data set summarizing the mean and std deviations for each measurement in the original data set

Original Data Set Location
==========================
Human Activity Recognition Using Smartphones Data Set:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original Data Set Information
=============================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information
=====================
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


Feature Vector Naming Convention for this study
==============================================
I chose to perform a minimal transformation of the feature vector descriptions from the original data set to keep them aligned with the original study.
My only criteria was to avoid variable naming issues in R. 
I felt that there should be a recognizable continuity between the data in the original study and the summarization  performed here.

Feature Selection Criteria for this study
=========================================
Since specific operational criteria for selecting measurements was not stated in the project requirements, I chose to use the widest possible interpretation in selecting features with mean and std anywhere in the name to avoid discarding potentially useful data.

Features Selected for this study
================================
subject_id 
activity_label 
tBodyAccmeanX 
tBodyAccmeanY 
tBodyAccmeanZ 
tBodyAccstdX 
tBodyAccstdY 
tBodyAccstdZ 
tGravityAccmeanX 
tGravityAccmeanY 
tGravityAccmeanZ 
tGravityAccstdX 
tGravityAccstdY 
tGravityAccstdZ 
tBodyAccJerkmeanX 
tBodyAccJerkmeanY 
tBodyAccJerkmeanZ 
tBodyAccJerkstdX 
tBodyAccJerkstdY 
tBodyAccJerkstdZ 
tBodyGyromeanX 
tBodyGyromeanY 
tBodyGyromeanZ 
tBodyGyrostdX 
tBodyGyrostdY 
tBodyGyrostdZ 
tBodyGyroJerkmeanX 
tBodyGyroJerkmeanY 
tBodyGyroJerkmeanZ 
tBodyGyroJerkstdX 
tBodyGyroJerkstdY 
tBodyGyroJerkstdZ 
tBodyAccMagmean 
tBodyAccMagstd 
tGravityAccMagmean 
tGravityAccMagstd 
tBodyAccJerkMagmean 
tBodyAccJerkMagstd 
tBodyGyroMagmean 
tBodyGyroMagstd 
tBodyGyroJerkMagmean 
tBodyGyroJerkMagstd 
fBodyAccmeanX 
fBodyAccmeanY 
fBodyAccmeanZ 
fBodyAccstdX 
fBodyAccstdY 
fBodyAccstdZ 
fBodyAccmeanFreqX 
fBodyAccmeanFreqY 
fBodyAccmeanFreqZ 
fBodyAccJerkmeanX 
fBodyAccJerkmeanY 
fBodyAccJerkmeanZ 
fBodyAccJerkstdX 
fBodyAccJerkstdY 
fBodyAccJerkstdZ 
fBodyAccJerkmeanFreqX 
fBodyAccJerkmeanFreqY 
fBodyAccJerkmeanFreqZ 
fBodyGyromeanX 
fBodyGyromeanY 
fBodyGyromeanZ 
fBodyGyrostdX 
fBodyGyrostdY 
fBodyGyrostdZ 
fBodyGyromeanFreqX 
fBodyGyromeanFreqY 
fBodyGyromeanFreqZ 
fBodyAccMagmean 
fBodyAccMagstd 
fBodyAccMagmeanFreq 
fBodyBodyAccJerkMagmean 
fBodyBodyAccJerkMagstd 
fBodyBodyAccJerkMagmeanFreq 
fBodyBodyGyroMagmean 
fBodyBodyGyroMagstd 
fBodyBodyGyroMagmeanFreq 
fBodyBodyGyroJerkMagmean 
fBodyBodyGyroJerkMagstd 
fBodyBodyGyroJerkMagmeanFreq 
angletBodyAccMean_gravity 
angletBodyAccJerkMean_gravityMean 
angletBodyGyroMean_gravityMean 
angletBodyGyroJerkMean_gravityMean 
angleX_gravityMean 
angleY_gravityMean 
angleZ_gravityMean


