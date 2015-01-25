## These functions cache and return the cached value of the inverse of a matrix, m

## The first function "reads and writes" the cached object

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
  
  
  
  
}


## The second function sets the cached object as the inverse (solve() of the data object 
## stored in the cachematrix)

cacheSolve <- function(x, ...) {
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m 
        ## Return a matrix that is the inverse of 'x'
}


