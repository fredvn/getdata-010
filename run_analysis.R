
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
	YFile <- read.table(paste(directory,"/",set,"/y_",set,".txt",sep=""),header=FALSE,sep=" ")
	YFile["Activity_Description"] <- ""
	Xtemp <- scan(paste(directory,"/",set,"/X_",set,".txt",sep=""))
	XFile <- matrix(Xtemp,nrow=length(Xtemp)/561,ncol=561, byrow=TRUE)
	data <- cbind(subjectFile,YFile,XFile)
	colnames(data) <- names

	data
 }
 ##
 ## Read column names for combined dataset and make them unique
 ##
 c <- read.table(paste(directory,"/features.txt", sep=""),header=FALSE,sep = " ")
 columns <- c("Subject","Activity_ID","Activity_Description",as.vector(c$V2))
 cleanColumns <- gsub("[[:punct:]]","",columns)
 for ( i in 1:length(cleanColumns) ){
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
 # Load test dataset
 #
 testset <- dataset(directory,set="test",cleanColumns)
 
 #
 # Load train dataset
 #
 trainset <- dataset(directory,set="train",cleanColumns)
 
 #
 # Combine test en train datasets
 #
 totalset <- rbind(testset,trainset)
 
 print(activities)
 #
 # Fill ActivityDescription
 #
 index <- 1 # used to follow the activity ID
 for (anActivity in activities[,2]) {
  totalset$ActivityDescription[totalset$ActivityID == index] <- anActivity
  index <- index+1
 }
# for ( i in 1: length(totalset) ) {
#    print(paste("aabb",i))
#	print(totalset[2,i])
#	print(activities[2,totalset[2,i]])
#    totalset[3,i] = activities[2,totalset[2,i]]
# }
 print(str(totalset))
 #
 # change columnames for mean columns in resultset
 #
 for ( i in 4:length(cleanColumns) ){
    cleanColumns[i] = paste("Mean_",cleanColumns[i], sep = "" ) 
 }
 colnames(totalset) <- cleanColumns
 
 subset <- select(totalset,matches("(Subject|Activity|mean|std)",ignore.case = TRUE))
 result <- subset %>% group_by(Subject,ActivityID,ActivityDescription) %>% summarise_each(funs(mean))
 
 write.table(result,tidyFile, row.name=FALSE)
 
 result
 
}