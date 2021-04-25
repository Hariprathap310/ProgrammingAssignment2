## This program returns the inverse of the matrix provided
## matrix that is already entered and the inverse is computed 
## if the next matrix entered is the same as first instead of computing again, 
## inverse already computes is cached and it will be used


## This function computes and caches the inverse matrix
##It will get the function from cachesolve function
## if the inverse is already cached,getinverse function will be used to return the value
## if it is a new matrix,setinverse will be used to comput the inverse matrix
## and the inverse matrix will be stored in the list

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- funtion(y){
    x <<- y
    inverse <<-NULL
  }
  get <- function() x
  setInverse <- function(solvematrix) inv<<- solvematrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## get the matrix and checks whether the same is present in the cached memory
#if present,cached value will be returned
#if not, the matrix will be sent to makecache functionn and it will be solved

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  check <- x$getInverse()
  if(!is.null(check)){
    return(check)
  }
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv
}

