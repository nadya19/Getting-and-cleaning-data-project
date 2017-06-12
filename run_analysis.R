##1.  Merges the training and the test sets to create one data set.
#First, read in files.
varlabels <- read.table("features.txt") #reads in features file
trainingdata <- read.table("./train/X_train.txt", col.names = varlabels[,2]) #reads in main training data file and assigns the 2nd column of varlabels as column names
trainingsubjects <- read.table("./train/subject_train.txt", col.names = c("subject")) #reads in associated subject numbers
trainingactivities <- read.table("./train/y_train.txt", col.names = c("activity")) #reads in associated training activity codes

bindedtrainingdata <- cbind(trainingsubjects,trainingactivities,trainingdata) #binds columns of all files. 

#Repeat for test data.
testdata <- read.table("./test/X_test.txt", col.names = varlabels[,2])
testsubjects <- read.table("./test/subject_test.txt", col.names = c("subject"))
testactivities <- read.table("./test/y_test.txt", col.names = c("activity"))
bindedtestdata <- cbind(testsubjects,testactivities,testdata)

#Merge bindedtrainingdata and bindedtestdata
mergeddata <- merge(bindedtrainingdata,bindedtestdata, all = TRUE)

##2.  Extracts only the measurements on the mean and standard deviation for each measurement.
meanstddata <- mergeddata %>% dplyr::select(grep("subject",names(mergeddata)), grep("activity",names(mergeddata)), grep("mean\\.",names(mergeddata)), grep("std\\.",names(mergeddata)))

##3.  Uses descriptive activity names to name the activities in the data set.
meanstddata$activity <- factor(meanstddata$activity, levels = c(1,2,3,4,5,6), labels = c("walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying"))

##4.  Appropriately labels the data set with descriptive variable names. (Already did this in step 1, but I do tidy the names here)
names(meanstddata) <- gsub("\\.", "", names(meanstddata)) ##removes all periods
names(meanstddata) <- sub("^t", "time", names(meanstddata)) ##changes "t" at beginning to "time"
names(meanstddata) <- sub("^f", "freq", names(meanstddata)) ##Changes "f" at beginning to "freq"
names(meanstddata) <- tolower(names(meanstddata)) ##makes all letters lowercase in names

##5.  From the data set in step 4, creates a second, independent tidy data set with 
##    the average of each variable for each activity and each subject.
summarizeddata <- meanstddata %>% group_by(subject,activity) %>% summarize_each(funs(mean))

## Writes to .txt file
write.table(summarizeddata, "C:/Users/Administrator/Documents/Getting and Cleaning Data/Week 4/data/summarizeddata.txt", sep="\t")