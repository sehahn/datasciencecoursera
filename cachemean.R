makeVector <- function(x = numeric()) {
    m <- NULL    #  mean reset to NULL every time makeVector is called
    set <- function(y) { 
        x <<- y    # superassigns value of vector passed in through function call
        m <<- NULL    # superassigns value of null to mean, resetting m in the case of a 2nd use of the same vector name
    }
    get <- function() x    # returns the value of the original vector
    setmean <- function(mean) m <<- mean    # 1st cachemean call, superassigns mean
    getmean <- function() m    # later calls, returns cached value
    list(set = set, get = get,    # list of functions used
         setmean = setmean,
         getmean = getmean)
}

cachemean <- function(x, ...) {    # x object created to hold variable passed in
    m <- x$getmean()    # gets mean from cache
    if(!is.null(m)) {    # if the value is not null, 
        message("getting cached data")    # display "getting" message and
        return(m)    # return the mean
    }
    data <- x$get()    # else get the original vector
    m <- mean(data, ...)    # calculate the mean
    x$setmean(m)    # store (super assign) the mean value 
    m
}