# Getting and Cleaning Data
Purpose is to collect, work with, and clean a data set.

Original dataset from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# Files in this Repo
- README.md: you are currently reading
- CodeBook.md: codebook describing the variables, the data, and any transformations performed to clean up the data
- run_analysis.R: actual R code

# Overall Project Goal
Create one R script called run_analysis.R that does the following. 
- 1. Merges the training and the test sets to create one data set.
- 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
- 3. Uses descriptive activity names to name the activities in the data set
- 4. Appropriately labels the data set with descriptive variable names. 
- 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Steps for this project
- Step1: 
	— Download and load test and training files
	- Combine test and training files into a data frame including subject, label and the actual data

- Step2: 
	- Load features files (features.txt) into R 
	- Subset to get only getting features labels that including mean or std word in it
	- Create a subset data with only mean or std columns

- Step3: 
	- Load descriptive activity names (activity_ables.txt) into R and replace number labels with proper activity names

- Step4: 
	- Based on step2 loaded mean or std feature labels, reconstruct label names
	- replacing “()” with empty value and replace “-” and “_” and make lowercase. e.g. 
	- Replace column names (v1, v2, etc) with above renamed descriptive activity names
- Step5:
	- create a tidy dataset with the average of each variable for each activity and each subject

- Step6: - Write tidy data into a text file with row.names = FALSE
