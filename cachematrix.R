## Functions below will use to return an inverse of input vector from 
## cache if already stored otherwise will calculate and return it. 


## Function below is used to set & get input matrix and its inverse

makeCacheMatrix <- function(inputMatrix = matrix()) {
   inversedMatrix <- NULL
   set <- function(setInputMatrix) {
      inputMatrix <<- setInputMatrix
      inversedMatrix <<- NULL
   }
   get <- function() inputMatrix
   setInversedMatrix <- function(inverse) inversedMatrix <<- inverse
   getInversedMatrix <- function() inversedMatrix
   list(set = set, get = get,
        setInversedMatrix = setInversedMatrix,
        getInversedMatrix = getInversedMatrix)
}


## Function below will return inverse if already cached otherwise will calculate it

cacheSolve <- function(inputMatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
   inversedMatrix <- inputMatrix$getInversedMatrix()
   if(!is.null(inversedMatrix)) {
      message("getting cached data")
      return(inversedMatrix)
   }
   data <- inputMatrix$get()
   inversedMatrix <- solve(data, ...)
   inputMatrix$setInversedMatrix(inversedMatrix)
   inversedMatrix
}
