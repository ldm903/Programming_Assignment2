## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  SetInv <- function(i) inv <<- solve(x)
  GetInv <- function() {inv}
  list(set = set, get = get, SetInv = SetInv, GetInv = GetInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- X$GetInv()
  if(!is.null(inv)) {
    return(inv)
  }
  inv <- solve(x$get())
  x$SetInv(inv)
  return(inv)
        ## Return a matrix that is the inverse of 'x'
}
