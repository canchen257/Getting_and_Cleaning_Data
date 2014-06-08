##Introduction
The purpose of this project is to demonstrate my ability to collect, work with ,and clean a data set. The original data linked to this project comes from the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained in [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The original data is separated to two groups: the train data
and the test data, and the total 561 features are listed in the "features.txt". Our goal is to select the mean and standard deviation of these features from the original data and finally get the tidy data according to average mean and
average standard deviation.

##Files explanation
In this project, there are **three** files listing below:
* run_analysis.R
* CodeBook.md
* tidydata.csv

####run_analysis.R
This file records the R code to get the tidy data.

####CodeBook.md
This file describes the variables, the data, and any transformations or work that I perform to clean up the data.

####tidydata.csv
The number of row is **180** and the number of column is **68**. It describes the average of each variables (mean and standard deviation) for each activity and each subject. The column names of this tidy data is below:
*	subject
*	activityName
*	fBodyAcc.meanX
*	fBodyAcc.meanY
*	fBodyAcc.meanZ
*	fBodyAcc.stdX
*	fBodyAcc.stdY
*	fBodyAcc.stdZ
*	fBodyAccJerk.meanX
*	fBodyAccJerk.meanY
*	fBodyAccJerk.meanZ
*	fBodyAccJerk.stdX
*	fBodyAccJerk.stdY
*	fBodyAccJerk.stdZ
*	fBodyAccMag.mean
*	fBodyAccMag.std
*	fBodyBodyAccJerkMag.mean
*	fBodyBodyAccJerkMag.std
*	fBodyBodyGyroJerkMag.mean
*	fBodyBodyGyroJerkMag.std
*	fBodyBodyGyroMag.mean
*	fBodyBodyGyroMag.std
*	fBodyGyro.meanX
*	fBodyGyro.meanY
*	fBodyGyro.meanZ
*	fBodyGyro.stdX
*	fBodyGyro.stdY
*	fBodyGyro.stdZ
*	tBodyAcc.meanX
*	tBodyAcc.meanY
*	tBodyAcc.meanZ
*	tBodyAcc.stdX
*	tBodyAcc.stdY
*	tBodyAcc.stdZ
*	tBodyAccJerk.meanX
*	tBodyAccJerk.meanY
*	tBodyAccJerk.meanZ
*	tBodyAccJerk.stdX
*	tBodyAccJerk.stdY
*	tBodyAccJerk.stdZ
*	tBodyAccJerkMag.mean
*	tBodyAccJerkMag.std
*	tBodyAccMag.mean
*	tBodyAccMag.std
*	tBodyGyro.meanX
*	tBodyGyro.meanY
*	tBodyGyro.meanZ
*	tBodyGyro.stdX
*	tBodyGyro.stdY
*	tBodyGyro.stdZ
*	tBodyGyroJerk.meanX
*	tBodyGyroJerk.meanY
*	tBodyGyroJerk.meanZ
*	tBodyGyroJerk.stdX
*	tBodyGyroJerk.stdY
*	tBodyGyroJerk.stdZ
*	tBodyGyroJerkMag.mean
*	tBodyGyroJerkMag.std
*	tBodyGyroMag.mean
*	tBodyGyroMag.std
*	tGravityAcc.meanX
*	tGravityAcc.meanY
*	tGravityAcc.meanZ
*	tGravityAcc.stdX
*	tGravityAcc.stdY
*	tGravityAcc.stdZ
*	tGravityAccMag.mean
*	tGravityAccMag.std

##Process
The following steps explain how I get the final tidy data set from the original data.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The details in each step are described in CodeBook.md.

##Reference
I list some important links which help me finishing this project successfully.

[How to use _grep()_ function correctly?](http://stackoverflow.com/questions/4397876/how-can-i-use-grep-with-parameters-in-r)

[R regular expression](http://www.endmemo.com/program/R/grep.php). This demo tells us how to use _grep_ and _sub_ functions. At the same time, it shows **regular expression syntax** in details.
[R grepl Function](http://www.endmemo.com/program/R/grepl.php)

[How to use _setkey()_ in data.table?](http://www.inside-r.org/packages/cran/data.table/docs/key) and [Using setkey with a column name variable](http://stackoverflow.com/questions/16346966/data-table-using-setkey-with-a-column-name-variable) 
[Deal with the error:some columns are not in the data.table when using _setkey_](http://stackoverflow.com/questions/23471316/r-data-table-setkey-error-some-columns-are-not-in-the-data-table)

[The PDF file of data.table](http://cran.r-project.org/web/packages/data.table/data.table.pdf).







