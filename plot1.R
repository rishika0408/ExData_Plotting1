dataFile <- read.table("C:\\Users\\sanjiv\\Desktop\\household_power_consumption.txt", header = TRUE,
                       sep = ";", stringsAsFactors = FALSE)
datasub <- dataFile[dataFile$Date %in% c("1/2/2007","2/2/2007"),]
class(datasub$Global_active_power)
globalactivepower <- as.numeric(datasub$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalactivepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()