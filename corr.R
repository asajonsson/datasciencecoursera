corr <- function(directory, threshold=0){
  
  ## kallar pa funktionen complete
  complete_files <- complete(directory)
 
  ## satter filtrering pa threshold
  thresholdfilt <- subset(complete_files, nobs > threshold)
  
  correlations = numeric()

  for(i in thresholdfilt$id){
    ## satter filnamn
    filename <- paste0(directory, "/", sprintf("%03d", i), ".csv")
    
    ## satter fil
    file_data <- read.csv(filename)
    file_data <- file_data[complete.cases(file_data),]
    
    file_corr <- cor(file_data[["sulfate"]], file_data[["nitrate"]])

    correlations <- c(correlations, file_corr)
  }
  
  return(correlations)
}
