## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix that stores the inverse of the original matrix and 
## saves it in cache for rapid access
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv function(solve) m <<- solve
    getinv function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function
## This function determines the inverse of a matrix, if the inversed matrix is in cache
## it returns his value, otherwise uses the solve function to obtain it and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinv()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
