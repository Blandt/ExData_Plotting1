plot4 <- function(){
  
  #check if our data "hhp" (household power) is loaded and exist if not load it 
    checker <- exists("hhp")
    if (!checker) { 
      source("houseHold.R") # load the import function
      houseHold() #import the data 
    }
 # Setup the Device 2 columns, 2 rows 
    par(mfrow=c(2,2))
 
 # Top left, this histogram is from plot2() ### Copy paste :D 
    plot(hhp$Date,hhp$Global_active_power, type="l", xlab="  ", ylab="Global Active Power (kilowatts)")
 
 #  at the right top plot Voltage as a function of Time : 
    plot(hhp$Date, hhp$Voltage, type="l", xlab="datetime", ylab="Voltage")
    
 # Bottom Left, This is plot3() ! ## Copy paste :D
   plot(hhp$Date,hhp$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
   lines(hhp$Date,hhp$Sub_metering_2,col="red")
   lines(hhp$Date,hhp$Sub_metering_3,col="blue")
   legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "), 
          lwd=2, bty="n", cex = 0.75, pt.cex = 0.75)
 
 # Bottom Right and the last is a plot of reactive energy as a function of time :
   plot(hhp$Date, hhp$Global_reactive_power, type="l", xlab="datetime", ylab="Global reactive power")
 
 # .. and finally copy the plot to a PNG file and close device
   dev.copy(png, file = "plot4.png", width=480, height=480)  
   dev.off()  
}