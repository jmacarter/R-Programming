#Jeff Carter
#jeffcarter@mac.com
#R Programming (July 19 2015)
#Assignment #1 - Part 1
#https://class.coursera.org/rprog-030/assignment/view?assignment_id=3

pollutantmean <- function(directory, pollutant, id = 1:332) {
     ## 'directory' is a character vector of length 1 indicating
     ## the location of the CSV files
     
     ## 'pollutant' is a character vector of length 1 indicating
     ## the name of the pollutant for which we will calculate the
     ## mean; either "sulfate" or "nitrate".
     
     ## 'id' is an integer vector indicating the monitor ID numbers
     ## to be used
     
     ## Return the mean of the pollutant across all monitors list
     ## in the 'id' vector (ignoring NA values)
     ## NOTE: Do not round the result!
     
     #to be passed by function
#      id <- 1:10
#      directory <- "specdata"
#      pollutant <- "sulfate"
     
     #built vector of file names to be read, based on the user input or default
     path <- file.path(directory, paste(sprintf("%03d", as.numeric(id)), ".csv", sep=""))
     
     #read the selected CSV files
     Data <- lapply(file.path(path),read.csv)
     
     #convert into data frame
     Data <- do.call(rbind.data.frame,Data)
     
     #calculate mean
     polluntantmean <- mean(Data[,pollutant],na.rm=TRUE)
     
     return(polluntantmean)
}