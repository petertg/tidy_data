rm(list=ls(all=TRUE)) 

library(plyr)

# Download and unzip the data file
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile = "./data/getdata_projectfiles_UCI HAR Dataset.zip"
if (!file.exists("./data")) {
  dir.create("./data")
}
print("Downloading data archive file to ./data")
download.file(fileUrl, destfile = zipFile, method = "curl")
print("Unziping archive...")
unzip(zipFile, exdir="./data")

# Read in the feature vector names
featureVector <- read.delim("./data/UCI HAR Dataset/features.txt", header=FALSE, sep="", 
                      stringsAsFactors=FALSE, col.names=c("feature_id", "feature_name"))
# Transform the feature names into valid column names
# remove (), - 
# transform , to _
featureVector[[2]] <- gsub('[-_()]', "", featureVector[[2]])
featureVector[[2]] <- gsub(',', "_", featureVector[[2]])

# Read in the activity labels
activities <- read.delim("./data/UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="", 
                         stringsAsFactors=FALSE, col.names=c("activity_id", "activity_label"))

# Read in the test data set
print("Read the test data set")
xTestSet <- read.delim("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE, strip.white=TRUE, sep="")
# Set the column names to descriptive names
print("Label the data set with descriptive variable names")
colnames(xTestSet) <- featureVector$feature_name
# Read in the subjects and activities and add them to the data set
subjectTestSet <- read.delim("./data/UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names=c("subject_id"))
yTestSet <- read.delim("./data/UCI HAR Dataset/test/Y_test.txt", header=FALSE, col.names=c("activity_id"))
testSet <- cbind(subjectTestSet, yTestSet, xTestSet)

# Read in the training data set
print("Read the training data set")
xTrainSet <- read.delim("./data/UCI HAR Dataset/train/X_train.txt", header=FALSE, strip.white=TRUE, sep="")
# Set the column names to descriptive names
colnames(xTrainSet) <- featureVector$feature_name
# Read in the subjects and activities and add them to the data set
subjectTrainSet <- read.delim("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names=c("subject_id"))
yTrainSet <- read.delim("./data/UCI HAR Dataset/train/Y_train.txt", header=FALSE, col.names=c("activity_id"))
trainSet <- cbind(subjectTrainSet, yTrainSet, xTrainSet)

print("Merge the training and tes sets to create on data set")
# Catenate the data sets into a single data set
mergedSet <- rbind(testSet, trainSet)
# Use the descriptive activity name
print("Use descriptive names to name the activities in the data set")
mergedSet2 <- join(mergedSet, activities)

# Extract only the mean and standard deviations for each measurement
#extract_features <-  grep("mean$|std$|meanFreq$", featureVector$feature_name, value=TRUE)
#extract_features <-  grep("mean$|std$", featureVector$feature_name, value=TRUE)
print("Extract only the measurements on the mean and standard deviation for each measurement")
extractFeatures <-  grep("mean|std|Mean", featureVector$feature_name, value=TRUE)
extractCols <- c("subject_id", "activity_label", extractFeatures)
mergedSet3 <- mergedSet2[, extractCols]

print("Create a second, independent tidy data set with the average of each variable for each activity and each subject")
summaryResults <- ddply(mergedSet3, .(subject_id, activity_label), numcolwise(mean))

print("Write out the results to summary_results.txt")
write.table(summaryResults, "summary_results.txt", row.names=FALSE)
#head(read.table("summary_results.txt", header=TRUE), 1)

