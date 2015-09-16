myfile <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

file2 <- myfile[myfile$Date == "1/2/2007" | myfile$Date == "2/2/2007", ]

datetime <- strptime(paste(file2$Date, file2$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

y1 <- as.numeric(file2$Sub_metering_1)
y2 <- as.numeric(file2$Sub_metering_2)
y3 <- as.numeric(file2$Sub_metering_3)

png("plot3.png", width = 480, height = 480)

plot(datetime, y1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
lines(datetime, y2, type = "l", col = "red")
lines(datetime, y3, type = "l", col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 2, col = c("black", "red", "blue"))

dev.off()