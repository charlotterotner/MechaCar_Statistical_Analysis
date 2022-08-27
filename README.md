# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
From our summary output in R we can conclude that vehicle length, vehicle weight, and ground clearance are the variables that provide a non-random amount of variance to the mpg values. In other words, we can conclude that those three variables have a significant impact on the mpg variable. Below is an image of our summary output from R: 

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%201%20images/summary_mechacar.png)

**Is the slope of the linear model considered to be zero? Why or why not?**
As mentioned above vehicle length, weight, and ground clearance all have significant impact on the MPG variable. Knowing that we know that the slope of the linear model will not be zero. The slope would be zero if we concluded that there was no linear relationship and the MPG was determined by random chance. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
Yes, this linear model could be used to predict the mpg of Mechacar prototypes effectively. From our summary function we found a Multiple R-Squared value of .7149, which means that roughly 71% of our dependent variable, MPG, is explained using our multiple linear regression model.

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%201%20images/lm_mechacar.png)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Pictured below is the Mean, Median, Variance, and SD for the three different MechaCar manufacturing lots. We can conclude that lot 1 and 2 meet the design specifications with variances of 0.97 and 7.47, respectively. Lot 3 does not meet design specifications with the variance being over the 100 pound thershold at a 170.29 PSI variance. We should evaluate the manufacturing practices at this lot to ensure the cars are meeting the PSI requirements.

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%202%20images/Lot_summary.png)

## T-Tests on Suspension Coils
For this portion of the challenge we performed a 1 sample T-test to see if the entire sample population of coil PSI’s was statistically significant from the mean of 1500 PSI. Seen in the image below our t-test outputted a P-value of 0.06028 so we fail to reject our null hypothesis, can conclude that the means are not statistically different. 

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%203%20images/Ttest.png)


I then performed 3 additional T-tests to see if any of the three manufacturing lots had statistically significant differences from the mean. Both lots 1 and 2 had P-values greater than 0.05 so we can assume they are statistically similar to the mean. Lot 3 on the other hand had a P-value of 0.041 which is less than 0.05 so we can reject our null hypothesis and can assume that the means are statistically different. This is further evidence to evaluate the manufacturing practices at this lot to ensure the coils are up to standards.

### **Lot 1 T-Test:**

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%203%20images/Ttest_Lot1.png)

### **Lot 2 T-Test:**

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%203%20images/Ttest_Lot2.png)

### **Lot 3 T-Test:**

![image description or alt text](https://raw.githubusercontent.com/charlotterotner/MechaCar_Statistical_Analysis/main/Deliverable%203%20images/Ttest_Lot3.png)

## Study Design: MechaCar vs Competition
We want to design a study to evaluate MechaCar vehicles against their competitition, MegaCar. 

**Metric to test:**
The priority right now for consumers is gas mileage due to the high cost of gas because of inflation so lets focus on highway fuel efficiency (mpg).

**Null and Alternative Hypothesis:**

- H0 : MechaCar vehicle’s highway fuel efficiency (mpg) does not differ from the highway fuel effiency of their competitor, MegaCar.
- Ha : MechaCar vehicle’s highway fuel efficiency (mpg) is statistically significantly lower than their competitors highway fuel efficiency, MegaCar.

**Statistical Test:**
We should use a two-sample T-test since it is the most appropriate test to use when comparing the statistical difference between two samples 

**The data:**
We will need the highway fuel effeciencies data for MechaCar vehicles as well as their main competitor Megacar. We’ll want to ensure we group by car types (SUV, sedan, hatchback, etc) to remove any bias that is associated with the type of car and the impact on highway fuel efficiency. 

---

**Contact:**

Email: charlotte.rotner@gmail.com  
Linkedin: https://www.linkedin.com/in/charlotte-rotner/
