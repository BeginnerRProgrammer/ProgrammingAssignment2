## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cacheMatrix <- NULL
  setMatrix <- function(y) {
  x <<- y
  cacheMatrix <<- NULL
  } 
  getMatrix <- function() x
  setMatrix <- function(inverse) cacheMatrix <<- inverse
  getMatrixInverse <- function() cacheMatrix
  list(cacheMatrix = cacheMatrix, setMatrix = setMatrix, 
       getMatrix = getMatrix, getMatrixInverse = getMatrixInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getmean()
  if (is.null(m)) {
    message("Getting cached data...")
    return(m)
  }
  mat <- x$get()
  m <- solve(m, ...)
  x$setmean(m)
  return(m)        
}
