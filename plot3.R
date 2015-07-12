png(file='plot3.png', width=480, height=480)
startDay = as.POSIXct(strftime("2007-02-01 00:00:00"))
endDay = as.POSIXct(strftime("2007-02-03 00:00:00"))
plot(household_power_consumption$Time, household_power_consumption$Sub_metering_1, xlim=c(startDay, endDay), xaxt="n", type="l",xlab="", > ylab="Energy sub metering", col="black")
lines(household_power_consumption$Time, household_power_consumption$Sub_metering_2, col="red")
lines(household_power_consumption$Time, household_power_consumption$Sub_metering_3, col="blue")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

## Please note that the abbreviations of the days of the week appear in spanish (ju. = jueves; vi. = viernes; sá. = sábado).
