# Human Activity Recognition Using Smartphones Data Set #
### Getting and Cleaning Data Course Project  
#### Aleksei Neverov, 2016

## Content  
1. Common issues
1. Data dictionary - UCI Human Activity Recognition Using smartphones (Dataset 1)
1. Instruction script: Gettig the dataset 1 from the raw data
1. Data dictionary - UCI Human Activity Recognition Using smartphones. Mean values (Dataset 2)
1. Instruction script: Getting the dataset 2 from the raw data

## 1. Common issues ##
The data were estimated during the experiments described  on this web page [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiment were carried out with the group of 30 volunteers. They performed a protocol of different activities. All the participants were wearing a smartphome Samsung Galaxy II on the waist during the experiment execution. During the experiment execution were collected data about 3-axial linear acceleration and 3-axial angular velocity as a raw traxixal signals from the accelerometer and gyroscope. The obtained data was randomly partioned into two sets: 70% of the volunteers were selected for the training dataset, and 30% - for the test dataset.

The traxixal signals were used to create a recordset of the activities. Each record of this dataset is associated with a activity and a volunteer. The record contains 561 features describing an activity.All features in this record set are normalized and bounded within [-1,1].

As source for this project a set of files was used:

1. ./data/activity_labels.txt - the list of activity labels;
2. ./data/features.txt - the list of all features;
3. ./data/train - the directory containing the information about activities of the volunteers from the train dataset;
4. ./data/train/subject_train.txt - each row identifies the subject who performed the activity for each window sample;
5. ./data/train/y_train.txt - each row identifies the activity in the dataset;
6. ./data/train/x _ train.txt - feature's information. Each row contains values for 561 features describing the execution of the activity from the y _ test.txt by the sublect from the subject_train.txt. The data were estimated during the handling of the raw data.
7. ./data/train/Inertial Signals - the folder containing the raw traxixal signals
8. ./data/test - the directory  containing the information about activities of the volunteers from the test dataset. This folder contains files of the same types like the directory ./train. 

The traxixal signals weren't used in this project because all features we need to create Dataset 1 and Dataset 2 are stored in the files ./data/train/x _ train.txt and ./data/test/x _ test.txt. 
  
## 2. Data dictionary - UCI Human Activity Recognition Using smartphones (Dataset 1) ##

Dataset 1 contains data about the mean values and standard deviations of the fuatuers. Each row describe an observation associated with a volunteer (subject) and an activity. The combination of values of these parameters aren't unique for this dataset. So each rows of the Dataset 1 contains values of the features 3-68, fixed for one subject and one activity during a single observation.

1. **Subject** - ID of the sublect. Integer. Values = 1:30
1. **ActvityName** - Names of the activities. Character. Values:

	1 WALKING

	2 WALKING_UPSTAIRS

	3 WALKING_DOWNSTAIRS

	4 SITTING

	5 STANDING

	6 LAYING
1. **tBodyAccMeanX** - Mean value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the X direction. Numeric. Messure: g 
1. **tBodyAccMeanY** - Mean value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Y direction. Numeric. Messure: g
1. **tBodyAccMeanZ** - Mean value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Z direction. Numeric. Messure: g
1. **tBodyAccStdX** - Standard deviation value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the X direction. Numeric. Messure: g
1. **tBodyAccStdY** - Standard deviation value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Y direction. Numeric. Messure: g
1. **tBodyAccStdZ** - Standard deviation value of the body acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Z direction. Numeric. Messure: g
1. **tGravityAccMeanX** - Mean value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the X direction. Numeric. Messure: g
1. **tGravityAccMeanY** - Mean value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Y direction. Numeric. Messure: g
1. **tGravityAccMeanZ** - Mean value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Z direction. Numeric. Messure: g
1. **tGravityAccStdX** - Standard deviation value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the X direction. Numeric. Messure: g
1. **tGravityAccStdY** - Standard deviation value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Y direction. Numeric. Messure: g
1. **tGravityAccStdZ** - Standard deviation value of the gravity acceleration values, captured within the time windows at a constant rate of the 50 Hz (within time domain) in the Z direction. Numeric. Messure: g
2. **tBodyAccJerkMeanX** - Mean value of the body acceleration jerk values, captured within time domain in X direction. Numeric. Messure: g
1. **tBodyAccJerkMeanY** - Mean value of the body acceleration jerk values, captured within time domain in Y direction. Numeric. Messure: g
1. **tBodyAccJerkMeanZ** - Mean value of the body acceleration jerk values, captured within time domain in Z direction. Numeric. Messure: g
1. **tBodyAccJerkStdX** - Standard deviation of the body acceleration jerk values, captured within time domain in X direction. Numeric. Messure: g
1. **tBodyAccJerkStdY** - Standard deviation of the body acceleration jerk values, captured within time domain in Y direction. Numeric. Messure: g
1. **tBodyAccJerkStdZ** - Standard deviation of the body acceleration jerk values, captured within time domain in Z direction. Numeric. Messure: g
2. **tBodyGyroMeanX** - Mean value of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the X direction. Numeric. Messure: rad/seg
1. **tBodyGyroMeanY** - Mean value of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the Y direction. Numeric. Messure: rad/seg
1. **tBodyGyroMeanZ** - Mean value of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the Y direction. Numeric. Messure: rad/seg
1. **tBodyGyroStdX** - Standard deviation of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the X direction. Numeric. Messure: rad/seg
1. **tBodyGyroStdY** - Standard deviation of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the Y direction. Numeric. Messure: rad/seg
1. **tBodyGyroStdZ** - Standard deviation of the angular velocity values, captured within the time windows at a constant rate of the 50 Hz in the Z direction. Numeric. Messure: rad/seg 
1. **tBodyGyroJerkMeanX** - Mean value of the angular velocity jerk values, captured within time domain in X direction. Numeric. Messure: rad/seg
1. **tBodyGyroJerkMeanY** - Mean value of the angular velocity jerk values, captured within time domain in Y direction. Numeric. Messure: rad/seg
1. **tBodyGyroJerkMeanZ** - Mean value of the angular velocity jerk values, captured within time domain in Z direction. Numeric. Messure: rad/seg
1. **tBodyGyroJerkStdX** - Standard devation of the angular velocity jerk values, captured within time domain in X direction. Numeric. Messure: rad/seg
1. **tBodyGyroJerkStdY** - Standard devation of the angular velocity jerk values, captured within time domain in Y direction. Numeric. Messure: rad/seg
1. **tBodyGyroJerkStdZ** - Standard devation of the angular velocity jerk values, captured within time domain in Z direction. Numeric. Messure: rad/seg 
1. **tBodyAccMagMean** - Mean value of the body acceleration magnitude, captured within time domain. Numeric. Messure: g
1. **tBodyAccMagStd** - Standard deviation of the body acceleration magnitude, captured within time domain. Numeric. Messure: g 
1. **tGravityAccMagMean** - Mean value of the gravity acceleration magnitude, captured within time domain. Numeric. Messure: g
1. **tGravityAccMagStd**- Standard deviation of the gravity acceleration magnitude, captured within time domain. Numeric. Messure: g 
1. **tBodyAccJerkMagMean** - Mean value of the body acceleration jerk magnitude, captured within time domain. Numeric. Messure: g
1. **tBodyAccJerkMagStd** - Standard deviation of the body acceleration magnitude jerk values, captured within time domain. Numeric. Messure: g
1. **tBodyGyroMagMean** - Mean value of the angular velocity magnitude, captured within time domain. Numeric. Messure: rad/seg
1. **tBodyGyroMagStd** - Standard deviation of the angular velocity magnitude, captured within time domain. Numeric. Messure: rad/seg  
1. **tBodyGyroJerkMagMean** - Mean value of the angular velocity magnitude jerk values, captured within time domain. Numeric. Messure: rad/seg
1. **tBodyGyroJerkMagStd** - Standard deviation of the angular velocity magnitude jerk values, captured within time domain. Numeric. Messure: rad/seg 
1. **fBodyAccMeanX** - Mean value of the body acceleration values, captured within frequency domain signals in X direction. Numeric. Messure: g
1. **fBodyAccMeanY** - Mean value of the body acceleration values, captured within frequency domain signals in Y direction. Numeric. Messure: g
1. **fBodyAccMeanZ** - Mean value of the body acceleration values, captured within frequency domain signals in Z direction. Numeric. Messure: g 
1. **fBodyAccStdX** - Standard deviation of the body acceleration values, captured within frequency domain signals in X direction. Numeric. Messure: g
1. **fBodyAccStdY** - Standard deviation of the body acceleration values, captured within frequency domain signals in Y direction. Numeric. Messure: g
1. **fBodyAccStdZ** - Standard deviation of the body acceleration values, captured within frequency domain signals in Z direction. Numeric. Messure: g
2. **fBodyAccMeanFreqX** - Average frequency of changing body acceleration in X direction. Numeric. Messure: Hz
1. **fBodyAccMeanFreqY** - Average frequency of changing body acceleration in Y direction. Numeric. Messure: Hz
1. **fBodyAccMeanFreqZ** - Average frequency of changing body acceleration in Z direction. Numeric. Messure: Hz
1. **fBodyAccJerkMeanX** - Mean value of the body acceleration  jerk values, captured within frequency domain signals in X direction. Numeric. Messure: g
1. **fBodyAccJerkMeanY** - Mean value of the body acceleration  jerk values, captured within frequency domain signals in Y direction. Numeric. Messure: g
1. **fBodyAccJerkMeanZ** - Mean value of the body acceleration  jerk values, captured within frequency domain signals in Z direction. Numeric. Messure: g
1. **fBodyAccJerkStdX** - Standard deviation of the body acceleration  jerk values, captured within frequency domain signals in X direction. Numeric. Messure: g
1. **fBodyAccJerkStdY** - Standard deviation of the body acceleration  jerk values, captured within frequency domain signals in Y direction. Numeric. Messure: g
1. **fBodyAccJerkStdZ** - Standard deviation of the body acceleration  jerk values, captured within frequency domain signals in Z direction. Numeric. Messure: g
1. **fBodyAccJerkMeanFreqX** - Average frequency of changing jerk value of the body acceleration in X direction. Numeric. Messure: Hz
1. **fBodyAccJerkMeanFreqY** - Average frequency of changing jerk value of the body acceleration in Y direction. Numeric. Messure: Hz
1. **fBodyAccJerkMeanFreqZ** - Average frequency of changing jerk value of the body acceleration in X direction. Numeric. Messure: Hz
1. **fBodyGyroMeanX** - Mean value of the angular velocity values, captured within frequency domain signals in X direction. Numeric. Messure: rad/seg
1. **fBodyGyroMeanY** - Mean value of the angular velocity values, captured within frequency domain signals in Y direction. Numeric. Messure: rad/seg
1. **fBodyGyroMeanZ** - Mean value of the angular velocity values, captured within frequency domain signals in Z direction. Numeric. Messure: rad/seg
1. **fBodyGyroStdX** - Standard deviation of the angular velocity values, captured within frequency domain signals in X direction. Numeric. Messure: rad/seg
1. **fBodyGyroStdY** - Standard deviation of the angular velocity values, captured within frequency domain signals in Y direction. Numeric. Messure: rad/seg
1. **fBodyGyroStdZ** - Standard deviation of the angular velocity values, captured within frequency domain signals in Z direction. Numeric. Messure: rad/seg  
2. **fBodyGyroMeanFreqX** - Average frequency of changing of the angular velocity in X direction. Numeric. Messure: Hz
1. **fBodyGyroMeanFreqY** - Average frequency of changing of the  angular velocity in Y direction. Numeric. Messure: Hz
1. **fBodyGyroMeanFreqZ** - Average frequency of changing of the  angular velocity in Z direction. Numeric. Messure: Hz
1. **fBodyAccMagMean** - Mean value of the body acceleration magnitude values, captured within frequency domain signals. Numeric. Messure: g
1. **fBodyAccMagStd** - Standard deviation of the body acceleration magnitude values, captured within frequency domain signals. Numeric. Messure: g
2. **fBodyAccMagMeanFreq** - Average frequency of the body acceleration magnitude. Numeric. Messure: Hz 
1. **fBodyBodyAccJerkMagMean** - Mean value of the body acceleration magnitude jerk values, captured within frequency domain signals. Numeric. Messure: g
1. **fBodyBodyAccJerkMagStd** - Standard deviation of the body acceleration magnitude jerk values, captured within frequency domain signals. Numeric. Messure: g
2. **fBodyBodyAccJerkMagMeanFreq** - Average frequency of the body acceleration magnitude (jerk value). Numeric. Messure: Hz
1. **fBodyBodyGyroMagMean** - Mean value of the angular velocity magnitude, captured within frequency domain signals. Numeric. Messure: rad/seg
1. **fBodyBodyGyroMagStd** - Standard deviation of the angular velocity magnitude, captured within frequency domain signals. Numeric. Messure: rad/seg
2. fBodyBodyGyroMagMeanFreq  - Average frequency of the angular velocity magnitude. Numeric. Messure: Hz 
1. **fBodyBodyGyroJerkMagMean** - Mean value of the angular velocity magnitude jerk values, captured within frequency domain signals. Numeric. Messure: rad/seg
1. **fBodyBodyGyroJerkMagStd**- Standard deviation of the angular velocity magnitude jerk values, captured within frequency domain signals. Numeric. Messure: rad/seg 
2. **fBodyBodyGyroJerkMagMeanFreq** - Average frequency of the angular velocity magnitude (jerk value). Numeric. Messure: Hz


## 3. Instruction script: Gettig the dataset 1 from the raw data ##

The process of the 1st dataset creation is described within the R-script.
Run this script to estimate the dataset #1 from the raw data.

    library(dplyr)
    
    ## Read information about activities
    ## and set variable names
    
    activities <- read.table("data/activity_labels.txt")
    names(activities) <- c("ActivityID", "ActivityName")
    
    ## Read information about features
    ## and set variable names
    
    features <- read.table("data/features.txt")
    features <- tbl_df(as.data.frame(features))
    names(features) <- c("FeatureID", "FeatureName")
    
    ## Prepare features names to use as a variable name within result datasets
    ### Select names with "-mean" and "-std"
    
    FeatureIdx <- grep("-mean|-std", features$FeatureName)
    features <-  filter(features, FeatureID %in% FeatureIdx)
    
    ### Make features names more readable
    
    features <- mutate(features, FeatureName = gsub("mean","Mean",FeatureName)) %>% 
    mutate(FeatureName = gsub("std","Std",FeatureName)) %>% 
    mutate(FeatureName = gsub("[()]","",FeatureName)) %>% 
    mutate(FeatureName = gsub("-","",FeatureName))
    
    ## Getting information from the train dataset
    
    ### Information about subjects within the train dataset
    
    train_subjects <- read.table("data/train/subject_train.txt")
    names(train_subjects) <- c("Subject")
    
    ### Information about activities within the train dataset
    
    train_activity <- read.table("data/train/y_train.txt")
    names(train_activity) <- c("ActivityID")
    train_activity <- inner_join(train_activity, activities, by = c("ActivityID" = "ActivityID"))
    train_activity <- train_activity[2]
    
    ### Features values within the train dataset
    
    train_features <- read.table("data/train/x_train.txt", colClasses = "numeric")
    train_features <- train_features[, FeatureIdx]
    names(train_features) <- features$FeatureName
    
    ### Merging train data
    
    train <- cbind(train_subjects, train_activity, train_features)
    
    ## Getting information from the test dataset
    
    ### Information about subjects within the test dataset
    
    test_subjects <- read.table("data/test/subject_test.txt")
    names(test_subjects) <- c("Subject")
    
    ### Information about activities within the test dataset
    
    test_activity <- read.table("data/test/y_test.txt")
    names(test_activity) <- c("ActivityID")
    test_activity <- inner_join(test_activity, activities, by = c("ActivityID" = "ActivityID"))
    test_activity <- test_activity[2]
    
    ### Features values within the test dataset
    
    test_features <- read.table("data/test/x_test.txt", colClasses = "numeric")
    test_features <- test_features[, FeatureIdx]
    names(test_features) <- features$FeatureName
    
    ### Merging test data
    
    test <- cbind(test_subjects, test_activity, test_features)
    
    ## Merging both train and test datasets in one datates
    
    result1 <- rbind(train, test)
    
    ## Save the 1st dataset
    
    write.csv(result1, "result1.csv", row.names = FALSE)
    

## 4. Data dictionary - UCI Human Activity Recognition Using smartphones. Mean values (Dataset 2) 
Dataset 2 has the same structгre as within the Dataset 1. Each row contains an information about the volunteer (subject), the activity and mean values of the features 3-68 of the Dataset 1. The combination of the values (Subject, Activity) is unique for this dataset. So each row of the Dataset 2 contains in the columns 3-68 the average values of the features, calculated for one subject and one activity during all observations, associated with them.

## 5. Instruction script: Getting the dataset 2 from the raw data ##

The process of the 2nd dataset creation is described within the R-script.
Run this script to estimate the dataset #2 from the dataset #1.


    library(data.table)
    ## Read the dataset 1
    result1 <- read.csv("result1.csv")
    
    ## Convert dataset 1 into data.tablo to provide a possibility of using
    ## special column operations
    
    result2 <- arrange(result1, Subject, ActivityName)
    result2 <- data.table(result2)
    
    ## Group data by Subject and ActivityName
    ## and calculate mean by the groups for other variables
    ## of the dataset
    
    result2 <- result2[,lapply(.SD, mean), by=.(Subject, ActivityName)]
    
    ## Save the 2nd dataset
    
    write.csv(result2, "result2.csv", row.names = FALSE)

The R-script with name `run_analysis.R` contains both scripts from chapters 3 and 5. To estimate the tidy dataset #2 from the raw data just run this script:

    source("run_analysis.R")