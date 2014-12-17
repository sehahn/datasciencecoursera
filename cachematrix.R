## These functions work together to invert a matrix, which is passed in as
## a parameter, and caches the result to be used in subsequent function calls 

## makeCacheMatrix uses set to store the matrix passed in and initialize the
## variable for the inverted matrix im to null
##      get returns the value of the matrix x.
##      setsolve superassigns the inverted matrix to im
##      getsolve returns the inverted matrix stored in im  

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL
    set <- function(y) {
        x <<- y
        im <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) im <<- solve
    getsolve <- function() im
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)}


## cacheSolve returns the inverse of matrix x.
##      getsolve retrievse the stored value for the inverted matrix im            
##      if im is NULL (no matrix has been stored),
##          get retieves the stored matrix x
##          matrix x is inverted 
##          setsolve superassigns the solution to im 
##          im is returned
##      if im already has the solution matrix stored in it,
##          a retrieval message is displayed 
##          im is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    im <- x$getsolve()
    if(!is.null(im)) {
        message("getting cached data")
        return(im)
    }
    data <- x$get()
    im <- solve(data, ...)
    x$setsolve(im)
    im
}
