
data1 <- read.csv(file.choose(), header = TRUE)
data1

#line graph
x<- data1[1:15 ,"chol"]
plot(x, type = "b" , col= "red" , xlab= "rowno" , ylab="chol", main= "heart details")

x1<- data1[1:20 , "cp"]
plot(x,type ="l" , col="blue", xlab="row",ylab="y axis", main= "chest pain")


#pie chart
x<- data1 [1:21, "oldpeak"]
lables <- data1[1:21,"oldpeak"]
pie(x,lables, main="oldpeak in heart disease" , col= rainbow(length(x)))

x2 <- data1[1:10, "fbs"]
heartdisease <- data1[1:10, "fbs"]
pie(x2,heartdisease, main="fbs in heart disease", col=rainbow(length(x2)))

#boxplot
input_data <- data1[ ,c("age","cp")]
boxplot(age~cp, data= data1, xlab="age", ylab="cp" , main="details of heart attack patients", col="purple")

input_data <- data1[ ,c("slp","caa")]
boxplot(slp~caa, data = data1, xlab="slp",ylab="caa", main="details of heart patients", col="blue")

#barplot

u <- data1[1:30 ,"age"]
z<- data1[1:30, "cp"]
barplot(u, names.arg= z, xlab="no of age", ylab="cp", main="details of heart attack patients", col = "yellow")


g<-data1[0:10,"exng"]
h<-data1[0:10,"restecg"]
barplot(g, names.arg=h, xlab="exng", ylab="restecg", main="details of heart patients", col="purple")

#histogram
data1$chol
hist(data1$chol)

hist(data1$chol, xlab="dd",ylab="jdj", main="histogram")

#scatter plot
plot(data1$chol)
sp<- data1[1:303, c("slp","caa")]
plot(x=data1$slp, y=data1$caa, xlab="slp", ylab="caa", main ="xyz")
 

# create pdf
pdf("plots of heart patients.pdf")
plot(x, type = "b" , col= "red" , xlab= "rowno" , ylab="chol", main= "heart details")
plot(x,type ="l" , col="blue", xlab="row",ylab="y axis", main= "chest pain")
pie(x,lables, main="oldpeak in heart disease" , col= rainbow(length(x)))
pie(x2,heartdisease, main="fbs in heart disease", col=rainbow(length(x2)))
boxplot(age~cp, data= data1, xlab="age", ylab="cp" , main="details of heart attack patients", col="purple")
boxplot(slp~caa, data = data1, xlab="slp",ylab="caa", main="details of heart patients", col="blue")
barplot(u, names.arg= z, xlab="no of age", ylab="cp", main="details of heart attack patients", col = "yellow")
barplot(g, names.arg=h, xlab="exng", ylab="restecg", main="details of heart patients", col="purple")
hist(data1$chol, xlab="dd",ylab="jdj", main="histogram")
plot(x=data1$slp, y=data1$caa, xlab="slp", ylab="caa", main ="xyz")
dev.off()



