# CodeBook

This codebook describes the data, variables and any transformations used to generate tidy data
from the Human Activity Recognition Using Smartphones Dataset.

## Original Data Set
* Original dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Original Data Description
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration
and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter
into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables
from the time and frequency domain. For more details, see `features_info.txt` and `features.txt` provided with the original
data.

## Original Data Features
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

More specifically, the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated
into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern ('-XYZ' is used to
denote 3-axial signals in the X, Y and Z directions):
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are:
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values.
* iqr(): Interquartile range
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal
* kurtosis(): kurtosis of the frequency domain signal
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in `features.txt`

## Transformations
The following transformations have been applied to the original dataset:
* In the original data, datasets were split into a training and test dataset. These are now merged into a single dataset.
* Only original features with mean() and std() in the name are selected. The merged dataset therefore only contains 66 out of 561 original features.
* The activity and subject are appended to the merged dataset
* The columns are named to be consistent with the original dataset
* Mean and standard deviations were calculated for all 66 features. These were calculated per test subject per activity (30 subjects x 6 activities).

## Description tidy data
The tidy dataset includes the following fields/columns:
* Identification number of the subject who carried out the experiment (data type: integer)
* Label describing the activity the subject performed (data type: character)
* The  average and standard deviation for the following original measurement types (data type: float)
    + tBodyAcc-mean()-X
    + tBodyAcc-mean()-Y
    + tBodyAcc-mean()-Z
    + tBodyAcc-std()-X
    + tBodyAcc-std()-Y
    + tBodyAcc-std()-Z
    + tGravityAcc-mean()-X
    + tGravityAcc-mean()-Y
    + tGravityAcc-mean()-Z
    + tGravityAcc-std()-X
    + tGravityAcc-std()-Y
    + tGravityAcc-std()-Z
    + tBodyAccJerk-mean()-X
    + tBodyAccJerk-mean()-Y
    + tBodyAccJerk-mean()-Z
    + tBodyAccJerk-std()-X
    + tBodyAccJerk-std()-Y
    + tBodyAccJerk-std()-Z
    + tBodyGyro-mean()-X
    + tBodyGyro-mean()-Y
    + tBodyGyro-mean()-Z
    + tBodyGyro-std()-X
    + tBodyGyro-std()-Y
    + tBodyGyro-std()-Z
    + tBodyGyroJerk-mean()-X
    + tBodyGyroJerk-mean()-Y
    + tBodyGyroJerk-mean()-Z
    + tBodyGyroJerk-std()-X
    + tBodyGyroJerk-std()-Y
    + tBodyGyroJerk-std()-Z
    + tBodyAccMag-mean()
    + tBodyAccMag-std()
    + tGravityAccMag-mean()
    + tGravityAccMag-std()
    + tBodyAccJerkMag-mean()
    + tBodyAccJerkMag-std()
    + tBodyGyroMag-mean()
    + tBodyGyroMag-std()
    + tBodyGyroJerkMag-mean()
    + tBodyGyroJerkMag-std()
    + fBodyAcc-mean()-X
    + fBodyAcc-mean()-Y
    + fBodyAcc-mean()-Z
    + fBodyAcc-std()-X
    + fBodyAcc-std()-Y
    + fBodyAcc-std()-Z
    + fBodyAccJerk-mean()-X
    + fBodyAccJerk-mean()-Y
    + fBodyAccJerk-mean()-Z
    + fBodyAccJerk-std()-X
    + fBodyAccJerk-std()-Y
    + fBodyAccJerk-std()-Z
    + fBodyGyro-mean()-X
    + fBodyGyro-mean()-Y
    + fBodyGyro-mean()-Z
    + fBodyGyro-std()-X
    + fBodyGyro-std()-Y
    + fBodyGyro-std()-Z
    + fBodyAccMag-mean()
    + fBodyAccMag-std()
    + fBodyBodyAccJerkMag-mean()
    + fBodyBodyAccJerkMag-std()
    + fBodyBodyGyroMag-mean()
    + fBodyBodyGyroMag-std()
    + fBodyBodyGyroJerkMag-mean()
    + fBodyBodyGyroJerkMag-std()
