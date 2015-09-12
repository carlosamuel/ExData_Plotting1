setwd("C:\\Users\\figuca02\\datasciencecoursera\\exdata-data-household_power_consumption")
data<-read.table("household_power_consumption.txt", na.strings="?", nrow=2880,skip=66637,dec=".", sep=";", col.names=c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity", "Sub_metering_1","Sub_metering_2","Sub_metering_3"))
fecha<-as.character(data$Date)
hora<-as.character(data$Time)
aux<-paste(fecha,hora)
aux2<-strptime(test,"%d/%m/%Y %H:%M:%S")
data$Fecha<-aux2
png(filename="plot3.png", width= 480, height=480, units="px")
plot(data$Fecha, data$Sub_metering_1, type="n")
plot(data$Fecha,data$Sub_metering_1, ylab="Energy sub metering", type="l", xlab="", col="black")
lines(data$Fecha,data$Sub_metering_2, col="red", type="l")
lines(data$Fecha,data$Sub_metering_3, col="blue", type="l")
legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()


