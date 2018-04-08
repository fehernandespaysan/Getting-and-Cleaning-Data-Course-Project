# CodeBook
This codebook details the tables and the variables used in the Getting and Cleaning data final assignment.
- link to the original codebook: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- link to the dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

### Attribute Information

The dataset is then divided into two parts and they can be used separately. 

1. Inertial sensor data 
- Raw triaxial signals from the accelerometer and gyroscope of all the trials with participants. 
- The labels of all the performed activities. 

2. Records of activity windows. Each one composed of: 
- A 561-feature vector with time and frequency domain variables. 
- Its associated activity label. 
- An identifier of the subject who carried out the experiment. 

### Files on the dataset

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## Data transformation

In order to create an integrated tidy dataset the following procedures were performed:

1. Merges the training and the test sets to create one data set

a. load both sets, test and train, into R

b. add column names to the measurement files

c. add column name to the label files

d. add column names for subject files

e. combine files to create one dataset


2. Extract only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data

a. load activity labels

b. extract the activity column of the dataset

c. re-name column levels with the activity labels

d. update activity column in the dataset


4. Appropriately labels the data set with descriptive variable names.

a. remove parentheses

b. correct syntax in names

c. add descriptive names


5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

a. load required package

b. summarize data by subject and activity applying the mean function for every variable column

c. write the table to a txt file called tidydata.txt


## Tidy data

The final table contains the average of each variable measured by the experiment by activity for each subject.
