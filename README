# Cancer subtypes classification using-Principal component analysis (PCA)
## title:  Data Visualization (2) Homeworks 1-4 
## author: "Thanadol Klainin 6S No.8 "
## date: "8/14/2021"
## ESC 782 DSS 

# Homewoek I find mean of Sepal, Petal
> This is ``` code ``` You can run the R script file name "Thanadol_HW1"

```
### This R script was made by Thanadol Klainin 6S No.8
install.packages("gcookbook")
library("gcookbook")
dat <- iris
dat
Mean_value <- apply(dat[,1:4], 2, mean)
print(Mean_value)
bp <- barplot(Mean_value, ylim = c(0,6), main = 'Iris data', ylab = "centimeters")
text(bp, 0, round(Mean_value, 1),cex=1,pos=3) 
```
### Output 
> We get the mean value in each column

```
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 
```
>อันนี้แถมให้ครับ เอามา plot เป็น barplot ได้ดังนี้

![Meanplot](https://user-images.githubusercontent.com/67301601/129450171-e7e6ad25-b4b5-46d0-b2f8-52425b4db45c.png)

---

# Homework II 
>ให้นักเรียน plot แสดงความยาว sepal length ของ iris แต่ละสายพันธ์ุในกราฟเดียวกัน ให้นักเรียน plot แสดงความยาว petal length ของ iris แต่ละสายพันธุ์ในกราฟเดียวกัน

## Solution I

> ผมใช้การ Plot ระหว่าง sepal length and width ของแต่ละสายพันธ์ เพื่อทำการ Clustering ได้ 
> This is ``` code ``` You can run the R script file name "Thanadol_HW2"

```
## This R script file was made by Thanadol Klainin
install.packages("tidyr")
library(tidyr)
library(dplyr)
dat <- iris
dat
setosa <-filter(dat, Species == "setosa") 
versicolor<-filter(dat, Species == "versicolor")
virginica<-filter(dat, Species == "virginica")
plot(setosa$Sepal.Length, setosa$Sepal.Width, pch = 16, xlim = c(3,8))
points(versicolor$Sepal.Length, versicolor$Sepal.Width, pch =16, col = 'red')
points(virginica$Sepal.Length, virginica$Sepal.Width, pch =16, col = 'blue')
#plot(virginica$Sepal.Length, virginica$Sepal.Width, pch =16, col = 'blue')

plot(setosa$Petal.Length, setosa$Petal.Width, pch = 16, xlim = c(1,7), ylim = c(0,))
points(versicolor$Petal.Length, versicolor$Petal.Width, pch =16, col = 'red')
points(virginica$Petal.Length, virginica$Petal.Width, pch =16, col = 'blue')
