#install.packages("caret",repos = "http://cran.us.r-project.org")
library(caret)
library(ellipse)
library(e1071)


# set the path in the following line the actual address youa are working on 
setwd('/Users/fuzhang/Desktop/project/Supervised-Learning-')

# For loading from CSV file 
 dataset <- read.csv("glass_data.txt",header=FALSE)
 colnames(dataset) <- c("Id","Ri","Na","Mg","AI","Si","K","Ca","Ba","Fe","Type")

# Use your own validation data
#  vali <- read.csv("myData.txt",header=FALSE)
#  colnames(vali) <- c("Id","Ri","Na","Mg","AI","Si","K","Ca","Ba","Fe","Type")



# return the dimision of the data
#dim(dataset) 


# Creating validation and traning dataset
index <- createDataPartition(dataset$Type, p=0.85, list=FALSE)
#index <- createDataPartition(vali$Type, p=0.85, list=FALSE)

validation <- dataset[-index,]
dataset <- dataset[index,]

#DEBUG
#print(validation)

	
# split input and output
x <- dataset[,1:10]
y <- dataset[,11]




# Cross-Validation
trainStyle <- trainControl("cv",10)
metric <- "Accuracy"


# Train them with KNN and RF 

# k-Nearest Neighbors (kNN).
set.seed(7)
fit.knn <- train(as.factor(Type)~., data=dataset, method="knn", metric=metric, trControl=trainStyle)


# Random Forest (RF)
set.seed(7)
fit.rf <- train(as.factor(Type)~., data=dataset, method="rf", metric=metric, trControl=trainStyle)

prediction =predict(fit.knn,validation)





print(confusionMatrix(prediction, validation$Type))

print(densityplot(results))



echoBoxPlot <- function(x,y){


  par(mfrow=c(1,4))
    for(i in 1:4) {
    boxplot(x[,i], main=names(iris)[i])
  }


}



echoScatterplot <- function(x,y){

   print(featurePlot(x=x, y=y, plot="ellipse"))


}
