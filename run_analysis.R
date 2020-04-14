#This script follow all the steps requird to create 
# a tidy dataset.explained in requirement document.



#Including Library
library(reshape2)

#Downloading and unziping dataset
dataset_url<- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
destfile='dataset.zip'
if (!file.exists(destfile)){
  download.file(fileURL, destfile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(destfile) 
}


#1. Merge training and test sets to create one single data set.

pathtrain<-'C:/Users/varun/Downloads/Getting-and-Cleaning-Data/UCI HAR Dataset/train'
pathtest<- 'C:/Users/varun/Downloads/Getting-and-Cleaning-Data/UCI HAR Dataset/test'

#reading lables,features
setwd('C:/Users/varun/Downloads/Getting-and-Cleaning-Data/UCI HAR Dataset/')
activity_lables<- read.table('activity_labels.txt')
features<- read.table('features.txt')

#reading Subjects
sub_Train <- read.table(file.path(pathtrain, "subject_train.txt"))
sub_Test <- read.table(file.path(pathtest, "subject_test.txt"))
subjects <- rbind(sub_Train, sub_Test)

#Reading and meargeing Training and Test dataset.
train<- read.table(file.path(pathtrain, "X_train.txt"))
test<- read.table(file.path(pathtest, "X_test.txt"))
x<- rbind(train,test)


# Merge Labels
y_Train <- read.table(file.path(pathtrain, "y_train.txt"))
y_Test <- read.table(file.path(pathtest, "y_test.txt"))
y <- rbind(y_Train, y_Test)


#2. Extracting the measurements of the mean and the standard deviation 
#    for each measurement.
names(x)<-features[,2]
Selected_features<-grep(".*mean.*|.*std.*", names(x))
Selected_features<- x[Selected_features]
names(Selected_features) = gsub('-mean', 'Mean', names(Selected_features))
names(Selected_features) = gsub('-std', 'Std', names(Selected_features))
names(Selected_features) <- gsub('[-()]', '', names(Selected_features))
x<- Selected_features

# 3. Uses descriptive activity names to name the activities in the dataset

y[,1] <- activity_lables[y[,1], 2]
names(y) <- "activity"  



# 4. Appropriately labels the data set with descriptive activity names.
names(subjects) <- "subject"
cleaned_data <- cbind(subjects, y, x)


# 5. Creates an independent tidy data set with the average of 
#    each variable for each activity and each subject.

cleaned_data$activity <- factor(cleaned_data$activity)
cleaned_data$subject <- as.factor(cleaned_data$subject)


melted_cleaned_data <- melt(cleaned_data, id = c("subject", "activity"))
cleaned_data_mean <- dcast(melted_cleaned_data, subject + activity ~ variable, mean)

# writing data into file.
write.table(cleaned_data_mean, "tidy.txt", row.names = FALSE, quote = FALSE)
