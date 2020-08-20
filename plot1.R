source("load_data.R")

# Plot 1
png("plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
