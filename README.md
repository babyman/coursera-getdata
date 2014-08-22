# Mean Summary of Human Activity Recognition Using Smartphones

This R script generates a tidy data set average summary from smartphone accelerometer measurements taken as part of the Human Activity Recognition Using Smartphones data set.


## Sources

The data used by this script along with more details on what it represents and how it was collected can be found at:

Full details of the original study can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data download can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



## This git Repository Includes
- this README.md file
- CodeBook.md - codebook describing the generated tidy data file
- run_analysis.R - a R script used to create the tidy data file.
- .gitignore - git configuration



## Using run_analysis.R
- execute the script by launching the R Console
- Set the working directory to the directory containing the run_analysis.R script
 - `setwd(...)`
- Load and execute the script source
 - `source("run_analysis.R")`



### run_analysis.R will:
- download the source data zip file if it does not exist in the working directory and is named `Dataset.zip`
- extract the zip data to the current working directory
- combine the following files to create a data set that contains columns for the subject, activity and all the mean and standard deviation features from the original source data (those identified in the original data set by "-mean()" and "-std()" in the feature column name)
 - ./data/features.txt
 - ./data/activity_labels.txt
 - ./data/test/X_test.txt
 - ./data/test/subject_test.txt
 - ./data/test/Y_test.txt
 - ./data/train/X_train.txt
 - ./data/train/subject_train.txt
 - ./data/train/Y_train.txt
- update the column names to expand abbreviations
 - t    -> Time
 - f    -> Frequency
 - Acc  -> Acceleration
 - Gyro -> Gyroscope
 - Mag  -> Magnitude
 - std  -> StandardDeviation
 - mean -> Mean
- save an intermediate file in the working directory as "combined_data.txt" in comma separated value format
- the combined data is then summarized by calculating the mean of each variable grouped by subject and activity
- update the column names again to prefix them with Mean
- saved the result in the current working directory as "tidy_data.txt" in comma separated value format.



### Script Output

- combined_data.txt   - the complete combined original source data
- tidy_data.txt       - the tidy data set

tidy_data.txt is tidy because:
- each row contains a single observation
- each column contains a single variable
- each column has a meaningful name

(see also CodeBook.md)



## Original Data License

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
