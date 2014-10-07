
data<-read.table("~/household_power_consumption.txt", header=TRUE,sep=";", colClasses= "character")
testdata <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")


png("plot2.png", width=480, height=480)
plot(as.numeric(testdata$Global_active_power),xaxt = "n",type='l',xlab="",ylab="Global Active Power(kilowatts)")
axis(1,at=1, labels="Thu")
axis(1,at=1440, labels="Fri")
axis(1,at=2880, labels="Sat")
dev.off()