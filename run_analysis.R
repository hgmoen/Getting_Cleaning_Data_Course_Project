## 1. merge test and training data files into one set
d <- "/Users/hgmoen/Documents/Data Science/3- Cleaning Data/UCI HAR Dataset/"
setwd(d)
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
testData <- cbind(subject_test, y_test, X_test)
subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
trainData <- cbind(subject_train, y_train, X_train)
allData<-rbind(testData, trainData)

## 4. Appropriately labels the data set with descriptive variable names. 
featuresData <- read.table("features.txt")
F <- as.character(featuresData[,2])
column_headings <- c("subject", "activity", F)
colnames(allData) <- column_headings

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
col_subset_mean <- grep("mean()" , F, value=TRUE, fixed=TRUE)
col_subset_std <- grep("std()" , F, value=TRUE, fixed=TRUE)
col_subset_headings <- c("subject", "activity", col_subset_mean, col_subset_std)
allData_m_std <- allData[, col_subset_headings]

## 3. Uses descriptive activity names to name the activities in the data set
activity_list <- read.table("activity_labels.txt")
activity_list[,2]<-as.character(activity_list[,2])
for (i in 1:nrow(allData_m_std)) {
        allData_m_std$activity[i] <- activity_list[allData_m_std$activity[i], 2]        
}

## 5. From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
library(plyr)
library(reshape2)
meltedData <- melt(allData_m_std, c("subject", "activity"))
meanData <- ddply(meltedData, c("subject", "activity", "variable"), summarise, mean = mean(value))
meanData
