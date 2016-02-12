## Course project
## Getting and Cleaning Data Course Project  
## Aleksei Neverov, 2016

#####################################
## Create the 1st dataset

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

####################################
## Create the 2nd dataset

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









