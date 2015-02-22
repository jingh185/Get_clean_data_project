

#You should create one R script called run_analysis.R that does the following. 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject.

######## Step 0. Load test and training data ########

# set WD
setwd ("~/Coursera_Rcode/Getting&Cleanning_Data/Project Course/")

## load test dataset
test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
#load test file label
test_label <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, 
                         col.names = "label" )
#load test subject
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE,
                           col.names = "subject")

##load training dataset
train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
train_label <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE,
                          col.names = "label" )
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE
                            , col.names = "subject")

######### Step 1. merge test and training data #########
## Merging training and test dataset
data <- rbind(cbind(test_subject,test_label, test), 
                cbind(train_subject, train_label, train))

######### Step 2.  Extracts only the measurements on the ###########
######### mean and standard deviation for each measurement##########

##load features file
features <- read.table("UCI HAR Dataset/features.txt", 
                       strip.white=TRUE, stringsAsFactors=FALSE)

##Only getting feature labels including mean or std word in it
mean_std_column <- features[grep("(mean|std)\\(\\)", features$V2), ]

##subset data with only mean or std columns 
data_mean_std <- data[, c(1,2, mean_std_column$V1+2)]

########## step 3 Uses descriptive activity names to name the activities in the data set####
# Load activities labes
act_lables <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)

# replace labels in data with label names
data_mean_std$label <- act_lables [data_mean_std$label, 2]

########## step 4 Appropriately labels the data set with descriptive variable names. ####
 
# first make a list of the current column names and feature names
prop_colnames <- c("subject", "label", mean_std_column$V2)

# removing every non-alphabetic character and converting to lowercase
prop_colnames <- tolower(gsub("[^[:alpha:]]", "_", colnames))
# replacing ___ with _
prop_colnames <- gsub("___", "_", colnames)
# replacing __ with empty
prop_colnames <- gsub("__", "", colnames)

# then use above list as proper column names
colnames(data_mean_std) <- prop_colnames

########## Step5. From the data set in step 4, creates a second, independent tidy data #####
#########  set with the average of each variable for each activity and each subject. ######

tidy_data <- aggregate(data_mean_std [, 3:ncol(data_mean_std)],
                                by=list(subject = data_mean_std$subject, 
                                        label = data_mean_std$label),
                                mean)


## Write into a text file
write.table(tidy_data, file = "./tidy_data.txt",row.names=FALSE)

