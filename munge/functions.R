# FUNCTIONS

## Function for creating chunks
### this function receives a list and divides it into lists of n length
### use it before calling twitter API and split
chunk <- function(x,n)
{
        f <- sort(rep(1:(trunc(length(x)/n)+1),n))[1:length(x)]
        return(split(x,f))
}



