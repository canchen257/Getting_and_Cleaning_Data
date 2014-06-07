#Code Book
##Introduction
The purpose of this project is to demonstrate my ability to collect, work with ,and clean a data set. The original data linked to this project comes from the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained in [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). My goal is to create a tidy data set from original data. In the following,
I will make the variables,data, and some transformations or work that I perform to clean up the data in details.

##The subject and activity names
The subject and activity names in tidy data is named below:

* subject: The participant ID (1-30)
* activityName:  Six class labels with their activity names ("Walking,Walking_Upstairs,Walking_Downstairs,Sitting,Standing,Laying")

##Combine the test data and the training data together
Since the test data and the training data are separated into two different files in the original files, which are named as _"X_test"_ and _"X_train"_,respectively. When Dealing in R programming, we first need to read two _txt_ files.
Using the key function _read.table()_. We should pay attention to what is the separated symbol in the original files, since it is an important parameter in _read.table()_ function.

After reading these two original files into two different data.frames, we need to combine these data.frames together by using the commond _rbind()_ function and finally we get the training data and test data together.

##Extracted the measuresments on the mean and standard deviation from original data set
The key extract command needs to use _grep()_ function. After using it, we can get the specific measurement from the above data. The measurements we need are listed below.
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

