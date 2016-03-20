makeMatrix <- function (x = matrix()) {
     inverse <- NULL
     
     getMatrix <- function() x
     setInverse <- function (solve) { 
         inverse <<- solve(x)
     }
     
     getInverse <- function () inverse
     #Public Methods 
     list(setInverse = setInverse, getInverse = getInverse,
          getMatrix = getMatrix)
}


#Grabbing the cached Result from the Matrix previously made 
cacheMatrix <- function (x) {
     #setting the values of a newMatrix and the Cache if it exists
     cachedMatrix <- x$get()
     newMatrix <- NULL

     if (!is.null(cachedM)) {
        message("Outputting Cached Data")
        return(cachedMatrix)  
     }
  
     x$setInverse(cachedMatrix)
     newMatrix <<- x$getInverse()
     newMatrix
}