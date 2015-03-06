houseHold <- function() {
 library(data.table)
 
 #Set a new date class formatted as year-month-day
  setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
  setClass('myDate')
 # init the data frame classes  
  classes <- c(Date='myDate', Time='character', Global_active_power='numeric', Global_reactive_power = 'numeric', Voltage='numeric', Global_intensity='numeric',
               Sub_metering_1='numeric', Sub_metering_2='numeric', Sub_metering_3='numeric')
 # import household power file whole
  hhp_whole <-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?", colClasses=classes)
 # convert the data frame to data table  
  hhp_whole <- data.table(hhp_whole, keep.rownames=FALSE) 
 # select the target date from the data and create a POSIX time table  
  hhp_select <- rbindlist(list(hhp_whole[Date=="2007-02-01"], hhp_whole[Date=="2007-02-02"]) ) 
  hhp_select <- transform(hhp_select, myTime=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
 # export the final required table to Global Envirement   
  hhp <<- data.table(Date=hhp_select$myTime, 
                     Global_active_power=hhp_select$Global_active_power, 
                     Global_reactive_power=hhp_select$Global_reactive_power, 
                     Voltage=hhp_select$Voltage, 
                     Global_intensity=hhp_select$Global_intensity, 
                     Sub_metering_1=hhp_select$Sub_metering_1, 
                     Sub_metering_2=hhp_select$Sub_metering_2, 
                     Sub_metering_3=hhp_select$Sub_metering_3)
  
  
}