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

#### Data transformation

1. Merges the training and the test sets to create one data set

- load both sets, test and train, into R

- add column names to the measurement files

- add column name to the label files

- add column names for subject files

- combine files to create one dataset


2. Extract only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data

4. Appropriately labels the data set with descriptive variable names.

- remove parentheses

- correct syntax in names

- add descriptive names


5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- load required package 

- summarize data by subject and activity, applying the mean function for every variable column

- write the table to a txt file called tidydata.txt

 
