# if the data file has not been downloaded fetch it and extract it
if(!file.exists("Dataset.zip")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, "Dataset.zip", "curl")
  # extract the data and rename its containing folder to "data"
  unzip("Dataset.zip")
  file.rename("UCI HAR Dataset", "data")
}

# read the features file and flag each of the columns to keep
features <- read.table("./data/features.txt", header=FALSE, stringsAsFactors=FALSE)
features$keep <- grepl("(mean|std)\\(\\)", features[,2], ignore.case=TRUE)
# construct a list of the indexes of features that should be transfered to the final data set
features_to_keep <- features[features$keep, 1]

# read the activity labels file into a frame
activity_labels <- read.table("./data/activity_labels.txt", header=FALSE, stringsAsFactors=FALSE)

#
# a function to combine the data components into a single data frame with subject, activity columns
# and named data columns
#
combineDataFiles <- function(data, subjects, activity_codes) {
  # generate a list of activities from activity_codes and the activity labels
  activities <- data.frame(apply(activity_codes, 1, function(x) activity_labels[activity_labels == x, 2]))

  # assign names to the columns
  colnames(data) <- gsub("\\(\\)", "", features[,2])
  colnames(subjects) <- c("subject")
  colnames(activities) <- c("activity")

  # use the features_to_keep collection to select the columns we want to keep
  data_final <- data[,features_to_keep]

  # combine the data frames using cbind
  cbind(data_final, subjects, activities)
}

# read the data files in the test directory and process them into a single data frame
#
# One benefit of reading the files directly into function parameters is that the memory
# used by these (large) files can be garbage collected once the call returns.
#
result_test <- combineDataFiles(
  read.table("./data/test/X_test.txt", sep="", header=FALSE, stringsAsFactors=FALSE),
  read.table("./data/test/subject_test.txt", header=FALSE),
  read.table("./data/test/Y_test.txt", header=FALSE))

# read the data files in the train directory and process them into a single data frame
result_train <- combineDataFiles(
  read.table("./data/train/X_train.txt", sep="", header=FALSE, stringsAsFactors=FALSE),
  read.table("./data/train/subject_train.txt", header=FALSE),
  read.table("./data/train/Y_train.txt", header=FALSE))

# combine the test and train frames into a final result
result_final = rbind(result_test, result_train)

# assign final column names
colnames(result_final) <- gsub("^t", "Time", names(result_final))
colnames(result_final) <- gsub("^f", "Frequency", names(result_final))
colnames(result_final) <- gsub("Acc", "Acceleration", names(result_final))
colnames(result_final) <- gsub("Gyro", "Gyroscope", names(result_final))
colnames(result_final) <- gsub("Mag", "Magnitude", names(result_final))
colnames(result_final) <- gsub("std", "StandardDeviation", names(result_final))
colnames(result_final) <- gsub("mean", "Mean", names(result_final))
colnames(result_final) <- gsub("-", "", names(result_final))

# save the new data frame to disk.
write.table(result_final, file="combined_data.txt", row.name=FALSE)

# generate the tidy data
result_tidy <- aggregate(result_final[,1:length(features_to_keep)],
  list(Subject = result_final$subject, Activity = result_final$activity), mean)

# update the column names so that they remain meaningful
colnames(result_tidy) <- gsub("^([^AS])", "Mean\\1", names(result_tidy))
# make all the column names lowercase, not sure I agree with this but it's in week 4 videos,
# comment to leave them in camel case
colnames(result_tidy) <- tolower(names(result_tidy))

write.table(result_tidy, file="tidy_data.txt", row.name=FALSE)
