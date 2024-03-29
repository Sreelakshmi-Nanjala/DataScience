## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set <- function(y){
    x <<- y
    inverse  <<- NULL
  }
  get <- function() x
  
  setinversemean <- function(cachematrix) inverse <<- cachematrix
  getinversemean <- function() inverse
  
  list(set = set, get = get,
       setinversemean = setinversemean,
       getinversemean = getinversemean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinversemean(inverse)
  invese      
}
