shan_load_packages <- function(packages.used){
  
  # check packages that need to be installed.
  packages.needed <- setdiff(packages.used, intersect(installed.packages()[,1], packages.used))
  
  # install additional packages
  if(length(packages.needed) > 0) {
    install.packages(packages.needed, dependencies = TRUE, repos = 'http://cran.us.r-project.org')
  }
  
  r.packages <- sapply(packages.used, require, ch = T)

  return(r.packages)
  
}
