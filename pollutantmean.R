pollutantmean <- function(directory, pollutant, id = 1:332) {
  filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
  files <- dir()
  data <- numeric()
  data<-data.frame()
  
  for (i in id) {
        newRead = read.csv(paste(directory, "/", 
            ".csv", sep = ""))
        data = c(data, newRead[[pollutant]])
    }
  
  return(mean(data, na.rm = TRUE))
}
