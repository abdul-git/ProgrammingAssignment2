## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## 
makeCacheMatrix <- function(x = matrix()) {
## Holds the cache value or if nothing is cached
        cache <- NULL
##seting matrix
## building matrix --set--
        set <- function(y) {
                x <<- y
                cache <<- NULL
        }
## building matrix --get--
        get <- function() {
                x
        }
## building matrix --cacheInv--        
        cacheInv <- function(solve) {
                cache <<- solve
        }
## building matrix --getInv--        
        getInv <- function() {
                cache
        }
## get a list - naming fuction for each element of the list 
        list(set = set, get = get, cacheInv = cacheInv, getInv = getInv)
}


## Write a short comment describing this function

## following function calculates the inverse of matrix created above "makeCacheMatrix"
cacheSolve <- function(y, ...) {
## get cache value if it is in cache
        inverse <- y$getInv()
        if(!is.null(inverse)) {
## Display msg if data is cached!
                message("-- getting cached data --")
                return(inverse)
        }
        data <- y$get()
        inverse <- solve(data)
        y$cacheInv(inverse)
        inverse
}

