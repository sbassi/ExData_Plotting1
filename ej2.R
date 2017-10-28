powerconsumption <- read.table("household_power_consumption.txt",sep=";", na.strings="?",header=T)
subsetpower <- powerconsumption[powerconsumption$Date %in% c("1/2/2007", "2/2/2007"), ]
alldays<-strptime(paste(subsetpower$Date, subsetpower$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(alldays, subsetpower$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
