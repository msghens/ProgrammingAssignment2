## Put comments here that give an overall description of what your
## functions do


# Two funcitions to solve problem 2 for Coursera R-programming Assignment is to 
# create a function that makescaches a matrix and a function that either solves a
# the inverse of a matrix or gets the inverse from cache. My solution was a 
# rewrite of the example: Caching the Mean of a Vector. The first function 
# transforms a matrix to special matrix (or class for us python programmers). The
# second function tests if matrix is in cache or needs to be solved.



# makeCacheMatrix creates a special matrixs that:

# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(
    set = set, get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
  
}



## Function calculates the inverse of a matrix If the matrix is in cache, it
## returns the cached version instead.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setinverse(i)
  i
}
