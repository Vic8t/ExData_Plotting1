source("load_data.R")

# Plot 2
png("plot2.png")
plot(data$Date, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
