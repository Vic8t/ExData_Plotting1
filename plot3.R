source("load_data.R")

# Plot 3
png("plot3.png")
plot(data$Date , data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$Date, data$Sub_metering_2, type = "l", col = "red")
points(data$Date, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
