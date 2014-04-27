
## Coursera Data Science course getdata-002 programming assignment.

## Created: Sun Apr 27 16:17:44 CDT 2014
## Author : Mike Martinez
## Email  : martinezm AT ociweb DOT com

# Obtain the data to a local file if we don't already have it.
if(!file.exists('galaxy.zip')) {
  download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip','galaxy.zip',method='curl')
}

# Load the datasets.

## Create connections to the compressed data files.
features_file <- unz("galaxy.zip",'UCI HAR Dataset/features.txt')
activities_file <- unz("galaxy.zip",'UCI HAR Dataset/activity_labels.txt')

X_test_file <- unz("galaxy.zip",'UCI HAR Dataset/test/X_test.txt')
y_test_file <- unz("galaxy.zip",'UCI HAR Dataset/test/y_test.txt')
subject_test_file <- unz("galaxy.zip",'UCI HAR Dataset/test/subject_test.txt')
X_train_file <- unz("galaxy.zip",'UCI HAR Dataset/train/X_train.txt')
y_train_file <- unz("galaxy.zip",'UCI HAR Dataset/train/y_train.txt')
subject_train_file <- unz("galaxy.zip",'UCI HAR Dataset/train/subject_train.txt')

## Extract the data from the compressed files.
features <- read.table(features_file)
activities <- read.table(activities_file)
X_test <- read.table(X_test_file)
y_test <- read.table(y_test_file)
subject_test <- read.table(subject_test_file)
X_train <- read.table(X_train_file)
y_train <- read.table(y_train_file)
subject_train <- read.table(subject_train_file)

## Close the connections to the compressed data files.
# close(features_file)
# close(activities_file)
# close(X_test_file)
# close(y_test_file)
# close(subject_test_file)
# close(X_train_file)
# close(y_train_file)
# close(subject_train_file)

## Extract the features we want to keep.
std_cols <- grep("-std()",features[,2])
mean_cols <- grep("-mean()",features[,2])

## Narrow the data set to just those columns
X_test_narrow  <- X_test[,c(std_cols,mean_cols)]
X_train_narrow <- X_train[,c(std_cols,mean_cols)]


