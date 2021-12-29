library(tidyverse)
library(dplyr)
library(psych)
data <- read.csv("file:///C:/Project/Project/out_1.csv", TRUE,",")
class(data)
head(data)
names(data)
summary(data)
describe(data)
data1=data[order(-data$star),]
data1[1:10,]
data2 = data[order(-data$price),]
data2[1:10,]
library(ggplot2)
#plot1
ggplot(data,aes(x = name,y = price))+
  geom_bar(stat="identity", width=0.5, color="blue", fill = "green")+
  labs(title = "Biểu đồ phân bố giá của các sản phẩm")+
  xlab("Name")+ylab("Price")+
  theme(text = element_text(size = 4),
        axis.text.x = element_text(angle=50, hjust=1))
  
#plot2
ggplot(data,aes(x = name,y = star))+
  geom_bar(stat="identity", width=0.5,color = "dark green", fill = "red")+ 
  labs(title = "Biểu đồ phân bố điểm đánh giá của các sản phẩm")+
  xlab("Name")+ylab("Star")+
  theme(text = element_text(size = 5),
        axis.text.x = element_text(angle=50, hjust=1))
#plot3
ggplot(data,aes(x = name,y = rating))+
  geom_bar(stat="identity", width=0.5, color="green", fill = "yellow")+
  labs(title = "Biểu đồ phân bố số lượng đánh giá các sản phẩm của các sản phẩm")+
  xlab("Name")+ylab("Number of Review")+
  theme(text = element_text(size = 6),
        axis.text.x = element_text(angle=50, hjust=1))

#plot4
ggplot(data2[1:10,],aes(x = name,y = price))+
  geom_bar(stat="identity", width=0.5, color="green", fill = "blue")+
  labs(title = "Biểu đồ top 10 sản phẩm có giá cao nhất")+
  xlab("Name")+ylab("price")+
  theme(text = element_text(size = 6),
        axis.text.x = element_text(angle=50, hjust=1))
#plot5
ggplot(data1[1:10,],aes(x = name,y = star))+
  geom_bar(stat="identity", width=0.5, color="blue", fill = "orange")+
  labs(title = "Biểu đồ top 10 sản phẩm có điểm đánh giá cao nhất")+
  xlab("Name")+ylab("Star")+
  theme(text = element_text(size = 7),
        axis.text.x = element_text(angle=30, hjust=1))






