## I am unsure of what my functions do; I am failing to understand
## this process.  I am submitting this assignment with the hope
## that I will receive genuine feedback to helps me understand
## what we are doing in Assignment 3.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get, setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Please give me feedback to aid in understanding.

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmatrix(m)
  m
}
