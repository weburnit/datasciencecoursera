activity_vector <- function(d_matrix = matrix()){
  if(ncol(d_matrix) != nrow(d_matrix))
    return (NA)
  eigs(d_matrix)
}

decompose_activity <- function(activities = matrix()){
  k <- ncol(activities)
  patterns <- svds(activities, k)
}

windows <- function(){
  dependency_matrix <- NULL
  append <- function(activity = vector()){
    if(is.null(dependency_matrix)){
      dependency_matrix <<- matrix(activity, ncol = length(activity))
    } else {
      rbind(dependency_matrix, activity)
    }
  }
  get <- dependency_matrix
  reset <- function() dependency_matrix <<- NULL
  list(activities = dependency_matrix, append = append)
}