# name: run_analysis.R
#   R script for course project "Getting and Cleaning Data"
# author: kampamocha
# date: 2015-03-22

# Read files
features <- read.table("features.txt", stringsAsFactors=FALSE)
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)

s_train <- read.table("subject_train.txt", col.names="subject")
y_train <- read.table("y_train.txt", col.names="activity")
X_train <- read.table("X_train.txt", col.names=features$V2[features$V1])

s_test <- read.table("subject_test.txt", col.names="subject")
y_test <- read.table("y_test.txt", col.names="activity")
X_test <- read.table("X_test.txt", col.names=features$V2[features$V1])

# Join dataframes selecting only the mean and std columns
mean_std_cols <- grep("(mean|std)[^Freq]", features$V2)

train <- cbind(s_train, y_train, X_train[,mean_std_cols])
test <- cbind(s_test, y_test, X_test[,mean_std_cols])
har <- rbind(train, test)

# Replace activity numbers with descriptive activity names
har$activity <- labels$V2[match(har$activity, labels$V1)]
names(har) <- gsub("\\.{2}","",names(har))

# Summarize variable means by activity and subject
library(reshape2)
har_melt <- melt(har, id=c("activity","subject"), measure.vars=names(har)[-(1:2)])
har_means <- dcast(har_melt, activity+subject ~ variable, mean)

# Write tidy dataset to file
write.table(har_means, "har_means.txt", row.names=FALSE)
