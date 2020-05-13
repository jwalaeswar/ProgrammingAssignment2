## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function sets and gets the inverse of the matrix
#It sets the inverse of the matrix to cache so that when needed we can call inverse from the cache and no need to calculate inverse again
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  #set the matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  # to get the matrix
  get <- function() {
    x
  }
  #setting the inverse of matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  #getting the inverse of matrix
  getInverse <- function() {
    i
  }
  #list output
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

#This function checks whether inverse is in cache or not.
#If present then uses it to return inverse
#If not then sets inverse to cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  #check if inverse is set or not
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #setting inverse when not cached 
  
  #get matrix
  data <- x$get()
  
  #calculating inverse
  m <- solve(data)
  x$setInverse(m)
  m
}
