# Code Book for Mean Summary Human Activity Recognition Using Smartphones

The data produced here is a summarization of prior work described in detail here:

Full details of the original study can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data is available here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Processing

This script builds on the original data (full details of the collection process, original units etc can be found in the README.txt contained within the source data download linked above).  The data has been combined and column names expanded as described in the accompanying README.md file.

Once combined the data was **grouped by subject and activity** to calculate the **average** of the values in each column for each group, this is the data saved in the tidy_data.txt file.


## Column details

- subject: identifier of the subject for which this data was collected (range 1-30), each subject was aged between 19 and 48

- activity: the activity performed during the measurement
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

*features (columns beginning mean...) are normalized and bounded within [-1,1]*

- meantimebodyaccelerationmeanx
- meantimebodyaccelerationmeany
- meantimebodyaccelerationmeanz
- meantimebodyaccelerationstandarddeviationx
- meantimebodyaccelerationstandarddeviationy
- meantimebodyaccelerationstandarddeviationz
- meantimegravityaccelerationmeanx
- meantimegravityaccelerationmeany
- meantimegravityaccelerationmeanz
- meantimegravityaccelerationstandarddeviationx
- meantimegravityaccelerationstandarddeviationy
- meantimegravityaccelerationstandarddeviationz
- meantimebodyaccelerationjerkmeanx
- meantimebodyaccelerationjerkmeany
- meantimebodyaccelerationjerkmeanz
- meantimebodyaccelerationjerkstandarddeviationx
- meantimebodyaccelerationjerkstandarddeviationy
- meantimebodyaccelerationjerkstandarddeviationz
- meantimebodygyroscopemeanx
- meantimebodygyroscopemeany
- meantimebodygyroscopemeanz
- meantimebodygyroscopestandarddeviationx
- meantimebodygyroscopestandarddeviationy
- meantimebodygyroscopestandarddeviationz
- meantimebodygyroscopejerkmeanx
- meantimebodygyroscopejerkmeany
- meantimebodygyroscopejerkmeanz
- meantimebodygyroscopejerkstandarddeviationx
- meantimebodygyroscopejerkstandarddeviationy
- meantimebodygyroscopejerkstandarddeviationz
- meantimebodyaccelerationmagnitudemean
- meantimebodyaccelerationmagnitudestandarddeviation
- meantimegravityaccelerationmagnitudemean
- meantimegravityaccelerationmagnitudestandarddeviation
- meantimebodyaccelerationjerkmagnitudemean
- meantimebodyaccelerationjerkmagnitudestandarddeviation
- meantimebodygyroscopemagnitudemean
- meantimebodygyroscopemagnitudestandarddeviation
- meantimebodygyroscopejerkmagnitudemean
- meantimebodygyroscopejerkmagnitudestandarddeviation
- meanfrequencybodyaccelerationmeanx
- meanfrequencybodyaccelerationmeany
- meanfrequencybodyaccelerationmeanz
- meanfrequencybodyaccelerationstandarddeviationx
- meanfrequencybodyaccelerationstandarddeviationy
- meanfrequencybodyaccelerationstandarddeviationz
- meanfrequencybodyaccelerationjerkmeanx
- meanfrequencybodyaccelerationjerkmeany
- meanfrequencybodyaccelerationjerkmeanz
- meanfrequencybodyaccelerationjerkstandarddeviationx
- meanfrequencybodyaccelerationjerkstandarddeviationy
- meanfrequencybodyaccelerationjerkstandarddeviationz
- meanfrequencybodygyroscopemeanx
- meanfrequencybodygyroscopemeany
- meanfrequencybodygyroscopemeanz
- meanfrequencybodygyroscopestandarddeviationx
- meanfrequencybodygyroscopestandarddeviationy
- meanfrequencybodygyroscopestandarddeviationz
- meanfrequencybodyaccelerationmagnitudemean
- meanfrequencybodyaccelerationmagnitudestandarddeviation
- meanfrequencybodybodyaccelerationjerkmagnitudemean
- meanfrequencybodybodyaccelerationjerkmagnitudestandarddeviation
- meanfrequencybodybodygyroscopemagnitudemean
- meanfrequencybodybodygyroscopemagnitudestandarddeviation
- meanfrequencybodybodygyroscopejerkmagnitudemean
- meanfrequencybodybodygyroscopejerkmagnitudestandarddeviation"
