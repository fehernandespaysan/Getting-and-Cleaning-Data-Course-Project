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

a. load activity labels

the activities lables were stored in the activity_labels.txt 

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


## Tidy data

The final table contains the average of each variable measured by the experiment by activity for each subject.

Variables:
 [1] "subjectID"                                                
 [2] "activity"                                                 
 [3] "TimeBodyAcceleration.Mean.X"                              
 [4] "TimeBodyAcceleration.Mean.Y"                              
 [5] "TimeBodyAcceleration.Mean.Z"                              
 [6] "TimeBodyAcceleration.Std.X"                               
 [7] "TimeBodyAcceleration.Std.Y"                               
 [8] "TimeBodyAcceleration.Std.Z"                               
 [9] "TimeGravityAcceleration.Mean.X"                           
[10] "TimeGravityAcceleration.Mean.Y"                           
[11] "TimeGravityAcceleration.Mean.Z"                           
[12] "TimeGravityAcceleration.Std.X"                            
[13] "TimeGravityAcceleration.Std.Y"                            
[14] "TimeGravityAcceleration.Std.Z"                            
[15] "TimeBodyAccelerationJerk.Mean.X"                          
[16] "TimeBodyAccelerationJerk.Mean.Y"                          
[17] "TimeBodyAccelerationJerk.Mean.Z"                          
[18] "TimeBodyAccelerationJerk.Std.X"                           
[19] "TimeBodyAccelerationJerk.Std.Y"                           
[20] "TimeBodyAccelerationJerk.Std.Z"                           
[21] "TimeBodyGyro.Mean.X"                                      
[22] "TimeBodyGyro.Mean.Y"                                      
[23] "TimeBodyGyro.Mean.Z"                                      
[24] "TimeBodyGyro.Std.X"                                       
[25] "TimeBodyGyro.Std.Y"                                       
[26] "TimeBodyGyro.Std.Z"                                       
[27] "TimeBodyGyroJerk.Mean.X"                                  
[28] "TimeBodyGyroJerk.Mean.Y"                                  
[29] "TimeBodyGyroJerk.Mean.Z"                                  
[30] "TimeBodyGyroJerk.Std.X"                                   
[31] "TimeBodyGyroJerk.Std.Y"                                   
[32] "TimeBodyGyroJerk.Std.Z"                                   
[33] "TimeBodyAccelerationMagnitude.Mean"                       
[34] "TimeBodyAccelerationMagnitude.Std"                        
[35] "TimeGravityAccelerationMagnitude.Mean"                    
[36] "TimeGravityAccelerationMagnitude.Std"                     
[37] "TimeBodyAccelerationJerkMagnitude.Mean"                   
[38] "TimeBodyAccelerationJerkMagnitude.Std"                    
[39] "TimeBodyGyroMagnitude.Mean"                               
[40] "TimeBodyGyroMagnitude.Std"                                
[41] "TimeBodyGyroJerkMagnitude.Mean"                           
[42] "TimeBodyGyroJerkMagnitude.Std"                            
[43] "FrequencyuencyBodyAcceleration.Mean.X"                    
[44] "FrequencyuencyBodyAcceleration.Mean.Y"                    
[45] "FrequencyuencyBodyAcceleration.Mean.Z"                    
[46] "FrequencyuencyBodyAcceleration.Std.X"                     
[47] "FrequencyuencyBodyAcceleration.Std.Y"                     
[48] "FrequencyuencyBodyAcceleration.Std.Z"                     
[49] "FrequencyuencyBodyAcceleration.MeanFrequency.X"           
[50] "FrequencyuencyBodyAcceleration.MeanFrequency.Y"           
[51] "FrequencyuencyBodyAcceleration.MeanFrequency.Z"           
[52] "FrequencyuencyBodyAccelerationJerk.Mean.X"                
[53] "FrequencyuencyBodyAccelerationJerk.Mean.Y"                
[54] "FrequencyuencyBodyAccelerationJerk.Mean.Z"                
[55] "FrequencyuencyBodyAccelerationJerk.Std.X"                 
[56] "FrequencyuencyBodyAccelerationJerk.Std.Y"                 
[57] "FrequencyuencyBodyAccelerationJerk.Std.Z"                 
[58] "FrequencyuencyBodyAccelerationJerk.MeanFrequency.X"       
[59] "FrequencyuencyBodyAccelerationJerk.MeanFrequency.Y"       
[60] "FrequencyuencyBodyAccelerationJerk.MeanFrequency.Z"       
[61] "FrequencyuencyBodyGyro.Mean.X"                            
[62] "FrequencyuencyBodyGyro.Mean.Y"                            
[63] "FrequencyuencyBodyGyro.Mean.Z"                            
[64] "FrequencyuencyBodyGyro.Std.X"                             
[65] "FrequencyuencyBodyGyro.Std.Y"                             
[66] "FrequencyuencyBodyGyro.Std.Z"                             
[67] "FrequencyuencyBodyGyro.MeanFrequency.X"                   
[68] "FrequencyuencyBodyGyro.MeanFrequency.Y"                   
[69] "FrequencyuencyBodyGyro.MeanFrequency.Z"                   
[70] "FrequencyuencyBodyAccelerationMagnitude.Mean"             
[71] "FrequencyuencyBodyAccelerationMagnitude.Std"              
[72] "FrequencyuencyBodyAccelerationMagnitude.MeanFrequency"    
[73] "FrequencyuencyBodyAccelerationJerkMagnitude.Mean"         
[74] "FrequencyuencyBodyAccelerationJerkMagnitude.Std"          
[75] "FrequencyuencyBodyAccelerationJerkMagnitude.MeanFrequency"
[76] "FrequencyuencyBodyGyroMagnitude.Mean"                     
[77] "FrequencyuencyBodyGyroMagnitude.Std"                      
[78] "FrequencyuencyBodyGyroMagnitude.MeanFrequency"            
[79] "FrequencyuencyBodyGyroJerkMagnitude.Mean"                 
[80] "FrequencyuencyBodyGyroJerkMagnitude.Std"                  
[81] "FrequencyuencyBodyGyroJerkMagnitude.MeanFrequency"
