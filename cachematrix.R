## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates the object"x" and several methods which can be used to retrieve and set the 
## inverse of this matrix
makeCacheMatrix <- function(x = matrix()) { ##input a matrix x##
	inv<-NULL #initialize inv## 
	set<-function(y){
		x<<-y
		inv<<-NULL
	}
	get<- function()x ##define a function returning the input vector##
	setinv<-function(inverse) {inv<<-inverse} ##set the inverse with the input value##
	getinv<-function() {inv} ##return the inverse value if exist
	list(set=set,get=get,setinv=setinv,getinv=getinv)#
}



## Write a short comment describing this function
## This function will first check whether the inverse of the input matrix exist or not. If yes, it 
## will just return the inverse value from the cache and the message'getting the cached data' If not,
## it will calculate the inverse of the input matrix and return it.
cacheSolve <- function(x, ...) {
	m<-x$getinv() 
	if(!is.null(inv) ){ ##check if the inverse has been calculated##
		message('getting the cached data') ##if yes, return the value and the description messgage##
		return (inv)
	}
	matrix<-x$get()##if not,first get the original matrix##
	inv<-solve(matrix) ##calculate the inverse##
	x$setinv(inv) ##set the inverse 
	inv ##return the value#
	
	
        
}
