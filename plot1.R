setwd("C:/Users/dcheng1/Documents/Data Scientist/Exploratory Data Analysis")

data_file <- "household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subData)
GAP <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
