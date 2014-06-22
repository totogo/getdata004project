#Code Book

## General description for activities
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

###subject
An identifier of the subject who carried out the experiment.
Number 1 to 30

###label
Activity label.
6 values:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

## General description for signal variables
Using the smartphone's embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

(Note the 't' to indicate time domain signals and the 'f' to indicate frequency domain signals)

###tBodyAcc.mean.X
###tBodyAcc.mean.Y
###tBodyAcc.mean.Z
###tBodyAcc.std.X
###tBodyAcc.std.Y
###tBodyAcc.std.Z
The mean and standard deviation(std) of body acceleration signal using low pass Butterworth filter with a corner frequency of 0.3 Hz on 3 axes(X, Y, Z).
The features are normalized and bounded within [-1,1].

###tGravityAcc.mean.X
###tGravityAcc.mean.Y
###tGravityAcc.mean.Z
###tGravityAcc.std.X
###tGravityAcc.std.Y
###tGravityAcc.std.Z
The mean and standard deviation(std) of gravity acceleration signal using low pass Butterworth filter with a corner frequency of 0.3 Hz on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###tBodyAccJerk.mean.X
###tBodyAccJerk.mean.Y
###tBodyAccJerk.mean.Z
###tBodyAccJerk.std.X
###tBodyAccJerk.std.Y
###tBodyAccJerk.std.Z
The mean and standard deviation of Jerk signal of body linear acceleration on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###tBodyGyro.mean.X
###tBodyGyro.mean.Y
###tBodyGyro.mean.Z
###tBodyGyro.std.X
###tBodyGyro.std.Y
###tBodyGyro.std.Z
The mean and standard deviation of gyroscope signal on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###tBodyGyroJerk.mean.X
###tBodyGyroJerk.mean.Y
###tBodyGyroJerk.mean.Z
###tBodyGyroJerk.std.X
###tBodyGyroJerk.std.Y
###tBodyGyroJerk.std.Z
The mean and standard deviation of Jerk signal generated from gyroscope on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###tBodyAccMag.mean
###tBodyAccMag.std
The mean and standard deviation of magnitude of these three-dimensional body liner acceleration signals calculated using the Euclidean norm
The features are normalized and bounded within [-1,1].

###tGravityAccMag.mean
###tGravityAccMag.std
The mean and standard deviation of magnitude of these three-dimensional gravitational acceleration signals calculated using the Euclidean norm
The features are normalized and bounded within [-1,1].

###tBodyAccJerkMag.mean
###tBodyAccJerkMag.std
The mean and standard deviation of magnitude of these three-dimensional Jerk body liner acceleration signals calculated using the Euclidean norm
The features are normalized and bounded within [-1,1].

###tBodyGyroMag.mean
###tBodyGyroMag.std
The mean and standard deviation of magnitude of these three-dimensional body gyroscope signals calculated using the Euclidean norm
The features are normalized and bounded within [-1,1].

###tBodyGyroJerkMag.mean
###tBodyGyroJerkMag.std
The mean and standard deviation of magnitude of these three-dimensional Jerk body gyroscope acceleration signals calculated using the Euclidean norm. 
The features are normalized and bounded within [-1,1].

###fBodyAcc.mean.X
###fBodyAcc.mean.Y
###fBodyAcc.mean.Z
###fBodyAcc.std.X
###fBodyAcc.std.Y
###fBodyAcc.std.Z
The mean and standard deviation of body acceleration signals applied Fast Fourier Transform (FFT) on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###fBodyAccJerk.mean.X
###fBodyAccJerk.mean.Y
###fBodyAccJerk.mean.Z
###fBodyAccJerk.std.X
###fBodyAccJerk.std.Y
###fBodyAccJerk.std.Z
The mean and standard deviation of Jerk body acceleration signals applied Fast Fourier Transform (FFT) on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###fBodyGyro.mean.X
###fBodyGyro.mean.Y
###fBodyGyro.mean.Z
###fBodyGyro.std.X
###fBodyGyro.std.Y
###fBodyGyro.std.Z
The mean and standard deviation of gyroscope signals applied Fast Fourier Transform (FFT) on 3 axes(X, Y, Z). 
The features are normalized and bounded within [-1,1].

###fBodyAccMag.mean
###fBodyAccMag.std
The mean and standard deviation of magnitude of these three-dimensional body acceleration signals applied Fast Fourier Transform (FFT). 
The features are normalized and bounded within [-1,1].

###fBodyBodyAccJerkMag.mean
###fBodyBodyAccJerkMag.std
The mean and standard deviation of magnitude of these three-dimensional Jerk body acceleration signals applied Fast Fourier Transform (FFT). 
The features are normalized and bounded within [-1,1].

###fBodyBodyGyroMag.mean
###fBodyBodyGyroMag.std
The mean and standard deviation of magnitude of these three-dimensional body gyroscope signals applied Fast Fourier Transform (FFT). 
The features are normalized and bounded within [-1,1].

###fBodyBodyGyroJerkMag.mean
###fBodyBodyGyroJerkMag.std 
The mean and standard deviation of magnitude of these three-dimensional Jerk body gyroscope signals applied Fast Fourier Transform (FFT). 
The features are normalized and bounded within [-1,1].
