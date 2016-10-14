pollutantmean <- function(directory, pollutant, id = 1:332){
  all_data = numeric()
  
  ## loop for att ga igenom filerna
  
  for(i in id){
   
    ## satter filnamn
    filename <- paste0(directory, "/", sprintf("%03d", i), ".csv")
    
    ## satter fil
    file_data <- read.csv(filename)
    all_data <- c(all_data, file_data[[pollutant]])
  }
  
  mean(all_data, na.rm=TRUE)

  ## 'directory' is a character vector of length 1 indication 
  ## the location of the csv files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id'is an integer vector indication the monitor ID numbers
  ## to be used
  
  ## return the mean of the pollutant across al monitors list
  ## in the 'id vector (ignoring NA values)
  ## NOTE: Do not round the result
  
}