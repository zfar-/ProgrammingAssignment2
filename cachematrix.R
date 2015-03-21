## this file cachematrix.R contain two function one is makeCacheMatrix and other is 
## cacheSolve 
## I have took this code from the vector example form the assignment page 

## The first function, makeVector creates a special "Matrix", which is really a list containing a function to
## set the value of the Matrix
## get the value of the Matix
## set the value of the Inverse
## get the value of the Inverse

## The next function computes the inverse of matrix using the solve function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL ## initialize the cache with NULL

  set <- function(y) {
    
    x <<- y ## assign the input matrix  to the variable 
  
    m <<- NULL ## re-initialize m (cache) to null
  }
  
  get <- function() x ## return's the matrix x
  
  setinverse <- function(inverse) m <<- inverse ## set the cache m equal
  ## to the inverse of the matrix x
  getinverse <- function() m ## return the cached inverse of x
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  # get the cached value
  
  inverse <- y$getInverse()
  
  # if a cached value exists return it
  
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  # otherwise get the matrix, caclulate the inverse and store it in the cache
  
  data <- y$getMatrix()
  
  inverse <- solve(data)
  
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
  
  
}
