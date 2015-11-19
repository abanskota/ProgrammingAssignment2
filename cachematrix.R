## This program consists of a pair of functions that cache the inverse of the matrix

## makeCacheMatrix is a function that stroes a list of functions. 
#  set function sets the value of the matrix, 
#  get function gets the value of the matrix
#  setinv set the value of inverse of the matrix
#  getinv gets the value of the inverse of the metrix


makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## This function calculates the inverse of the square inverstible matrics. If the inverse has
## has already been calculated , it retrieces the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
