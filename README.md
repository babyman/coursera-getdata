Mean Summary of Human Activity Recognition Using Smartphones Dataset
===

This R script generates a tidy data set summary from accelerometer measurements taken from Samsung Galaxy S smartphones.

The data was recorded from 30 volunteers aged between 19 and 48.  The volunteers performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II smartphone.

Full details of the original study can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This git Repository Includes
---
- this README.md file
- CodeBook.md - codebook describing the generated tidy data file
- run_analysis.R - a R script used to create the tidy data file.
- .gitignore - git configuration

Using run_analysis.R
---
- execute the script
 - using Rscript from the command line
  - cd into the repository
  - Rscript run_analysis.R
 - or Launch the R Console
  - Set the working directory to a location that you want the data files to be generated
  - Copy the source code into the console to execute it

run_analysis.R will download the source data zip file if it does not exist before extracting it to the current working directory.  The following data files are then read and combined to create a data set that contains columns for the subject, activity and all the mean and standard deviation features from the original source data (those identified in the original data set by "-mean()" and "-std()" in the feature column name).

- ./data/features.txt
- ./data/activity_labels.txt
- ./data/test/X_test.txt
- ./data/test/subject_test.txt
- ./data/test/Y_test.txt
- ./data/train/X_train.txt
- ./data/train/subject_train.txt
- ./data/train/Y_train.txt

This intermediate file is saved in the working directory as "combined_data.csv" in comma separated value format. This combined data is then summarized by calculating the mean of each variable grouped by subject and activity, this new data set is saved in the current working directory as "tidy_data.csv" in comma separated value format.

Script Output
---

- combined_data.csv   - the combined original source data
- tidy_data.csv       - the tidy data set

(see also CodeBook.md)

Source
---

The data used by this script along with more details on what it represents and how it was collected can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original Data License
---

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
