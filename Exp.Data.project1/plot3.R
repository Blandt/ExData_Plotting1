plot3 <- function() {
  
  #check if our data "hhp" (household power) is loaded and exist if not load it 
  checker <- exists("hhp")
  if (!checker) { 
    source("houseHold.R") # load the import function
    houseHold() #import the data 
  }
  plot(hhp$Date,hhp$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
   lines(hhp$Date,hhp$Sub_metering_2,col="red")
   lines(hhp$Date,hhp$Sub_metering_3,col="blue")
   legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "), lwd=2)
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
}