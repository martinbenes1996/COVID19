IRL <- function(level, cache) {
  
  # fallback
  if(level > 2) return(NULL)
  
  # download
  x <- gov_ie(level = level, cache = cache)
  
  # id
  if(level == 2)
    x$id <- id(x$county_id, iso = "IRL", ds = "gov_ie", level = level)
  
  # return
  return(x)
  
}