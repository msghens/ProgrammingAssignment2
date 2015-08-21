## Put comments here that give an overall description of what your
## functions do


# Two funcitions to solve problem 2 for Coursera R-programming
# Assignment is to create a function that makescaches a matrix
# and a function that either solves a matrix or gets answer from cache

## Write a short comment describing this function

# makeCacheMatrix creates a matrixs that caches the inverse

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


## Write a short comment describing this function

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
