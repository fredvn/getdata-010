
run_analysis <- function( directory = "UCI HAR Dataset", tidyFile = "tidy.txt") {

 #
 # create dataset 
 #
 # directory root directory for the sets
 # set            subdirectory in the directory 
 # names          columnames for the result dataset
 #
 dataset <- function( directory, set="test",names) {
    subjectFile <- read.table(paste(directory,"/",set,"/subject_",set,".txt",sep=""),header=FALSE,sep=" ")
	YFile <- read.table(paste(directory,"/",set,"/Y_",set,".txt",sep=""),header=FALSE,sep=" ")
	Xtemp <- scan(paste(directory,"/",set,"/X_",set,".txt",sep=""))
	XFile <- matrix(Xtemp,nrow=length(t)/561,ncol=561, byrow=TRUE)
	data <- cbind(subjectFile,YFile,YFile,XFile)
	colnames(data) <- names

	data
 }
 ##
 ## Read column names for combined dataset
 ##
 c <- read.table(paste(directory,"/features.txt", sep=""),header=FALSE,sep = " ")
 columns <- c("subject","activity","activityDescription",as.vector(c$V2))
 
 #
 # Activity matrix
 #
 activities <- read.table(paste(directory,"/activity_labels.txt", sep=""),header=FALSE,sep = " ")
 colnames(activities) <- c("Activity","Description")
 #
 # Load and combine test dataset
 #
 testset <- dataset(directory,set="test",columns)
 #
 # Load and combine train dataset
 #
 trainset <- dataset(directory,set="train",columns)
 
 tidyset <- rbind(testset,trainset)
 
 write.table(tidyset,tidyFile, row.name=FALSE)
 
 tidyset
 
}