#reading the data into the Rstudio----------

dat <- read.csv(file = "data/inflammation-01.csv", header = F)

#reading a file with ";" separation 

dat2 <- read.csv(file = "data/commadec.txt", sep = ";", dec = ",", header = TRUE)


head(dat) #displaying first 6 lines, displays all the columns

str(dat) #shows data type, variables (column) and first 10 values(row)

class(dat) #shows the class of the data, in this case a data frame

names(dat) #returns the column names

dim(dat) #returns the dimensions as rows x columns format.

#accessing the data in the data frames as variable_name[row, column]

dat[30,11] #accessing the value of 30th row and 11th column

dat[c(1, 3, 5), c(10, 20)] #accessing multiple value 

dat[1:5, 6:10]

#columns can be accessed with variable$column_name

dat$V32 #returns the values in the column name V32, dat[,32] also return the same


# first row, all of the columns

patient_1 <- dat[1, ]

# max inflammation for patient 1
max(patient_1)

# max inflammation for patient 2
max(dat[2, ]) #without directly assigning the value in a variable


# minimum inflammation on day 7
min(dat[, 7])

# median inflammation on day 7
median(dat[, 7])

sd(dat[, 7]) #standard deviation

typeof(dat[1,])
median(dat[1,])

#summarise and summary-----------

summary(dat[1:5, 1:5])

#apply() function to calculate in rows----------

avg_patient_inflammation <- apply(dat, 1, mean)

avg_day_inflammation <- apply(dat, 2, mean)

avg_patient_inflammation[1]

#problem1:------- 

#problem: Suppose you want to determine the maximum inflammation for 
#patient 5 across days three to seven. To do this you would extract the 
#relevant subset from the data frame and calculate the maximum value. 

#extracting the data for patient 5(=row 5) , and days 3 to 7 means (=3:7)

dat[5, 3:7]

#maximum value 

max(dat[5, 3:7])

#Problem 2:--------------

# Using the inflammation data frame dat from above: Let’s pretend there was 
# something wrong with the instrument on the first five days for every second patient (#2, 4, 6, etc.), 
# which resulted in the measurements being twice as large as they should be.
# 1.Write a vector containing each affected patient (hint: ?seq)
# 2.Create a new data frame in which you halve the first five days’values in only those patients 
# 3.Print out the corrected data frame to check that your code has fixed the problem

#to solve this, first know the dimension of the data frame or matrix

dim(dat) #return the dimensions, 60 rows (patients) and 40 columns (days)

#now subset 

nrow(dat)



which_patient <- seq(2,60, 2) # or seq(2, nrow(dat), 2)
which_days <- seq(1, 5) # or  1:5

corrected_dat <- dat

affected_patients <- dat[which_patient, which_days] #return a list

#this can be achieved in a different way without knowing the dimentions

affected_patients_2 <- dat[seq(2, nrow(dat), 2), 1:5]

corrected_dat[which_patient, which_days] <- affected_patients/2
corrected_dat

apply(dat[1:5, ], 1, mean)
# 2.
apply(dat[, 1:10], 2, mean)
# 3.
apply(dat[, seq(2, 40, by = 2)], 2, mean)

avg_day_inflammation <- apply(dat, 2, mean)

plot(avg_day_inflammation, xlab = "Days", ylab = "average day inflammation")

max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)

sd_day_inflammation <- apply(dat, 2, sd)
plot(sd_day_inflammation)


