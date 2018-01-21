#The following packages would be needed for this script
library(reshape2)
library(data.table)

#Merge the training and the test sets to create one data set.
#Reading the downloaded files
#Read the table of features and activity labels also assigning column names
activitynames<-fread(file.path("C:/R/Project/UCI HAR Dataset/activity_labels.txt")
               ,col.names = c("classLabels", "Type of Activity"))
Features <- fread(file.path("C:/R/Project/UCI HAR Dataset/features.txt")
                  ,col.names = c("index", "FeatureLabels"))

#Preparing for extracting measurements which only includes the mean and standard deviation
neededfeat <- grep("(mean|std)\\(\\)", Features[,FeatureLabels])
mdata <- Features[neededfeat, FeatureLabels]
#For Cleaning the mdata dataset
mdata <- gsub('[()]', '', mdata)

#Read the tables from the training dataset and assign column names (loads only the mean and std dev data)
Xtrain <- fread(file.path("C:/R/Project/UCI HAR Dataset/train/X_train.txt"))[, neededfeat, with = FALSE]
data.table::setnames(Xtrain, colnames(Xtrain), mdata)
Ytrain <- fread(file.path("C:/R/Project/UCI HAR Dataset/train/Y_train.txt")
                , col.names = c("Activity"))
Subtrain <- fread(file.path("C:/R/Project/UCI HAR Dataset/train/subject_train.txt")
                  , col.names = c("SubjectID"))
Wtrain <- cbind(Subtrain, Ytrain, Xtrain)

#Read the tables from the test dataset and assign column names (loads only the meand and std dev data)
Xtest <- fread(file.path("C:/R/Project/UCI HAR Dataset/test/X_test.txt"))[,neededfeat,with = FALSE]
data.table::setnames(Xtest, colnames(Xtest), mdata)
Ytest <- fread(file.path("C:/R/Project/UCI HAR Dataset/test/y_test.txt")
                ,col.names = c("Activity"))
Subtest <- fread(file.path("C:/R/Project/UCI HAR Dataset/test/subject_test.txt")
                 ,col.names = c("SubjectID"))
Wtest <- cbind(Subtest, Ytest, Xtest)

#Merge the presented datasets into one data set
Csets <- rbind(Wtrain, Wtest)

#Use the descriptive activity names to label the activities in the dataset
Csets[["Activity"]] <- factor(Csets[,Activity]
                              ,levels = activitynames[["classLabels"]]
                              , labels = activitynames[["Type of Activity"]])

#Create a second, independent tidy dataset with the average of each variable for each
#activity and each subject
Csets[["SubjectID"]] <- as.factor(Csets[,SubjectID])
Csets <- reshape2::melt(data = Csets, id = c("SubjectID", "Activity"))
Csets <- reshape2::dcast(data = Csets, SubjectID + Activity~variable, fun.aggregate = mean)

#Export the 2nd Clean Dataset
write.table(Csets, './secondcleandata.txt', row.names = FALSE, sep = '\t')