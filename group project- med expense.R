#set working directory for med expense data

#read in data
MedExpenseData1 = read.csv("MEPS_MedExpenses_Data.csv")

#View function to view data variables
View(MedExpenseData1)

#use summary to get stats on data
summary(MedExpenseData1)

#getting standard deviation
sd(MedExpenseData1[["Total_MedExpenses_Dollars"]])

sd(MedExpenseData1[["Annual_Income_Dollars"]])

sd(MedExpenseData1[["Age"]])

sd(MedExpenseData1[["Number_of_Doctor_Vists"]])

sd(MedExpenseData1[["Number_of_ER_Vists"]])


#getting categorical info
table(MedExpenseData1[["Gender"]])

table(MedExpenseData1[["Race"]])

table(MedExpenseData1[["Has_Health_Insurance"]])

table(MedExpenseData1[["Education"]])

table(MedExpenseData1[["Has_Health_Insurance"]])

#Estimating Simple Linear Regression
reg_results = lm(Total_MedExpenses_Dollars ~ Number_of_Nights_in_Hospital, data = MedExpenseData1)

#Examine Regression Results
summary(reg_results)