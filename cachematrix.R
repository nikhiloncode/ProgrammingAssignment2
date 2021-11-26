## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This functions gets the value of the matrix, gets its inverse and the sets the value
##of the inverse
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
##This function checks the matrix and if it is already present it takes from the cache
  
  cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if (!is.null(m)) {
      message("getting from cache memory")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
