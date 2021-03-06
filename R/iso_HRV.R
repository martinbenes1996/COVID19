HRV <- function(level, cache) {
  # Author: Martin Benes
  
  # fallback
  if(level!=2)
    return(NULL)
  
  # download
  x <- gov_hr(level = level, cache = cache)
  
  # id
  if(level == 2) {
    
    x$id <- id(x$region, iso = "HRV", ds = "gov_hr", level = level)
  
  }
  
  # return
  return(x)
  
}
