source("load_data.R")

# Plot 4
png("plot4.png")
par(mfrow = c(2, 2))
plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(data$Date, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(data$Date , data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$Date, data$Sub_metering_2, type = "l", col = "red")
points(data$Date, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")
plot(data$Date, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global reactive power")
dev.off()
