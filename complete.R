# Calculates number of complete observations per monitor using function
# call complete(directory, ID) where directory is the subdirectory (of the
# R working directory) containing the monitor data files, and the ID is the
# id number or range of numbers for the monitor(s) of interest. Has some
# odd bits to deal with decreasing ID ranges.

complete <- function(directory, id=1:332) {
  allfiles <- list.files(directory, full.names=TRUE)
#  allfiles

  monitors <- data.frame()
  for (i in id) {
    monitors <- rbind(monitors, read.csv(allfiles[i]))
  }
  n <- nrow(monitors)
  nobs <- rep(1, times=n)
  monitors <- data.frame(cbind(monitors, nobs))
  mcomp <- complete.cases(monitors)
  mondatacomp <- monitors[mcomp,4:5]
  freqdata <-aggregate(nobs ~ ID, data = mondatacomp, sum)
  x <- monitors$ID
  a <- min(x)
  b <- x[1]
  if(b > a) {
    finaldata <- freqdata[order(freqdata$ID, decreasing=TRUE), ]
    rownames(finaldata) <- NULL
  } else {
    finaldata <- freqdata
  }
  print(finaldata)
}