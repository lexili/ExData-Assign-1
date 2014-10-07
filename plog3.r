# read data
data<-read.table("~/household_power_consumption.txt", header=TRUE,sep=";", colClasses= "character")
# subset the data
testdata <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

# select the plot data
Sub_metering_1<-as.numeric(as.matrix(testdata$Sub_metering_1))
Sub_metering_2<-as.numeric(as.matrix(testdata$Sub_metering_2))
Sub_metering_3<-as.numeric(as.matrix(testdata$Sub_metering_3))

png("plot3.png", width=480, height=480)
plot(Sub_metering_1,xaxt = "n",type='l',xlab="",ylab="Energy sub metering")
lines(Sub_metering_2,col=2)
lines(Sub_metering_3,col=4)
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=c(2.5,2.5),col = c(1, 2, 4))
dev.off()