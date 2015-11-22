# README
This document explains how the scripts in the file "run_analysis.R" works.

Firstly, download and extract data


```r
temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, temp)
unzip(temp,exdir = ".")
unlink(temp)
```

##1.Merging the training and the test sets to create one data set

Loading the data files into variables

Read in following files:
"activity_labels.txt", "features.txt". 
"subject_train.txt", "X_train.txt" and "y_train.txt" in the "train" folder. 
"subject_test.txt", "X_test.txt" and "y_test.txt" in the "test" folder


```r
activity_labels  = read.table("./UCI HAR Dataset./activity_labels.txt")
features         = read.table("./UCI HAR Dataset./features.txt")

subject_train = read.table("./UCI HAR Dataset./train/subject_train.txt")
train_set     = read.table("./UCI HAR Dataset./train/X_train.txt")
train_labels  = read.table("./UCI HAR Dataset./train/y_train.txt")

subject_test  = read.table("./UCI HAR Dataset./test/subject_test.txt")
test_set      = read.table("./UCI HAR Dataset./test/X_test.txt")
test_labels   = read.table("./UCI HAR Dataset./test/y_test.txt")
```

combine train_set and test_set to form new data "set", and use "feature" to give column names of "set"


```r
set           = rbind(train_set,test_set)
colnames(set) = features[,2]
```

##2.Extracting only the measurements on the mean and standard deviation for each measurement.
Looking at the file "features.txt" and select the indices of those features that has "mean()" or "std()" in them.

attach "subject" and "labels" as columns to the left of this selected data set


```r
patterns <- c("mean+[()]+","std+[()]+")
data_mean <- set[,unique(grep(pattern = paste(patterns,collapse="|"),colnames(set)))] 

subject = rbind(subject_train, subject_test)
labels  = rbind(train_labels,test_labels)
data    = cbind(subject,labels,data_mean)

names(data)[1] = "subject"
names(data)[2] = "labels"
```

##3.Using descriptive activity names to name the activities in the data set
The table in the file "activity_labels.txt" gives the names of the activities that the numbers in the column "labels" in "data" represent. The following line of code replaces the numbers in the column "labels" with the names.


```r
data$labels <- activity_labels[data$labels,2]
```

##4.Appropriately labeling the data set with descriptive variable names

substitute "()" in the column names. And than transform it to more readable forms.


```r
names(data) <- sub("[()]+","", names(data))
names(data) <- make.names(names(data))
```

##5.Creating a new data set with average of each variable for each activity and each subject

transform data to a data.table. Calculated average of each variable for each "labels" and each "subject" and sort table over "subject,labels". Then save the new data to "new_tidy_data.txt"


```r
library(data.table)
new_data    <- data.table(data)
mean_result <- new_data[ ,lapply( .SD, mean),by="subject,labels",.SDcols = 3:68]
mean_result <- mean_result[with(mean_result, order(subject, labels)), ]
write.table(mean_result,file = "new_tidy_data.txt",row.names = FALSE )
```
