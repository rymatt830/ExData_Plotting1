# Exploratory Data Analysis - Project 1
# Plot 3 (Reading Data and Creating Plot)

# Step 1: Read Data
    mydata <- read.table("exdata_data_household_power_consumption/hpc.txt", 
                     header=T, sep=";", na.strings = "?")

# Step 2: Create date-filtered Subset of Original File
    mydata <- mydata[mydata$Date=='1/2/2007' | mydata$Date=='2/2/2007',]

# Step 3: Formatting Dates and adding Column "Datetime"
    mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")
    datetime <- paste(as.Date(mydata$Date), mydata$Time)
    mydata$Datetime <- as.POSIXct(datetime)

# Step 4: Generate Plot 3 (Including Legend)
    plot(mydata$Sub_metering_1 ~ mydata$Datetime, type = "l", 
         ylab="Energy sub metering", xlab="")
    lines(mydata$Sub_metering_2 ~ mydata$Datetime, col = 'Red')
    lines(mydata$Sub_metering_3 ~ mydata$Datetime, col = 'Blue')
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1, lwd=2.5, col=c("black", "red", "blue"))

#Step 5: Save Plot 3
    dev.copy(png, file="Plot3.png", height=480, width=480)
    dev.off()