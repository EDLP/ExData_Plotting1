setwd("C:/Users/dcheng1/Documents/Data Scientist/Exploratory Data Analysis")

data_file <- "household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
date_time <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subData$Global_active_power)
metering1 <- as.numeric(subData$Sub_metering_1)
metering2 <- as.numeric(subData$Sub_metering_2)
metering3 <- as.numeric(subData$Sub_metering_3)


png("plot3.png", width=480, height=480)
plot(date_time, metering1, type="l", xlab="", ylab="Energy Sub Metering")
lines(date_time,metering2, type="l", col="red")
lines(date_time, metering3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()