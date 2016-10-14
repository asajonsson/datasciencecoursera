complete <- function(directory, id = 1:332){
 
  output <- data.frame()
  ## loop for att ga igenom filerna
  for(i in id){
    
    ## satter filnamn
    filename <- paste0(directory, "/", sprintf("%03d", i), ".csv")
    
    ## satter fil
    file_data <- read.csv(filename)
    ## print(filename)
    completed_cases <- sum(complete.cases(file_data))
    
    ## skickar till dataframe
    output <- rbind(output, data.frame(id=i,nobs=completed_cases))
    
  }
  
  output
}