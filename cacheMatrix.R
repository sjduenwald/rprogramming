
makeCacheMatrix = function(ma = matrix()){
  m <- NULL
  set <- function(y) {
    ma <<- y
    m <<- NULL
  }
  get <- function() ma
  setmatrix <- function(inverse) m <<- inverse
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

cacheMatrix = function(x, ...){
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <-solve(data, ...)
  x$setmatrix(m)
  m
}





