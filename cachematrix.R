
#The first function, makeVector creates a special "matrix", which is really a list containing a function to

# - set the value of the vector
# - get the value of the vector
# - set the value of the mean
# - get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
        matrix_inv <- NULL
        set <- function(y){
              x <<- y
              matrix_inv <<- NULL
            
        }
        get <- fucntion() x
        set_matrix <- function(inv) matrix_inv <<- inv
        get_matrix <- function() matrix_inv
        list(set = set, get = get ,
             set_matrix = set_matrix,
             get_matrix = get_matrix)

}


#The following function calculates the inverse of the special "matrix" created with the above function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrix_inv <- x$get_matrix()
        if(!is.null(matrix_inv)){
                message("getting cached data")
                return(matrix_inv)                
        
        }
        data <- x$get()
        matrix_inv <- solve(data, ...)
        x$set_matrix(matrix_inv)
        matrix_inv
        
}
