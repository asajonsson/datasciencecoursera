corr <- function(directory, threshold=0){
  
  all_data = numeric()
  
  ## loop for att ga igenom filerna
  
  for(i in id){
    
    ## satter filnamn
    filename <- paste0(directory, "/", sprintf("%03d", i), ".csv")
    
    ## satter fil
    file_data <- read.csv(filename)
    all_data <- c(all_data, file_data[[pollutant]])
  }
  
  x <- 
  
    cor(x, y,  method = "pearson", use = "complete.obs")
    
  }
