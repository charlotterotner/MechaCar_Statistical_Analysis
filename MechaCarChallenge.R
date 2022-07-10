#Deliverable 2
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics

#Deliverable 2
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- summarize (coil_table, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>%
  + summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#Deliverable 3
t.test(coil_table$PSI, mu=1500)

Lot1 = subset(coil_table, Manufacturing_Lot == 'Lot1')

Lot2 = subset(coil_table, Manufacturing_Lot == 'Lot2')

Lot3 = subset(coil_table, Manufacturing_Lot == 'Lot3')

t.test(Lot1[["PSI"]],mu=1500)

t.test(Lot2[["PSI"]],mu=1500)

t.test(Lot3[["PSI"]],mu=1500)

