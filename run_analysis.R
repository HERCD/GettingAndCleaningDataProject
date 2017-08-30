#Download zip-file from URL
fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="data.zip")

#Get zip-file and unzip all files
library(plyr)
zipFile <- list.files(pattern = "*.zip", full.names = TRUE)
ldply(.data = zipFile, .fun = unzip, exdir = "files")

#Supporting function to read files
folder=paste("files",'/UCI HAR Dataset',sep = '')
readFile <- function(filePath)  read.table(file.path(folder, filePath))

#1 Read and merges the training and the test sets to create one data set
mergedData <- rbind(readFile('train/X_train.txt'), readFile('test/X_test.txt'))

#2 Extract measurements on the mean and standard deviation of each measurement
library(data.table)
featureNames <- readFile('features.txt')[,2]
columnList <- grep('(mean|std)\\(\\)', featureNames)
extractedData <- mergedData[,columnList]
columnNames <- as.character(featureNames[columnList])
setnames(extractedData, names(extractedData),columnNames)

#3 Uses descriptive activity names to name the activities in the data set
activities <- rbind(readFile('train/y_train.txt'), 
                    readFile('test/y_test.txt'))[,1]
labels <- readFile('activity_labels.txt')[,2]
labelledActivities <- labels[activities]
extractedData <- cbind(Activity = labelledActivities, extractedData)

#4 Appropriately labels the data set with descriptive variable names
#DH: Column names of data set are already set (see line 23 and line 30)

#5 From the data set in step 4, create a second, independent tidy data set
#  with the average of each variable for each activity and each subject
subjects <- rbind(readFile('train/subject_train.txt'), 
                  readFile('test/subject_test.txt'))[,1]
tidyData <- cbind(Subject = subjects, extractedData)

tidyAverages <- ddply(tidyData, .(Subject,Activity), numcolwise(mean))
write.table(tidyAverages, "tidyAverages.txt", sep = ",", quote = FALSE, 
            row.names = FALSE)

#Remove unzipped folder from working directory
unlink("files",recursive = TRUE)