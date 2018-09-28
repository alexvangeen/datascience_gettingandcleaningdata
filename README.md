# datascience_gettingandcleaningdata
This repository contains the files for the peer reviewed exercise of week 4 for the Coursera course "getting and cleaning data", part of the Data Science specialization.The purpose of this exercise is to create a tidy data set (fulfilling specific requirements) out of a raw data set, described below. 

## The raw data
The data is from the UCL Machine learning website, it is the Human Activity Recognition Using Smartphones Data Set. The script contains a download of this data but the data and description can also be found at  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
In the raw data the unlabeled features for the test data can be found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt file. The training data sets are similarly named. 

## The script and the tidy dataset
the script to create the tidy data set is included in this repo and is called run_analysis.R. 
This script includes a download of the data (this was not a requirement of the exercise but hopefully makes it easier for the user). This scrip merges the test and training sets together and performs some other operations. Specifically, labels are added and only columns that have to do with mean and standard deviation are retained. Subsequently the script created the tidy data set in the form of a tab-delimited file with the means of all the columns per test subject and per activity. This tidy data set (tidy_data.txt) is also included in this repo. 

## The Code Book
The codebook of de data set is included in the repo (CodeBook.md) and describes the data, the variables and the specific transformations that were performed.
