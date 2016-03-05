setwd("C:/Users/dcheng1/Documents/Data Scientist/Exploratory Data Analysis")

data_file <- "household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
date_time <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()