# makeCacheMatrix is a function that returns a list of functions
#Its puspose is to store a martix

makeCacheMatrix <- function(x = matrix()) {

 # holds the cached value or NULL if nothing is cached
 # initially nothing is cached so set it to NULL

  m<-NULL

# store a matrix

  set<-function(y) {
  x<<-y
# since the matrix is assigned a new value, flush the cache

  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

#The following function calculates the inverse of the matrix
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
