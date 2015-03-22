---
title: "CodeBook.md"
output: html_document
---

## Introduction
The *har_means* data set contains the summary of the mean and standard deviation measurements collected in the *Human Activity Recognition Using Smartphones* data set downloaded from <http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip>.

The input data consisted in 561 measurement variables plus one variable for the subject and another variable for the activity. The data is divided in a training set consisting in the 70% of the observations and a test set with the other 30%. Those sets were joined together and summarized to obtain as output the *har_means* data set with 68 variables (columns) and 180 observations (rows).

The variables selected were only those containing mean and standard deviations from the measurementes not including mean frequencies grouped by activity and subject.

## Grouping variables
"activity": The label of the activity performed at the moment of the measurement. This variable was mapped from the input data according to the following (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING)

"subject": An integer id for the subject that perform the activity.

## Measurement variables
These variables contain the mean of the measurements grouped by activity and subject. The measurements refer to the same variables described in the input data set with estimations of the mean and standard deviations of the 3-axial signals in the X, Y and Z directions.

"tBodyAcc.mean.X"

"tBodyAcc.mean.Y"

"tBodyAcc.mean.Z"

"tBodyAcc.std.X"

"tBodyAcc.std.Y"

"tBodyAcc.std.Z"

"tGravityAcc.mean.X"

"tGravityAcc.mean.Y"

"tGravityAcc.mean.Z"

"tGravityAcc.std.X"

"tGravityAcc.std.Y"

"tGravityAcc.std.Z"

"tBodyAccJerk.mean.X"

"tBodyAccJerk.mean.Y"

"tBodyAccJerk.mean.Z"

"tBodyAccJerk.std.X"

"tBodyAccJerk.std.Y"

"tBodyAccJerk.std.Z"

"tBodyGyro.mean.X"

"tBodyGyro.mean.Y"

"tBodyGyro.mean.Z"

"tBodyGyro.std.X"

"tBodyGyro.std.Y"

"tBodyGyro.std.Z"

"tBodyGyroJerk.mean.X"

"tBodyGyroJerk.mean.Y"

"tBodyGyroJerk.mean.Z"

"tBodyGyroJerk.std.X"

"tBodyGyroJerk.std.Y"

"tBodyGyroJerk.std.Z"

"tBodyAccMag.mean"

"tBodyAccMag.std"

"tGravityAccMag.mean"

"tGravityAccMag.std"

"tBodyAccJerkMag.mean"

"tBodyAccJerkMag.std"

"tBodyGyroMag.mean"

"tBodyGyroMag.std"

"tBodyGyroJerkMag.mean"

"tBodyGyroJerkMag.std"

"fBodyAcc.mean.X"

"fBodyAcc.mean.Y"

"fBodyAcc.mean.Z"

"fBodyAcc.std.X"

"fBodyAcc.std.Y"

"fBodyAcc.std.Z"

"fBodyAccJerk.mean.X"

"fBodyAccJerk.mean.Y"

"fBodyAccJerk.mean.Z"

"fBodyAccJerk.std.X"

"fBodyAccJerk.std.Y"

"fBodyAccJerk.std.Z"

"fBodyGyro.mean.X"

"fBodyGyro.mean.Y"

"fBodyGyro.mean.Z"

"fBodyGyro.std.X"

"fBodyGyro.std.Y"

"fBodyGyro.std.Z"

"fBodyAccMag.mean"

"fBodyAccMag.std"

"fBodyBodyAccJerkMag.mean"

"fBodyBodyAccJerkMag.std"

"fBodyBodyGyroMag.mean"

"fBodyBodyGyroMag.std"

"fBodyBodyGyroJerkMag.mean"

"fBodyBodyGyroJerkMag.std"

