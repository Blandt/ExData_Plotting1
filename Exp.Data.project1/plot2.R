plot2 <- function () {
  #check if our data "hhp" (household power) is loaded and exist if not load it 
  checker <- exists("hhp")
  if (!checker) { 
    source("houseHold.R") # load the import function
    houseHold() #import the data 
                }
 # plot a line charts (typle (l))   
  plot(hhp$Date,hhp$Global_active_power, type="l", xlab="  ", ylab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot2.png", width=480, height=480) ## Copy my plot to a PNG file
  dev.off()  # close PNG Device
  
}