# This function merges two files from the Human Activity
# Recognition Using Smartphones Dataset, the training.txt and
# test.txt files, adding the header row from the features.txt
# file, and activity labels from the activity_label file. A new
# variable is added, SourceFile, indicating which file (test or
# train) contributed each record.  The mean and standard
# deviation variables are retained, while all other measurement
# variables are discarded.  Two data files are written:
#	(1) final_test_train_data.txt containing the final, merged
#		data
#	(2) final_test_train_averages.txt containing the average of
#		each measurement variable in the merged data file,
#		grouped by activity and subject.    	

# run_analysis manages the data processing and writes the two
# final files.
run_analysis <- function() {
    mergedTest <- mergeData("test")
    mergedTrain <- mergeData("train")
    mergedData <- rbind(mergedTest, mergedTrain)
    finalData <- selectVars(mergedData)
    write.table(finalData, "./final_test_train_data.txt", sep="\t", row.names=FALSE)
    finalAvgs <- createAverages(finalData)
    write.table(finalAvgs, "./final_test_train_avgs.txt", sep="\t", row.names=FALSE)
	fileStruc <- c(str(finalData), str(finalAvgs))
    return(fileStruc)
}

# mergeData reads in the test and train files, adding the 
# SourceFile variable to indicate which file contributed each
# record.  y_test.txt and y_train.txt are read to append
# activity numbers needed for merging in the activity labels.  # addHeaders is called to add the header row.  addLabels is
# called to add the activity labels.
mergeData <- function(whichFile) {
    if(whichFile == "test") {
        tAct <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="ActivityNum")
        tSub <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="SubjectNum")
        tData <- read.table("./UCI HAR Dataset/test/x_test.txt")
        tData$SourceFile <- "test"
    } else if(whichFile == "train") {
        tAct <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names="ActivityNum")
        tSub <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="SubjectNum")
        tData <- read.table("./UCI HAR Dataset/train/x_train.txt")
        tData$SourceFile <- "train"
    } else stop("ERROR in whichFile")

    tData.withHeaders <- addHeaders(tData)
    
    mData <- cbind(tAct, tSub, tData.withHeaders)
    mData.withActLabels <- addLabels(mData)
}

# addHeaders adds the header row from features.txt.
addHeaders <- function(headerlessData) {
    columnNames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
    columnNames <- c(columnNames[[2]], "SourceFile")
    colnames(headerlessData) <- columnNames
    return(headerlessData)
}

# addLabels adds the activity labels from activity_labels.txt
addLabels <- function(lData) {
    actNames <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("ActivityNum", "ActivityName"))
    mTData <- merge(actNames, lData, by="ActivityNum")
    mTData <- mTData[, 2:565]

}

# selectVars singles out the mean and standard deviation
# variables, and appends them to the ActivityName, SubjectNum
# and SourceFile variables.  Variable names are tidied.
selectVars <- function(mergedData) {
    columnNames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
    nameList <- columnNames[[2]]
    meanNames <- grep("mean()", nameList, value=TRUE)
    stdNames <- grep("std()", nameList, value=TRUE)
    badmeanNames <- grep("Freq", meanNames, value=TRUE)
    badNames <- meanNames %in% badmeanNames
    meanNames <- meanNames[!badNames]
    otherVars <- c("ActivityName","SubjectNum", "SourceFile")
    firstHalf <- append(otherVars, meanNames)
    allNames <- append(firstHalf, stdNames)
    allVars <- names(mergedData) %in% allNames 
    colnames(mergedData) <- gsub(colnames(mergedData), pattern=")", replacement="" ) 
    colnames(mergedData) <- gsub(pattern="\\(", replacement="", colnames(mergedData)) 
    colnames(mergedData) <- make.names(colnames(mergedData))
    finalData <- mergedData[allVars]
}

# create averages calculates the average of each measurement
# variable in the finalData file, grouped by activity and
# subject.  "Avg." is prefixed to each variable name from the
# finalData file.
createAverages <- function(finalData) {
    byData <- finalData[1:2]
    measurements <- finalData[3:68]
    
    means_by_Act_Sub <- aggregate(measurements, by=list(byData$ActivityName, byData$SubjectNum), FUN=mean, na.rm=TRUE)
    
    colnames(means_by_Act_Sub)[1:2] <- names(byData)    
    cNames <- names(finalData[3:68])
    prefix <- rep("Avg.", length(cNames))
    newNames <- paste(prefix, cNames, sep = "")
    colnames(means_by_Act_Sub)[3:68] <- newNames
    return(means_by_Act_Sub)
}