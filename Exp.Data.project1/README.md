## How to use : 

Place all the R files in your current R working directory
Make sure to unzip <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a>  and is in your current working R directory 

 ```
	plot_files <- c("plot1.R", "plot2.R", "plot3.R", "plot4.R")
 	sapply(plot_files, source, .GlobalEnv)
 ```
 
Call each function to execute the plots 1:4 :
```
plot1()
plot2() ... etc 
```



## File structure 

Files required 
	
* household_power_consumption.txt
* houseHold.R
* plot1.R
* plot2.R
* plot3.R
* plot4.R

the PNG files are in figure directory 

