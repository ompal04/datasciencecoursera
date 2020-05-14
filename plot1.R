##plot1

plotass <- read.delim("household_power_consumption.txt", sep = ";")

names(plotass) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subass <- subset(plotass,plotass$Date=="1/2/2007" | plotass$Date =="2/2/2007")

png(filename = "plot1.png")
hist(as.numeric(as.character(subass$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")
dev.off()
