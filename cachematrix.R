## These functions caches the inverse of a matrix


## This function creates a list of functions to a matrix

makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
                set <- function(y){##This function sets the matix in question
                        x <<-y
                        m<- NULL        
                }
                get<-function()  x ##Returns the matrix
                setinverse <- function(inverse) m <<-inverse ##Sets the inverse of the  matrix
                getinverse<- function() m ##Returns the invers of the objects matrix
                list(set = set, get = get , setinverse =setinverse, getinverse = getinverse)
                
                

}


##This function calculates and sets the inverse of the matrix in the previous list, 
## if it has been calculated before, it only returns the inverse without doing any calculations.

cacheSolve <-  function(x, ...){
        m  <- x$getinverse()##Gets the inverse from the input object
        if(!is.null(m)){##Returns the inverse, if it already has been calculated
                message("getting cached data")
                return(m)
        }
        Data <- x$get() ##Gets the matrix from x
        m<- solve(x$get(),.) ##Calculates the inverse
        x$setinverse(m)#Sets the inverse
        m ##Returns the inverse
}





