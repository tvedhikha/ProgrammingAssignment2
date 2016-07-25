## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#Initialize to NULL
        inv <- NULL
#Set Function to assign New
        set <- function (y){
             x <<- y # x is in parent environment
             inv <<- NULL #Reinitialize the new matrix to Null
             }
 
##Define Get function
get <- function()x
##Set Inverse
setinverse <- function(inverse){
        inv <<- inverse
        return(inv)
        }
##Get Inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse , getinverse = getinverse)

}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){ # checks if inv is null
        return(inv)
        }
        y <- x$get   ##If it is not null
        inv <- solve(y,...)  
        x$setinverse  ##cache the data
        inv   
}
