corr <- function(directory, threshold=0) {
    
# reads all the data file names into a list
    allfiles <- list.files(directory, full.names=TRUE)
    
# pulls in the frequency distributions of complete records using complete.R 
    id <- 1:332
    completefreq <- complete(directory, id)

# uses the list of data file names and the range of ids specified in the function call to read in the files of interest   
#    monitors <- data.frame()
#    datacomp <- data.frame()
    corrmon <- vector()
    j <- 0
    for(i in id) {        
        if( completefreq$nobs[i] >= threshold) {
            j <- j + 1
            monitors <- read.csv(allfiles[i])
            mcomp <- complete.cases(monitors)
            datacomp <- monitors[mcomp,2:3]
            corrmon[j] <- round(cor(datacomp$sulfate, datacomp$nitrate), digits=5)
#            print(corrmon)
         } else {
             next()
         }
#        append(corrvec, corrmon)
#        print(corrvec)

    }
    return(corrmon)
}