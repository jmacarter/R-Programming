#Jeff Carter
#jeffcarter@mac.com
#R Programming (July 19 2015)
#Assignment #1 - Part 2
#https://class.coursera.org/rprog-030/assignment/view?assignment_id=3

complete <- function(directory, id = 1:332) {
     ## 'directory' is a character vector of length 1 indicating
     ## the location of the CSV files
     
     ## 'id' is an integer vector indicating the monitor ID numbers
     ## to be used
     
     ## Return a data frame of the form:
     ## id nobs
     ## 1  117
     ## 2  1041
     ## ...
     ## where 'id' is the monitor ID number and 'nobs' is the
     ## number of complete cases

     
     nobs <- function(id) {
          #set the path and file name of the file to be read for complete cases
          path <- file.path(directory, paste(sprintf("%03d", as.numeric(id)), ".csv", sep=""))
          
          #count the number of complete cases (no NAs) in the file
          return (sum(complete.cases(read.csv(path))))
     }
     return (data.frame(id=id, nobs=sapply(id, nobs)))
}