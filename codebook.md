# Codedata
This code book describes the variables, the data, and any transformations or work performed to clean up the data.

### The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

### Measurements
tBodyAccMeanX

tBodyAccMeanY

tBodyAccMeanZ

tBodyAccStdX

tBodyAccStdY

tBodyAccStdZ

tGravityAccMeanX

tGravityAccMeanY

tGravityAccMeanZ

tGravityAccStdX

tGravityAccStdY

tGravityAccStdZ

tBodyAccJerkMeanX

tBodyAccJerkMeanY

tBodyAccJerkMeanZ

tBodyAccJerkStdX

tBodyAccJerkStdY

tBodyAccJerkStdZ

tBodyGyroMeanX

tBodyGyroMeanY

tBodyGyroMeanZ

tBodyGyroStdX

tBodyGyroStdY

tBodyGyroStdZ

tBodyGyroJerkMeanX

tBodyGyroJerkMeanY

tBodyGyroJerkMeanZ

tBodyGyroJerkStdX

tBodyGyroJerkStdY

tBodyGyroJerkStdZ

tBodyAccMagMean

tBodyAccMagStd

tGravityAccMagMean

tGravityAccMagStd

tBodyAccJerkMagMean

tBodyAccJerkMagStd

tBodyGyroMagMean

tBodyGyroMagStd

tBodyGyroJerkMagMean

tBodyGyroJerkMagStd

fBodyAccMeanX

fBodyAccMeanY

fBodyAccMeanZ

fBodyAccStdX

fBodyAccStdY

fBodyAccStdZ

fBodyAccMeanFreqX

fBodyAccMeanFreqY

fBodyAccMeanFreqZ

fBodyAccJerkMeanX

fBodyAccJerkMeanY

fBodyAccJerkMeanZ

fBodyAccJerkStdX

fBodyAccJerkStdY

fBodyAccJerkStdZ

fBodyAccJerkMeanFreqX

fBodyAccJerkMeanFreqY

fBodyAccJerkMeanFreqZ

fBodyGyroMeanX

fBodyGyroMeanY

fBodyGyroMeanZ

fBodyGyroStdX

fBodyGyroStdY

fBodyGyroStdZ

fBodyGyroMeanFreqX

fBodyGyroMeanFreqY

fBodyGyroMeanFreqZ

fBodyAccMagMean

fBodyAccMagStd

fBodyAccMagMeanFreq

fBodyBodyAccJerkMagMean

fBodyBodyAccJerkMagStd

fBodyBodyAccJerkMagMeanFreq

fBodyBodyGyroMagMean

fBodyBodyGyroMagStd

fBodyBodyGyroMagMeanFreq

fBodyBodyGyroJerkMagMean

fBodyBodyGyroJerkMagStd

fBodyBodyGyroJerkMagMeanFreq

### Identifiers
  subject - The ID of the test subject

  activity - The type of activity performed when the corresponding measurements were taken

### Activity Labels
  WALKING (value 1): subject was walking during the test

  WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test

  WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test

  SITTING (value 4): subject was sitting during the test

  STANDING (value 5): subject was standing during the test

  LAYING (value 6): subject was laying down during the test

