# Exploratory Data Analysis - Project 1
# Plot 1 (Reading Data and Creating Plot)

# Step 1: Read Data
    mydata <- read.table("exdata_data_household_power_consumption/hpc.txt", 
                         header=T, sep=";", na.strings = "?")

# Step 2: Create date-filtered Subset of Original File
    mydata <- mydata[mydata$Date=='1/2/2007' | mydata$Date=='2/2/2007',]

# Step 3: Plot Histogram
    hist(mydata$Global_active_power, col="red", 
         main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Step 4: Save Plot 1
    dev.copy(png, file="Plot1.png", height=480, width=480)
    dev.off()
    
    