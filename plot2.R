
## Plot 2
source("hpc_plots.R")
plot(hpc$Global_active_power~hpc$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
savePlot("plot2.png")

