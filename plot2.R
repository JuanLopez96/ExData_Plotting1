png(file='plot2.png', width=480, height=480, units='px')
startDay = as.POSIXct(strftime("2007-02-01 00:00:00"))
endDay = as.POSIXct(strftime("2007-02-03 00:00:00"))
plot(household_power_consumption$Time, household_power_consumption$Global_active_power, xlim=c(startDay, endDay), xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="l")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")
dev.off()

## Please note that the abbreviations of the days of the week appear in spanish (ju. = jueves; vi. = viernes; sá. = sábado). 
