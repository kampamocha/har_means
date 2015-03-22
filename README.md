---
title: "Getting and Cleaning Data Course Project"
output: html_document
---

This file describes the script "run_analysis.R" used to summarize the "Human Activity Recognition Using Smartphones Data Set" downloaded from <http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip>.

## Input

The input is readed from the following files:

* subject_train.txt
* y_train.txt
* X_train.txt
* subject_test.txt
* y_test.txt
* X_test.txt
* features.txt
* activity_labels.txt

## Process

The script reads the train and test sets of the activity recognition data, then combine both data sets to produce a unique data set selecting the columns associated with the measurements mean and standard deviation. As output the script summarizes those measurements by activity and subject. To library *reshape2* is necessary to perform grouping and summarization of the variables.

The outline is the following:

* Join the train and test data selecting only the variables for mean and standard deviations estimations
* Replace activity numbers with descriptive activity names
* Summarize variable means by activity and subject

## Output
The output is a tidy data set with 180 observations containing the mean of 64 measurement variables grouped by activity and subject in the file *har_means.txt*.
