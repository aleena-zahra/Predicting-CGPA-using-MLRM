##Step 1:Reading the data 
## Firstly reading the data from the csv file
train_data <- read.csv("hfinal.csv")
train_data <- data.frame(train_data)
test_data <- read.csv("final.csv")
test_data <- data.frame(test_data)


##Step 2:
## Printing the summary of the data(e.g mean ,median ,mode etc)
print(summary(train_data))

##Step 3:Displaying the data using pie charts,histograms,bar graphs etc
## Scatter plot for the dependent and independent variables of the dataset
par(mfrow=c(3,3))
plot(train_data$Exampreperday, train_data$CGPA, main="Exam Preperation per Day vs CGPA", xlab="Exam Preperation per Day", ylab="CGPA", col=rainbow(10))
plot(train_data$Studyhoursperweek, train_data$CGPA, main="Study Hours per Week vs CGPA", xlab="Study Hours per Week", ylab="CGPA", col=rainbow(10))
plot(train_data$CGPA, train_data$CGPA, main="SGPA vs CGPA", xlab="SGPA", ylab="CGPA", col=rainbow(10))
plot(train_data$SGPA, train_data$CGPA, main="SGPA vs CGPA", xlab="SGPA", ylab="CGPA", col=rainbow(10))
plot(train_data$PreviousSGPA, train_data$CGPA, main="Previous SGPA vs CGPA", xlab="Previous SGPA", ylab="CGPA", col=rainbow(10))
plot(train_data$Weeklyscreentime, train_data$CGPA, main="Weekly Screen Time vs CGPA", xlab="Weekly Screen Time", ylab="CGPA", col=rainbow(10))
plot(train_data$academicsatisfactionrating, train_data$CGPA, main="Academic Satisfaction Rating vs CGPA", xlab="Academic")
plot(train_data$Dailysleepinghours, train_data$CGPA, main="Daily Sleeping Hours vs CGPA", xlab="Daily Sleeping Hours", ylab="CGPA", col=rainbow(10))
plot(train_data$Socializationperweek, train_data$CGPA, main="Socialization per Week vs CGPA", xlab="Socialization per Week", ylab="CGPA", col=rainbow(10))

## Bell curve for the dependent and independent variables of the train_dataset
par(mfrow=c(3,3))
hist(train_data$Exampreperday, main="Exam Preperation per Day", xlab="Exam Preperation per Day", col=rainbow(10))
hist(train_data$Studyhoursperweek, main="Study hours per Week", xlab="Study hours per Week", col=rainbow(10))
hist(train_data$CGPA, main="CGPA", xlab="CGPA", col=rainbow(10))
hist(train_data$SGPA, main="SGPA", xlab="SGPA", col=rainbow(10))
hist(train_data$PreviousSGPA, main="Previous SGPA", xlab="Previous SGPA", col=rainbow(10))
hist(train_data$Weeklyscreentime, main="Weekly Screen Time", xlab="Weekly Screen Time", col=rainbow(10))

## Box and whisker plot for the dependent and independent variables of the train_dataset and all the plots are shwon in a single grid 
par(mfrow=c(3,3))
boxplot(train_data$Exampreperday, main="Exam Preperation per Day", col="red",horizontal=TRUE)
boxplot(train_data$Studyhoursperweek, main="Study hours per Week", col="red",horizontal=TRUE)
boxplot(train_data$CGPA, main="CGPA", col="red",horizontal=TRUE)
boxplot(train_data$SGPA, main="SGPA", col="red",horizontal=TRUE)
boxplot(train_data$PreviousSGPA, main="Previous SGPA", col="red",horizontal=TRUE)
boxplot(train_data$Weeklyscreentime, main="Weekly Screen Time", col="red",horizontal=TRUE)
boxplot(train_data$academicsatisfactionrating, main="Academic Satisfaction Rating", col="red",horizontal=TRUE)
boxplot(train_data$Dailysleepinghours, main="Daily Sleeping Hours", col="red",horizontal=TRUE)
boxplot(train_data$Socializationperweek, main="Socialization per Week", col="red",horizontal=TRUE)
## Pie chart for the dependent and independent variables of the train_dataset
par(mfrow=c(2,2))
pie(table(train_data$Relaxation), main="Relaxation")
pie(table(train_data$Stressrating), main="Stress Rating")
pie(table(train_data$academicsatisfactionrating), main="AcademicSatisfaction Rating")
## Bar graph for the dependent and independent variables of the train_dataset
par(mfrow=c(3,3))
barplot(table(train_data$Exampreperday), main="Exam Preperation per Day")
barplot(table(train_data$Studyhoursperweek), main="Study hours per Week")
barplot(table(train_data$CGPA), main="CGPA")
barplot(table(train_data$SGPA),main="SGPA")
barplot(table(train_data$PreviousSGPA),main="Previous SGPA")
barplot(table(train_data$Weeklyscreentime),main="Weekly Screen Time")
barplot(table(train_data$academicsatisfactionrating),main="Academic Satisfaction Rating")
barplot(table(train_data$Dailysleepinghours),main="Daily Sleeping Hours")
barplot(table(train_data$Socializationperweek),main="Socialization per Week")
#Step 4:
## Making MLRM model
mlrm <- lm(CGPA ~ SGPA + Weeklyscreentime + academicsatisfactionrating +PreviousSGPA , data=train_data)
print(mlrm) 
print(summary(mlrm)) ## Getting the summary (e.g p-value,error etc) and finding out the significant and insignificant variables of the data
predictions <- predict(mlrm, test_data)
print(predictions)



##Step 6:
## Identifying coefficients of determination
cor_matrix <- cor(train_data[, c("Exampreperday","Studyhoursperweek","CGPA", "SGPA","PreviousSGPA", "Weeklyscreentime", "academicsatisfactionrating","Dailysleepinghours","Socializationperweek","Relaxation","Stressrating")])
print(cor_matrix)







