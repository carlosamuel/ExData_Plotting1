setwd("C:\\Users\\figuca02\\datasciencecoursera\\exdata-data-household_power_consumption")
data<-read.table("household_power_consumption.txt", na.strings="?", nrow=2880,skip=66637,dec=".", sep=";", col.names=c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity", "Sub_metering_1","Sub_metering_2","Sub_metering_3"))
fecha<-as.character(data$Date)
hora<-as.character(data$Time)
aux<-paste(fecha,hora)
aux2<-strptime(test,"%d/%m/%Y %H:%M:%S")
data$Fecha<-aux2
png(filename="plot2.png", width= 480, height=480, units="px")
plot(data$Fecha,data$Global.Active.Power, ylab="Global Active Power (kilowatts)", type="l", xlab="")
dev.off()









