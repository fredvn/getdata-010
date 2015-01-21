
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
 cleanColumns <- gsub("[[:punct:]]","",columns)
 for ( i in 1:length(cleanColumns) ){
 print(cleanColumns[i])
    if (sum(cleanColumns == cleanColumns[i]) > 1 ) {
	   cleanColumns[i] = i
    }
 }
 
 #
 # Activity matrix
 #
 activities <- read.table(paste(directory,"/activity_labels.txt", sep=""),header=FALSE,sep = " ")
 colnames(activities) <- c("Activity","Description")
 #
 # Load and combine test dataset
 #
 testset <- dataset(directory,set="test",cleanColumns)
 #
 # Load and combine train dataset
 #
 trainset <- dataset(directory,set="train",cleanColumns)
 
 totalset <- rbind(testset,trainset)
 
 subset <- select(totalset,matches("(Subject|Activity|mean|std)",ignore.case = TRUE))
 result <- subset %>% group_by(subject,activity,activityDescription) %>% summarise_each(funs(mean))
 write.table(result,tidyFile, row.name=FALSE)
 
 result
 
}