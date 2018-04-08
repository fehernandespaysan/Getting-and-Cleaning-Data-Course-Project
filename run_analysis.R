# 1. Merges the training and the test sets to create one data set

# a. load both sets, test and train, into R
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# b. add column names to the measurement files  
features<- read.table("./UCI HAR Dataset/features.txt") [,2]
names(X_test) = features
names(X_train) = features

# c. add column name to the label files
names(y_train) <- "activity"
names(y_test) <- "activity"

# d. add column names for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

# e. combine files to create one dataset
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
combined <- rbind(train, test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.
MeanStdOnly <- grepl("mean|std", names(combined))
MeanStdOnly[1:2] <- TRUE  # ensure that we also keep the subjectID and activity columns
dataSet <- combined[,MeanStdOnly]

# 3. Uses descriptive activity names to name the activities in the data

# a. load activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# b. extract the activity column of the dataset
activity_column <- factor(dataSet$activity)
# c. re-name column levels with the activity labels
levels(act_group) <- activity_labels[,2]
# d. update activity column in the dataset
dataSet$activity <- act_group

#4. Appropriately labels the data set with descriptive variable names.

# a. remove parentheses
names(dataSet) <- gsub("\\(|\\)", "", names(dataSet), perl  = TRUE)

# b. correct syntax in names
names(dataSet) <- make.names(names(dataSet))

# c. add descriptive names
names(dataSet) <- gsub("Acc", "Acceleration", names(dataSet))
names(dataSet) <- gsub("^t", "Time", names(dataSet))
names(dataSet) <- gsub("^f", "Frequency", names(dataSet))
names(dataSet) <- gsub("BodyBody", "Body", names(dataSet))
names(dataSet) <- gsub("mean", "Mean", names(dataSet))
names(dataSet) <- gsub("std", "Std", names(dataSet))
names(dataSet) <- gsub("Freq", "Frequency", names(dataSet))
names(dataSet) <- gsub("Mag", "Magnitude", names(dataSet))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# a. load required package
library (plyr)

# b. summarize data by subject and activity applying the mean function for every variable column
tidydata<- ddply(dataSet, c("subjectID","activity"), numcolwise(mean))

# c. write the table to a txt file called tidydata.txt
write.table(tidydata,file="tidydata.txt", row.name=FALSE)