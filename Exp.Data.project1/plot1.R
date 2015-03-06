plot1 <- function() {
  
  checker <- exists("hhp")
  if (!checker) { 
    source("houseHold.R") # load the import function
    houseHold() #import the data 
  }
  
  hist(hhp$Global_active_power, col='red', main ='Global Active Power', xlab = 'Global Active Power (kilowatts)') #draw the histogram
  dev.copy(png, file = "plot1.png", width=480, height=480)  ## Copy my plot to a PNG file
  dev.off()  # close PNG Device
}