# Challenge 15: Statistics and R

## Deliverable 1: Linear Regression to Predict MPG

### Use the library() function to load the dplyr package.
library(dplyr)

### Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

### Perform linear regression using the lm() function.
### In the lm() function, pass in all six variables (i.e., columns), 
### and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

### Using the summary() function, determine the p-value 
### and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

### Plot for each variable
#### MPG vs Vehicle_length
reg1 <- lm(mpg~vehicle_length,data=MechaCar_mpg) 
summary(reg1)
with(MechaCar_mpg,plot(mpg, vehicle_length, pch = 16, cex = 1.3, col = "blue", main = "MPG vs Vehicle length", xlab = "Miles per Gallon (mpg)", ylab = "Vehicle Length (ft)"))
abline(reg1, col = "red")

#### MPG vs Vehicle_weight
reg2 <- lm(mpg~vehicle_weight,data=MechaCar_mpg) 
summary(reg2)
with(MechaCar_mpg,plot(mpg, vehicle_weight, pch = 16, cex = 1.3, col = "blue", main = "MPG vs Vehicle Weight", xlab = "Miles per Gallon (mpg)", ylab = "Vehicle Weight (lbs)"))
abline(reg2, col = "red")

#### MPG vs Spoiler_angle
reg3 <- lm(mpg~spoiler_angle,data=MechaCar_mpg) 
summary(reg3)
with(MechaCar_mpg,plot(mpg, spoiler_angle, pch = 16, cex = 1.3, col = "blue", main = "MPG vs Spoiler Angle", xlab = "Miles per Gallon (mpg)", ylab = "Spoiler Angle (°)"))
abline(reg3, col = "red")

#### MPG vs Ground_clearance
reg4 <- lm(mpg~ground_clearance,data=MechaCar_mpg) 
summary(reg4)
with(MechaCar_mpg,plot(mpg, ground_clearance, pch = 16, cex = 1.3, col = "blue", main = "MPG vs Ground Clearance", xlab = "Miles per Gallon (mpg)", ylab = "Ground Clearance (in)"))
abline(reg4, col = "red")

#### MPG vs AWD
reg5 <- lm(mpg~AWD,data=MechaCar_mpg) 
summary(reg5)
with(MechaCar_mpg,plot(mpg, AWD, pch = 16, cex = 1.3, col = "blue", main = "MPG vs AWD", xlab = "Miles per Gallon (mpg)", ylab = "AWD"))
abline(reg5, col = "red")


## Deliverable 2: Summary Statistics on Suspension Coils
### Import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

### Write an RScript that creates a total_summary dataframe using 
### the summarize() function to get the mean, median, variance, 
### and standard deviation of the suspension coil's PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep') 

### Write an RScript that creates a lot_summary dataframe using 
### the group_by() and the summarize() functions to group each 
### manufacturing lot by the mean, median, variance, and standard deviation 
### of the suspension coil's PSI column.
lot_summary <- suspension_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                    Median=median(PSI),
                                                                    Variance=var(PSI),
                                                                    SD=sd(PSI), .groups = 'keep')   

## Deliverable 3: T-Test on Suspension Coils
### Write an RScript using the t.test() function to determine if 
### the PSI across all manufacturing lots is statistically different 
### from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu=1500)

### Write three more RScripts using the t.test() function and 
### its subset() argument to determine if the PSI for each manufacturing lot 
### is statistically different from the population mean of 1,500psi.
Lot1 <- suspension_coil %>% subset(Manufacturing_Lot =='Lot1')
t.test(Lot1$PSI,mu=1500)

Lot2 <- suspension_coil %>% subset(Manufacturing_Lot =='Lot2') 
t.test(Lot2$PSI,mu=1500)

Lot3 <- suspension_coil %>% subset(Manufacturing_Lot =='Lot3')
t.test(Lot3$PSI,mu=1500)

### Box-plot to show the difference between manufacturing lots and PSI
plt <- ggplot(suspension_coil,aes(x=Manufacturing_Lot,y=PSI, color=Manufacturing_Lot))+
        ggtitle('Manufacturing Lot vs PSI')+
        theme(plot.title = element_text(hjust = 0.5))
plt + geom_boxplot()    
       
