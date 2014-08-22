Code Book Mean Summary Human Activity Recognition Using Smartphones Dataset
===



The features selected for this database come from the Summary Human Activity Recognition Using Smartphones Dataset. These time domain signals (prefix MeanTime) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise before being grouped by subject and activity to calculate the mean of the values. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (MeanTimeBodyAcceleration-XYZ and MeanTimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (MeanTimeBodyAccelerationJerk-XYZ and MeanTimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (MeanTimeBodyAccelerationMagnitude, MeanTimeGravityAccelerationMagnitude, MeanTimeBodyAccelerationJerkMagnitude, MeanTimeBodyGyroscopeMagnitude, MeanTimeBodyGyroscopeJerkMagnitude).

A Fast Fourier Transform (FFT) was applied to some of these signals producing MeanFrequencyBodyAcceleration-XYZ, MeanFrequencyBodyAccelerationJerk-XYZ, MeanFrequencyBodyGyroscope-XYZ, MeanFrequencyBodyAccelerationJerkMagnitude, MeanFrequencyBodyGyroscopeMagnitude, MeanFrequencyBodyGyroscopeJerkMagnitude. (Note the 'Frequency' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- Subject: identifier of the subject for which this data was collected (range 1-30)

- Activity: the activity performed during the measurement (one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

- MeanTimeBodyAcceleration-mean-X
- MeanTimeBodyAcceleration-mean-Y
- MeanTimeBodyAcceleration-mean-Z
- MeanTimeBodyAcceleration-std-X
- MeanTimeBodyAcceleration-std-Y
- MeanTimeBodyAcceleration-std-Z
- MeanTimeGravityAcceleration-mean-X
- MeanTimeGravityAcceleration-mean-Y
- MeanTimeGravityAcceleration-mean-Z
- MeanTimeGravityAcceleration-std-X
- MeanTimeGravityAcceleration-std-Y
- MeanTimeGravityAcceleration-std-Z
- MeanTimeBodyAccelerationJerk-mean-X
- MeanTimeBodyAccelerationJerk-mean-Y
- MeanTimeBodyAccelerationJerk-mean-Z
- MeanTimeBodyAccelerationJerk-std-X
- MeanTimeBodyAccelerationJerk-std-Y
- MeanTimeBodyAccelerationJerk-std-Z
- MeanTimeBodyGyroscope-mean-X
- MeanTimeBodyGyroscope-mean-Y
- MeanTimeBodyGyroscope-mean-Z
- MeanTimeBodyGyroscope-std-X
- MeanTimeBodyGyroscope-std-Y
- MeanTimeBodyGyroscope-std-Z
- MeanTimeBodyGyroscopeJerk-mean-X
- MeanTimeBodyGyroscopeJerk-mean-Y
- MeanTimeBodyGyroscopeJerk-mean-Z
- MeanTimeBodyGyroscopeJerk-std-X
- MeanTimeBodyGyroscopeJerk-std-Y
- MeanTimeBodyGyroscopeJerk-std-Z
- MeanTimeBodyAccelerationMagnitude-mean
- MeanTimeBodyAccelerationMagnitude-std
- MeanTimeGravityAccelerationMagnitude-mean
- MeanTimeGravityAccelerationMagnitude-std
- MeanTimeBodyAccelerationJerkMagnitude-mean
- MeanTimeBodyAccelerationJerkMagnitude-std
- MeanTimeBodyGyroscopeMagnitude-mean
- MeanTimeBodyGyroscopeMagnitude-std
- MeanTimeBodyGyroscopeJerkMagnitude-mean
- MeanTimeBodyGyroscopeJerkMagnitude-std
- MeanFrequencyBodyAcceleration-mean-X
- MeanFrequencyBodyAcceleration-mean-Y
- MeanFrequencyBodyAcceleration-mean-Z
- MeanFrequencyBodyAcceleration-std-X
- MeanFrequencyBodyAcceleration-std-Y
- MeanFrequencyBodyAcceleration-std-Z
- MeanFrequencyBodyAccelerationJerk-mean-X
- MeanFrequencyBodyAccelerationJerk-mean-Y
- MeanFrequencyBodyAccelerationJerk-mean-Z
- MeanFrequencyBodyAccelerationJerk-std-X
- MeanFrequencyBodyAccelerationJerk-std-Y
- MeanFrequencyBodyAccelerationJerk-std-Z
- MeanFrequencyBodyGyroscope-mean-X
- MeanFrequencyBodyGyroscope-mean-Y
- MeanFrequencyBodyGyroscope-mean-Z
- MeanFrequencyBodyGyroscope-std-X
- MeanFrequencyBodyGyroscope-std-Y
- MeanFrequencyBodyGyroscope-std-Z
- MeanFrequencyBodyAccelerationMagnitude-mean
- MeanFrequencyBodyAccelerationMagnitude-std
- MeanFrequencyBodyBodyAccelerationJerkMagnitude-mean
- MeanFrequencyBodyBodyAccelerationJerkMagnitude-std
- MeanFrequencyBodyBodyGyroscopeMagnitude-mean
- MeanFrequencyBodyBodyGyroscopeMagnitude-std
- MeanFrequencyBodyBodyGyroscopeJerkMagnitude-mean
- MeanFrequencyBodyBodyGyroscopeJerkMagnitude-std
