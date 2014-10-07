# read data
data<-read.table("~/household_power_consumption.txt", header=TRUE,sep=";", colClasses= "character")
# subset the data
testdata <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")
#select data
Sub_metering_1<-as.numeric(as.matrix(testdata$Sub_metering_1))
Sub_metering_2<-as.numeric(as.matrix(testdata$Sub_metering_2))
Sub_metering_3<-as.numeric(as.matrix(testdata$Sub_metering_3))


png("plot4.png", width=480, height=480)
# multiple plot
par(mfrow=c(2,2))
plot(as.numeric(testdata$Global_active_power),xaxt = "n",type='l',xlab="",ylab="Global Active Power")
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
plot(as.numeric(testdata$Voltage),xaxt = "n",type='l',xlab="datetime",ylab="Voltage")
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
plot(Sub_metering_1,xaxt = "n",type='l',xlab="",ylab="Energy sub metering")
lines(Sub_metering_2,col=2)
lines(Sub_metering_3,col=4)
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=0.8,col = c(1, 2, 4),cex=0.8,bty = "n")
plot(as.numeric(testdata$Global_reactive_power),xaxt = "n",type='l',xlab="datetime",ylab="Global_reactive_power")
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
dev.off()