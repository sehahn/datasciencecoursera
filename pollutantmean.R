# Calculates mean pollutant levels for selected monitors using function
# call pollutantmean(directory, pollutant, ID) where directory is the
# subdirectory (of the R working directory) containing the monitor data
# files, the pollutant is either nitrate or sulfate, and the ID is the id
# number or range of numbers for the monitor(s) of interest.

pollutantmean <- function(directory,pollutant,id) {
    allfiles <- list.files(directory, full.names=TRUE)
    allfiles
    monitors <- data.frame()
    j <- 1;
    for (i in id) {
      monitors <- rbind(monitors, read.csv(allfiles[i]))
    }
    sulfdata <- data.frame(matrix(NA, nrow=nrow(monitors)))
    if(pollutant == "sulfate") {
      sulfdata <- cbind(monitors$sulfate, monitors$ID)
      scomp <- complete.cases(sulfdata)
      sulfcomp <- sulfdata[scomp,]
      sulfmean <- mean(sulfcomp[,1])
      print(round(sulfmean, digits = 3))
    } else if(pollutant == "nitrate") {
      nitdata <- cbind(monitors$nitrate, monitors$ID)
      ncomp <- complete.cases(nitdata)
      nitcomp <- nitdata[ncomp,]
      nitmean <- mean(nitcomp[,1])
      print(round(nitmean, digits=3))
    } else {
      print("Enter either sulfate or nitrate in function call")
    }     
 }

