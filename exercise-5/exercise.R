### Exercise 5 ###
library(jsonlite)
library(dplyr)
base <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?"
APIKey <- "&api-key=9b10caa743754b0fb2c4c05207c5ea0b"
# Write a function that allows you to specify a movie, then does the following:
MovieFunction <- function(movieName) {
  movieName <- gsub(" ", "+", movieName)
  query <- paste0(base, movieName, APIKey)
  matches < -fromJSON(query)
  results <- flatten(matches$results)
  headline <- results$headline
  summary <- results$summary_short
  link <- results$link.url
  info <- list(headline = headline, summary = summary, link = link)
}

  # Replace all of the spaces in your movie title with plus signs (+)
  
  
  # Construct a search query using YOUR api key
  # The base URL is https://api.nytimes.com/svc/movies/v2/reviews/search.json?
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  
  # Request data using your search query
  
  
  # What type of variable does this return?
  

##List

  
# Flatten the data stored in the `$results` key of the data returned to you
  


# Test that your function works with a movie of your choice

MovieFunction("Oldboy")
