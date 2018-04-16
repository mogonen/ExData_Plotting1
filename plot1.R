source("hpc_plots.R")
##Plot 1 
hist(hpc$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
savePlot("plot1.png")

