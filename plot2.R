dataFile <- read.table("C:\\Users\\sanjiv\\Desktop\\household_power_consumption.txt", header = TRUE,
                       sep = ";", stringsAsFactors = FALSE)
datasub <- dataFile[dataFile$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(datasub$Date, datasub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
globalactivepower <- as.numeric(datasub$Global_active_power)
png("plot2.png", width = 480, height = 480 )
plot(datetime, globalactivepower, type = "1", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
