# Codebook

# Source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Study Design
Raw data are obtained from UCI Machine Learning repository. Data are collected from the accelerometers from the Samsung Galaxy S smartphone. 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

# Code book

- subject	
	subject number from 1 to 30. Unique identifier assigned to each subject
- label
	Activity label	6..18
		“WALKING"
		“WALKING_UPSTAIRS"
		“WALKING_DOWNSTAIRS"
		“SITTING"
		"STANDING"
		"LAYING"

Note: Below variables please refer to next session “Measurment”
- tbodyacc_mean_x
- tbodyacc_mean_y
- tbodyacc_mean_z
- tbodyacc_std_x
- tbodyacc_std_y
- tbodyacc_std_z
- tgravityacc_mean_x
- tgravityacc_mean_y
- tgravityacc_mean_z
- tgravityacc_std_x
- tgravityacc_std_y
- tgravityacc_std_z
- tbodyaccjerk_mean_x
- tbodyaccjerk_mean_y
- tbodyaccjerk_mean_z
- tbodyaccjerk_std_x
- tbodyaccjerk_std_y
- tbodyaccjerk_std_z
- tbodygyro_mean_x
- tbodygyro_mean_y
- tbodygyro_mean_z
- tbodygyro_std_x
- tbodygyro_std_y
- tbodygyro_std_z
- tbodygyrojerk_mean_x
- tbodygyrojerk_mean_y
- tbodygyrojerk_mean_z
- tbodygyrojerk_std_x
- tbodygyrojerk_std_y
- tbodygyrojerk_std_z
- tbodyaccmag_mean
- tbodyaccmag_std
- tgravityaccmag_mean
- tgravityaccmag_std
- tbodyaccjerkmag_mean
- tbodyaccjerkmag_std
- tbodygyromag_mean
- tbodygyromag_std
- tbodygyrojerkmag_mean
- tbodygyrojerkmag_std
- fbodyacc_mean_x
- fbodyacc_mean_y
- fbodyacc_mean_z
- fbodyacc_std_x
- fbodyacc_std_y
- fbodyacc_std_z
- fbodyaccjerk_mean_x
- fbodyaccjerk_mean_y
- fbodyaccjerk_mean_z
- fbodyaccjerk_std_x
- fbodyaccjerk_std_y
- fbodyaccjerk_std_z
- fbodygyro_mean_x
- fbodygyro_mean_y
- fbodygyro_mean_z
- fbodygyro_std_x
- fbodygyro_std_y
- fbodygyro_std_z
- fbodyaccmag_mean
- fbodyaccmag_std
- fbodybodyaccjerkmag_mean
- fbodybodyaccjerkmag_std
- fbodybodygyromag_mean
- fbodybodygyromag_std
- fbodybodygyrojerkmag_mean
- fbodybodygyrojerkmag_std

#Measurement
Quote from the features_info.txt file: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- ’t’ or 'f' = time or frequency domain
- ‘Body' or 'Gravity' - Indicating body or gravity acceleration.
- mean: average value
- Std: standard deiion
- acc: Variables containing acc refer to acceleration values.

#Transformation
All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.
