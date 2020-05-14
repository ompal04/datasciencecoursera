##Plot3

plotass <- read.delim("household_power_consumption.txt", sep = ";")

names(plotass) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subass <- subset(plotass,plotass$Date=="1/2/2007" | plotass$Date =="2/2/2007")

subass$Date <- as.Date(subass$Date, format="%d/%m/%Y")
subass$Time <- strptime(subass$Time, format="%H:%M:%S")
subass[1:1440,"Time"] <- format(subass[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subass[1441:2880,"Time"] <- format(subass[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

png(filename = "plot3.png")
plot(subass$Time,subass$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(subass,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(subass,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subass,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
title(main="Energy sub-metering")
dev.off()
