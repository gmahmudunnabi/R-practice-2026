
#reading the data into the Rstudio

data <- read.csv(file = "data/inflammation-01.csv", header = F)

#reading a file with ";" separation 

data2 <- read.csv(file = "data/commadec.txt", sep = ";", dec = ",", header = TRUE)


head(data) #displaying first 6 lines, displays all the columns

str(data) #shows data type, variables (column) and first 10 values(row)

class(data) #shows the class of the data, in this case a data frame

names(data) #returns the column names

dim(data) #returns the dimensions as rows x columns format.

#accessing the data in the dataframe

data[1,1]





