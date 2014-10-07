data<-read.table("~/household_power_consumption.txt", header=TRUE,sep=";", colClasses= "character")
testdata <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")


# using subset during the plot
png("plot1.png", width=480, height=480)
hist(as.numeric(testdata$Global_active_power), col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()


