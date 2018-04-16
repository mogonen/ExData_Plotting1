
hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## reformat dates
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")

## filter dates Feb. 1, 2007 to Feb. 2, 2007
hpc <- subset(hpc,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
hpc <- hpc[complete.cases(hpc),]

## merge the Date&Time columns in HPC table in Posix format
dateTime <- paste(hpc$Date, hpc$Time)
dateTime <- setNames(dateTime, "DateTime")
hpc <- hpc[ ,!(names(hpc) %in% c("Date","Time"))]
hpc <- cbind(dateTime, hpc)
hpc$dateTime <- as.POSIXct(dateTime)


##save plot function
savePlot <- function(filename)
{
  dev.copy(png,filename, width=480, height=480)
  dev.off()
}

