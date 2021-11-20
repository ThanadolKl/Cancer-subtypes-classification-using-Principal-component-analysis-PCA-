# Code description

## Homework I

```
install.packages("tidyr")
library(tidyr)
library(dplyr)

exp <- read.csv('expression.csv', header = T)
exp
plot(exp$gene1, exp$gene2, col = 'red')

color <- c( rep('purple', 20), rep('Green', 20), rep('blue', 20) )

plot(exp$gene1, exp$gene2, col = color, pch = 20)

pca <- princomp(exp[, 3:15])
str(pca)
pca$scores 
plot(pca$score[, 1], pca$scores[, 2], col = color, pch = 20, xlab = 'PC1', ylab = 'PC2')
pca_W <- pca$loadings
pca_W[1:13,1:2]
```

---

## Homework II


```
new_data <- read.csv('new_patient.csv')

G <-unlist(new_data,use.names = FALSE)
W <- pca_W[1:13]
Y1 <- sum(G*W)
Z <- pca_W[14:26]
Y2 <- sum(G*Z)

```

> Transform list of new data (new patient) to Vector G  and assign weight of PC1 by calling pca_w (index = 1:13)

> Calculate Y1 (PC1) by calculating Y1 = W1xG1 + W2xG2 + W3xG3 + ... + W13xG13. So, use multiplication of 2 vectors operation and sum of new vector (G * W) 

> Calculate Y2 (PC2) by calculating Y2 = Z1xG1 + Z2xG2 + Z3xG3 + ... + Z13xG13. So, use multiplication of 2 vectors operation and sum of new vector (G * Z)


## Plot the new patient’s transformed scores on PC1 and PC2

```

plot(pca$score[, 1], pca$scores[, 2], col = color, pch = 20, xlab = 'PC1', ylab = 'PC2', main = 'PC1 vs PC2 (with new patient) ')
points(Y1, Y2, col = 'red', pch = 17, cex = 1.3)
legend(-4.4, -2.2, legend=c("Subtype A", "Subtype B", "Subtype C", "New patient"),
       col=c("purple", "Green", "blue", "red"), cex=0.75, pch=c(20,20,20,17))

```
