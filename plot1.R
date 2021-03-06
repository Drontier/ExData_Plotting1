myfile <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

file2 <- myfile[myfile$Date == "1/2/2007" | myfile$Date == "2/2/2007", ]

datetime <- strptime(paste(file2$Date, file2$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

x <- as.numeric(file2$Global_active_power)

png("plot1.png", width = 480, height = 480)

hist(x, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()