# Exploratory Data Analysis - Project 1
# Plot 2 (Reading Data and Creating Plot)

# Step 1: Read Data
    mydata <- read.table("exdata_data_household_power_consumption/hpc.txt", 
                     header=T, sep=";", na.strings = "?")

# Step 2: Create date-filtered Subset of Original File
    mydata <- mydata[mydata$Date=='1/2/2007' | mydata$Date=='2/2/2007',]
    
# Step 3: Formatting Dates and adding Column "Datetime"
    mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")
    datetime <- paste(as.Date(mydata$Date), mydata$Time)
    mydata$Datetime <- as.POSIXct(datetime)

# Step 4: Generate Plot 2
    plot(mydata$Global_active_power ~ mydata$Datetime, type = "l", 
         ylab = "Global Active Power (kilowatts)", xlab = "")

#Step 5: Save Plot 2
    dev.copy(png, file="Plot2.png", height=480, width=480)
    dev.off()