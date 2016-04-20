## Put comments here that give an overall description of what your
## functions do
  ## I have written two functions in this R script. 
  ## First function makeCacheMatrix creates empty matrix and four other functions 
  ## named get, set, setmat, getmat which does below activities 
  ## set - create a empty matrix and push to Cache , get - gets the available matrix,
  ## setmat - sets the inverse matrix to the Cache, getmat - gets the inverse matrix from Cache

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  mat <<- NULL
  
  set <- function(y)
  {
    mat <<- NULL
    print("setting dat")
    print(y)
    dat <<- y 
  }
  get <- function() dat
  setInv <- function(Invmat) mat <<- Invmat 
  getInv <-  function() mat 
  ##l1 <-
  list(set = set, get = get, getInv = getInv, setInv = setInv) 
  
  

}


## Write a short comment describing this function
## This function tries to get the matrix from the Cache. 
## If the matrix is  available, gets the inverse from Cache, 
## else set the inverse and load it to Cache.
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x' 
  mat <- dat$getInv()  
  ##mat1 <- dat$get()
  ##if ((!is.null(mat)) && (identical(mat,solve(mat1)))) {
  if (!is.null(mat)) 
    
    {
    message("getting cached data")
    return(mat)
  }
  data <- dat$get() 
  mat <- solve(data)
  dat$setInv(mat)
  mat
  
  
}
