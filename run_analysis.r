## 1. Merge the training and the test sets to create one data set.

# Setting work directory and read the corresponding files respectively

   data.subjectTrain      <- read.table("./UCI HAR Dataset/Train/subject_train.txt")
   data.activitynumTrain <- read.table("./UCI HAR Dataset/Train/y_train.txt")
   data.train             <- read.table("./UCI HAR Dataset/Train/X_train.txt")

   data.subjectTest       <- read.table("./UCI HAR Dataset/Test/subject_test.txt")
   data.activitynumTest  <- read.table("./UCI HAR Dataset/Test/y_test.txt")
   data.test              <- read.table("./UCI HAR Dataset/Test/X_test.txt")
   
   data.features          <- read.table("./UCI HAR Dataset/features.txt",colClass="character")
   data.activitylabels    <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Change data.frame to data.table 
   library(data.table)
    data.features <- as.data.table(data.features)
   setnames(data.features,names(data.features),c("featureNumber","featureName"))
   
    data.subjectTrain  <- as.data.table(data.subjectTrain)
	setnames(data.subjectTrain,"V1","subject")
	data.activitynumTrain <- as.data.table(data.activitynumTrain)
	setnames(data.activitynumTrain,"V1","activityNumber")
	data.train  <- as.data.table(data.train)
	featurename <- data.features[,featureName]
	setnames(data.train,names(data.train),featurename)
	
	data.subjectTest  <- as.data.table(data.subjectTest)
	setnames(data.subjectTest,"V1","subject")
	data.activitynumTest  <- as.data.table(data.activitynumTest)
    setnames(data.activitynumTest,"V1","activityNumber")	
    data.test  <- as.data.table(data.test)
	setnames(data.test,names(data.test),featurename)
	
# Merging data from train and test respectively
    dt.temptrain <- cbind(data.subjectTrain,data.activitynumTrain)
    dt.train  <- cbind(dt.temptrain,data.train)

    dt.temptest <- cbind(data.subjectTest,data.activitynumTest)
    dt.test  <-  cbind(dt.temptest,data.test)

# Merging the train and test data together
    dt  <- rbind(dt.train,dt.test)

	#write.csv("1answer.csv",x=dt)  #Finish the first task in "1answer.csv"
	
## 2. Extracting only the measurements on the mean and standard deviation for each measurements
     
	select <- c(1,2,grep("mean\\(\\)|std\\(\\)",names(dt)))
    
    dt <- dt[,select,with=FALSE]
	
	#write.csv("2answer.csv",x=dt) #Finish the second task in "2answer.csv"

##  3. Using descriptive activity names to name the activities in the data set
    
	data.activitylabels <- as.data.table(data.activitylabels)
	setnames(data.activitylabels, names(data.activitylabels),c("activityNumber","activityName"))
	
	dt  <- merge(dt,data.activitylabels,by="activityNumber",all.x=TRUE)
	setkey(dt,subject,activityNumber)
	

	#write.csv("3answer.csv",x=dt) #Finish the third task in "3answer.csv"
	
##  4. Appropriately labelling the data set with descriptive variable names.
	 
	# Melting data
	library(reshape)
	
	dt <- data.table(melt(dt,id=c("subject","activityNumber","activityName")))
        setnames(dt,"variable","featureName")
	
	dt$featureName <- sub("-",".",dt$featureName)
	dt$featureName <- sub("\\(\\)|\\(\\)-","",dt$featureName)
   
	#write.csv("4answer.csv",x=dt)
	
##  5. Creating a second, independent tidy data set with the average of each variable for
##     each activity and each subject.

	
	setkey(dt,subject,activityName,featureName)
	tidydata <- dt[,list(average= mean(value)),by=key(dt)]
	library(reshape2)
	tidydata <- dcast(tidydata,subject+activityName ~featureName,value.var="average")  # return 180*68 tidy data set
	
	write.csv("tidydata.csv",x=tidydata)
	
	
	
	
	

      