## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeMatrix <- function (size, row, col) {
     x <- matrix(1:size, row, col)
     inverse <- NULL
     getMatrix <- function() x
     setInverse <- function (solve) { 
         inverse <<- solve(x)
     }
     getInverse <- function () inverse

     list(setInverse = setInverse, getInverse = getInverse,
          getMatrix = getMatrix)
}

cacheMatrix <- function (x) { 
     cachedM <- x$get()
     if (!is.null(cachedM)) { 
        return(cachedM)  
     }
     data <- x$get()
     x$setInverse(data)
     cachedM <- x$getInverse()
}