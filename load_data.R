library(dplyr)


# Download Individual household electric power consumption Data Set if needed
if(!dir.exists("data")){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile = "data.zip")
    unzip("data.zip", exdir = "data")
    file.remove("data.zip")
}

# Load data
names <- read.table("data/household_power_consumption.txt", sep = ";", nrows = 1)
data <- read.table("data/household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
names(data) <- names

# Convert dates and times
data <- mutate(data, Date = strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"), Time = NULL)
