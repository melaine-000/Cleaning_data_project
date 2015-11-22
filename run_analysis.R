#download and extract files

temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, temp)
unzip(temp,exdir = ".")
unlink(temp)

#read and merge files
activity_labels  = read.table("./UCI HAR Dataset./activity_labels.txt")
features         = read.table("./UCI HAR Dataset./features.txt")

subject_train = read.table("./UCI HAR Dataset./train/subject_train.txt")
train_set     = read.table("./UCI HAR Dataset./train/X_train.txt")
train_labels  = read.table("./UCI HAR Dataset./train/y_train.txt")

subject_test  = read.table("./UCI HAR Dataset./test/subject_test.txt")
test_set      = read.table("./UCI HAR Dataset./test/X_test.txt")
test_labels   = read.table("./UCI HAR Dataset./test/y_test.txt")

set           = rbind(train_set,test_set)
colnames(set) = features[,2]

#extract mean and standard deviation measurements
patterns <- c("mean+[()]+","std+[()]+")
data_mean <- set[,unique(grep(pattern = paste(patterns,collapse="|"),colnames(set)))] 

subject = rbind(subject_train, subject_test)
labels  = rbind(train_labels,test_labels)
data    = cbind(subject,labels,data_mean)

names(data)[1] = "subject"
names(data)[2] = "labels"

#descriptive activity names
data$labels <- activity_labels[data$labels,2]

#descriptive variable names
names(data) <- sub("[()]+","", names(data))
names(data) <- make.names(names(data))

#new data set with average of each variable for each activity and each subject
library(data.table)
new_data    <- data.table(data)
mean_result <- new_data[ ,lapply( .SD, mean),by="subject,labels",.SDcols = 3:68]
mean_result <- mean_result[with(mean_result, order(subject, labels)), ]
write.table(mean_result,file = "new_tidy_data.txt",row.names = FALSE )
