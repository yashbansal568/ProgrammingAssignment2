## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                inv<<-NULL
        }
        get<-function()x
        setinverse<- function(solveMatrix) inv<<-solveMatrix
        getinverse<- function()inv
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.na(inv)){
                message("getting catched data")
                return(inv)
        }
        data<-x$get()
        inv<-solve(data)
        x$setinverse(inv)
        inv
}
