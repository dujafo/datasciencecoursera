## This section of code will set the inverse of matrix "x".

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrixinv <- function(solve) m <<- solve
  getmatrixinv <- function() m
  list(set = set, get = get, setmatrixinv = setmatrixinv,
       getmatrixinv = getmatrixinv)
}


## This code will cache the inverse of matrix "x".

cacheSolve <- function(x, ...) {
  m <- x$getmatrixinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmatrixinv(m)
  m
}
