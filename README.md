# Getting-and-Cleaning-Data-Course-Project

The purpose of this project is to collect, work with, and clean a data set.

## Dataset used

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## You can find in this repository:

### run_analysis.R

R script created to perform the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Code_Book.MD

Detailed procedures performed on the data in order to create the final Tidy data file.

Data transformation

1. Merges the training and the test sets to create one data set

a. load both sets, test and train, into R

X_train.txt - Training set;
y_train.txt - Training labels;
subject_train.txt - sugject identification;
X_test.txt - Test set;
y_test.txt - Test labels;
subject_test.txt - sugject identification.

b. add column names to the measurement files

the columns names for the X_train.txt and X_test.txt file were stored in the features.txt

c. add column name to the label files

the column were named activity

d. add column names for subject files

the column were named subjectID

e. combine files to create one dataset

- the function cbind were used to combine: X_train, y_train, and subject_train.
- the function cbind were used to combine: X_test, y_test, and subject_test.
- finally the rbind function were used to combine both sets in an integrated dataset


2. Extract only the measurements on the mean and standard deviation for each measurement.

the grepl function were used to identify in the dataset all columns that contains either mean or std in the names 


3. Uses descriptive activity names to name the activities in the data

a. load activity labels - the activities lables were stored in the activity_labels.txt 

b. extract the activity column of the dataset

c. re-name column levels with the activity labels

d. update activity column in the dataset


4. Appropriately labels the data set with descriptive variable names.

a. remove parentheses

b. correct syntax in names

c. add descriptive names


5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

a. load required package 

b. summarize data by subject and activity, applying the mean function for every variable column

c. write the table to a txt file called tidydata.txt

 
