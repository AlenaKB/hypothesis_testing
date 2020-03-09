
#PART 1
car <- read.csv('Mechacar_mpg.csv')
#create a model for all 4 variables
model <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data=car)
#check the summary
summary(model)
plot(model)

#do the same but for 2 variables
model2 <- lm(mpg ~ vehicle.length+ ground.clearance, data = car)
summary(model2)
plot(model2)

#plot each one of them 
plt1 <- ggplot(car, aes(x=mpg, y=ground.clearance)) 
plt1 + geom_point() + geom_smooth(method='lm', se=F)

plt2 <- ggplot(car, aes(x=mpg, y=vehicle.length)) 
plt2 + geom_point() + geom_smooth(method='lm', se=F)

#PART 2 

coil <- read.csv('Suspension_Coil.csv')
options(scipen=100)
options(digits=3)
stat.desc(coil['PSI'])

# t-test

t.test(coil$PSI, mu=1500)
