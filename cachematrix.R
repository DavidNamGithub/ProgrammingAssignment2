## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y    
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function
## This function will take as an input the matrix and will do the following:
## First it will clear the cache,
## then it will create a function to set the matrix as x and then clear the cache
## then it will create a function to get the function X...
## then it will create a function to find the inverse
## then it will create a function get the inverse of the function
## then it will return the list of functions created above.

cacheSolve <- function(x, ...) {
  m <- x$getInverse() 
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()  
  m <- solve(data) 
  x$setInverse(m)  
  m                
}

