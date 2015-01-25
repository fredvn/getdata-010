# Codebook 

## Source of the dataset

The source of this dataset is de data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The experiments have been carried out with a group of 30 volunteers (The subjects) within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Dataset
This dataset contains de mean value for all the mean and std columns from the combined test and train dataset for each subject and each activity

## Columns
The name of the Mean columns in this dataset corresponds with the names of the original columns without any non alfanumeric character.

| Column                                 | Description                               | Values  |
|----------------------------------------|-------------------------------------------|---------|
| Subject                                | Id of the subject in the original dataset | 1 .. 30 |
| Activity_ID                            | Id of the acivity                         | 1 .. 6  |
| Activity_Description                   | Description of the Activity_ID            |         |
|                                        | 1 WALKING                                 |         |
|                                        | 2 WALKING_UPSTAIRS                        |         | 
|                                        | 3 WALKING_DOWNSTAIRS                      |         | 
|                                        | 4 SITTING                                 |         | 
|                                        | 5 STANDING                                |         | 
|                                        | 6 LAYING                                  |         | 
| Mean_tBodyAccmeanX                     | Mean of the Body acceleration in the X direction||
| Mean_tBodyAccmeanY                     | Mean of the Body Acceleration in the Y direction||
| Mean_tBodyAccmeanZ                     | Mean of the Body Acceleration in the Z direction||
| Mean_tBodyAccstdX                      | Std of the Body Acceleration in the X direction||
| Mean tBodyAccstdY                      | Std of the Body Acceleration in the Y direction||
| Mean tBodyAccstdZ                      | Std of the Body Acceleration in the Z direction||
| Mean tGravityAccmeanX                  | Mean of the Gravity Acceleration in the X direction||
| Mean tGravityAccmeanY                  | Mean of the Gravity Acceleration in the Y direction||
| Mean tGravityAccmeanZ                  | Mean of the Gravity Acceleration in the Z direction||
| Mean tGravityAccstdX                   | Std of the Gravity Acceleration in the X direction||
| Mean tGravityAccstdY                   | Std of the Gravity Acceleration in the Y direction||
| Mean tGravityAccstdZ                   | Std of the Gravity Acceleration in the Z direction||
| Mean tBodyAccJerkmeanX                 | Mean of the Body Acceleration Jerk in the X direction||
| Mean tBodyAccJerkmeanY                 | Mean of the Body Acceleration Jerk in the Y direction||
| Mean tBodyAccJerkmeanZ                 | Mean of the Body Acceleration jerk in the Z direction||
| Mean tBodyAccJerkstdX                  | Std of the Body Acceleration Jerk in the X direction||
| mean_tBodyAccJerkstdY                  | Std of the Body Acceletation Jerk in the Y direction||
| Mean_tBodyAccJerkstdZ                  | Std of the Body Acceleration Jerk in the Z direction||
| mean_tBodyGyromeanX                    | Mean of the Body Gyro in het X direction||
| Mean_tBodyGyromeanY                    | Mean of the Body Gyro in the Y direction ||
| Mean_tBodyGyromeanZ                    |||
| Mean_tBodyGyrostdX                     |||
| Mean_tBodyGyrostdY                     |||
| Mean_tBodyGyrostdZ                     |||
| Mean_tBodyGyroJerkmeanX                |||
| Mean_tBodyGyroJerkmeanY                |||
| Mean_tBodyGyroJerkmeanZ                |||
| Mean_tBodyGyroJerkstdX                 |||
| Mean_tBodyGyroJerkstdY                 |||
| Mean_tBodyGyroJerkstdZ                 |||
| Mean_tBodyAccMagmean                   |||
| Mean_tBodyAccMagstd                    |||
| Mean_tGravityAccMagmean                |||
| Mean_tGravityAccMagstd                 |||
| Mean_tBodyAccJerkMagmean               |||
| Mean_tBodyAccJerkMagstd                |||
| Mean_tBodyGyroMagmean                  |||
| Mean_tBodyGyroMagstd                   |||
| Mean_tBodyGyroJerkMagmean              |||
| Mean_tBodyGyroJerkMagstd               |||
| Mean_fBodyAccmeanX                     |||
| Mean_fBodyAccmeanY                     |||
| Mean_fBodyAccmeanZ                     |||
| Mean_fBodyAccstdX                      |||
| Mean_fBodyAccstdY                      |||
| Mean_fBodyAccstdZ                      |||
| Mean_fBodyAccmeanFreqX                 |||
| Mean_fBodyAccmeanFreqY                 |||
| Mean_fBodyAccmeanFreqZ                 |||
| Mean_fBodyAccJerkmeanX                 |||
| Mean_fBodyAccJerkmeanY                 |||
| Mean_fBodyAccJerkmeanZ                 |||
| Mean_fBodyAccJerkstdX                  |||
| Mean_fBodyAccJerkstdY                  |||
| Mean_BodyAccJerkstdZ                   |||
| Mean_fBodyAccJerkmeanFreqX             |||
| Mean_fBodyAccJerkmeanFreqY             |||
| Mean_fBodyAccJerkmeanFreqZ             |||
| Mean_fBodyGyromeanX                    |||
| Mean_fBodyGyromeanY                    |||
| Mean_fBodyGyromeanZ                    |||
| Mean_fBodyGyrostdX                     |||
| Mean_fBodyGyrostdY                     |||
| Mean_fBodyGyrostdZ                     |||
| Mean_fBodyGyromeanFreqX                |||
| Mean_fBodyGyromeanFreqY                |||
| Mean_fBodyGyromeanFreqZ                |||
| Mean_fBodyAccMagmean                   |||
| Mean_fBodyAccMagstd                    |||
| Mean_fBodyAccMagmeanFreq               |||
| Mean_fBodyBodyAccJerkMagmean           |||
| Mean_fBodyBodyAccJerkMagstd            |||
| Mean_BodyBodyAccJerkMagmeanFreq        |||
| Mean_fBodyBodyGyroMagmean              |||
| Mean_fBodyBodyGyroMagstd               |||
| Mean_fBodyBodyGyroMagmeanFreq          |||
| mean_fBodyBodyGyroJerkMagmean          |||
| Mean_fBodyBodyGyroJerkMagstd           |||
| Mean_fBodyBodyGyroJerkMagmeanFreq      |||
| Mean_angletBodyAccMeangravity          |||
| Mean_angletBodyAccJerkMeangravityMean  |||
| Mean_angletBodyGyroMeangravityMean     |||
| Mean_angletBodyGyroJerkMeangravityMean |||
| Mean_angleXgravityMean                 |||
| Mean_angleYgravityMean                 |||
| Mean_angleZgravityMean                 |||

