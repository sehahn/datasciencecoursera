complete <- function(directory, id=1:332) {
  allfiles <- list.files(directory, full.names=TRUE)
#  allfiles

  monitors <- data.frame()
  for (i in id) {
    monitors <- rbind(monitors, read.csv(allfiles[i]))
  }
  n <- nrow(monitors)
  for(j in 1:n) {
    if(complete.cases(monitors[j,] == TRUE)) {
      nobs[j] <- 1
    } else {
      nobs[j] <- 0
    }
  }
#  nobs <- rep(1, times=n)
  monitors <- data.frame(cbind(monitors, nobs))
#  mcomp <- complete.cases(monitors)
#  mondatacomp <- monitors[mcomp,4:5]
  freqdata <-aggregate(nobs ~ ID, data = monitors, sum)
  x <- monitors$ID
  a <- min(x)
  b <- x[1]
  if(b > a) {
    finaldata <- freqdata[order(freqdata$ID, decreasing=TRUE), ]
    rownames(finaldata) <- NULL
  } else {
    finaldata <- freqdata
  }
#  print(finaldata)
}