# GettingAndCleaningDataProject
This repo contains the final project assignment for the course "Getting and Cleaning Data" (JHU, Coursera)

## Purpose
The purpose of this project is to prepare tidy data from the "Human Activity Recognition Using Smartphones Dataset" Version 1.0 : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original data source:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Its explanation:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

## Files
The project contains the following files:
* 'README.md'
* `data.zip` containing the Human Activity Recognition Using Smartphones Dataset Version 1.0.
* `CodeBook.md` which provides an overview of the orginal data, applied transformations and the tidy data created with "run_analysis.R"
* `run_analysis.R`: R scripts which unzips, reads and processes the orginal dataset and writes tidyAverages.txt
* 'tidyAverages.txt': output of 'run_analysis.R', its structure is described by 'codeBook.md'

## Analysis
Processing and analysis performed by `run_analysis.R` which undertakes the following steps:
1.Downloads data using URL of original datasource
1.Unzips data using the 'plyr' package in R
1.Merges the *X_train.txt* and *X_test.txt* datasets into a single dataset
1.Extracts only the measurements on the mean and standard deviation for each measurement
1.Uses descriptive activity names to name the activities in the data set
1.Appropriately labels the data set with descriptive variable names.
1.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
