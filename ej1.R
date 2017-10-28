powerconsumption <- read.table("household_power_consumption.txt",sep=";", na.strings="?",header=T)
subsetpower <- powerconsumption[powerconsumption$Date %in% c("1/2/2007", "2/2/2007"), ]
png("plot1.png", width = 480, height = 480)
hist(subsetpower$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()
