airquality<-datasets::airquality
# first 5 rows and col
head (airquality,5)
tail (airquality,n=3)
#descriptive stats of dataframe

summary(airquality)
summary(airquality$Temp)
# plot(airquality$ozone)
plot(airquality$Ozone)
# graph with 2 variables
plot(airquality$Ozone,airquality$Wind)
# graph with all variables
plot(airquality)
#points and lines
plot(airquality$Ozone,type='b')

plot(airquality$Ozone, xlab = 'ozone concentration', ylab = 'No of Instances', main = 'Ozone levels in NY city', col = 'blue')

# list of pre installed datasets

#datasets::

# Horizontal Bar plot
barplot(airquality$Ozone, main = 'Ozone Concentration in air', xlab = 'ozone levels', col = 'green')
barplot(airquality$Ozone, main = 'Ozone Concentration in air', xlab = 'ozone levels', col = 'green', horiz = TRUE)

# histogram
hist(airquality$Solar.R,)

# single box plot ( for single variable)
boxplot(airquality$Solar.R)
# Box plot for multiple variables)
boxplot(airquality[,1:4],main='multiple'
)



