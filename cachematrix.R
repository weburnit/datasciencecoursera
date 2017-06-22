## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(mean) m <<- mean
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(is.null(m)) {
                message("writing cached data")
                data <- x$get()
                m <- rev.default(data, ...)
                x$setinv(m)
        }
        m
}
