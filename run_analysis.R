#
# FILE
#   run_analysis.R
#
# OVERVIEW
#   Using data collected from mobile phone acceleration device to compute average measurements of physical performance
#   per individual and by activity

#################################################################
#1. Merges the training and the test sets to create one data set.
################################################################
getwd()
if(!file.exists("c3CP")){dir.create("c3CP")}
Fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Fileurl, destfile = "./c3CP/zipdata.zip")
unzip("./c3CP/zipdata.zip", exdir="c3CP")
library(dplyr)
#reading the files
###test data
test.subject <- read.table("./c3CP/UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("./c3CP/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./c3CP/UCI HAR Dataset/test/Y_test.txt")
###train data
train.subject <- read.table("./c3CP/UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("./c3CP/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./c3CP/UCI HAR Dataset/train/Y_train.txt")
#merging train and test datasets
totalx <- rbind(test.x, train.x)
totaly <- rbind(test.y, train.y)
totalsubject <- rbind(test.subject, train.subject)
#combining to one data set
dataset <- cbind(totalx, totaly)
dataset <- cbind(dataset, totalsubject)
################################################################################################
#2 Extracts only the measurements on the mean and standard deviation (std) for each measurement.
################################################################################################
#read feature info
features <- read.table("./c3CP/UCI HAR Dataset/features.txt")
#identify mean and std vars
meanfeature <- grep("mean()", features$V2)
sdfeature <- grep("std()", features$V2)
#creating sequence of all column numbers that are to be kept
myvars <- c(meanfeature, sdfeature, 562, 563)
newdata <- dataset[,myvars]
#############################################################################
#3. Uses descriptive activity names to name the activities in the data set
##############################################################################
newdata$V1.1 <- factor(newdata$V1.1,
                           levels = c(1,2,3,4,5,6),
                           labels = c("Walking", "Walking_upstairs", "Walking_downstairs", "Sitting", "Standing", "Lying"))
#######################################################################
#4 Appropriately labels the data set with descriptive variable names.
#######################################################################
colnames(newdata)[colnames(newdata)=="V1.1"] <- "Activity"
colnames(newdata)[colnames(newdata)=="V1.2"] <- "Subject"
#for subset features
featuressub <- features[grep("std()|mean()", features$V2, value=FALSE),]
for (i in 1:79) {
  names(newdata)[i]<-as.character(featuressub[i,2])}
#################################################################################################################
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
#each activity and each subject.
#################################################################################################################
output <- newdata %>% group_by(Subject, Activity) %>% summarise_all(funs(mean))
##################################
# output to file "tidy_data.txt"
##################################
write.table(output, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
