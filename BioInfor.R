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
pca$scores  ## use 2 comp

plot(pca$score[, 1], pca$scores[, 2], col = color, pch = 20, xlab = 'PC1', ylab = 'PC2')

pca_W <- pca$loadings
pca_W[1:13,1:2]

## PCA structures are the sequence of double (number) 139 element comp1(G1-G13), comp2(G1-G13),....comp13(G1,G13)
### Missing data == not significant data (!= NA)
 
## Hw2
### express new data (61) --> *weight plot to point in coordinate --> classify

new_data <- read.csv('new_patient.csv')

G <-unlist(new_data,use.names = FALSE)
W <- pca_W[1:13]
Y1 <- sum(G*W)
Z <- pca_W[14:26]
Y2 <- sum(G*Z)

plot(pca$score[, 1], pca$scores[, 2], col = color, pch = 20, xlab = 'PC1', ylab = 'PC2', main = 'PC1 vs PC2 (with new patient) ')
legend(-4.4, -2.2, legend=c("Subtype A", "Subtype B", "Subtype C"),
       col=c("purple", "Green", "blue"), cex=0.75, pch=c(20,20,20))


points(Y1, Y2, col = 'red', pch = 17, cex = 1.3)
legend(-4.4, -2.2, legend=c("Subtype A", "Subtype B", "Subtype C", "New patient"),
       col=c("purple", "Green", "blue", "red"), cex=0.75, pch=c(20,20,20,17),)



tab <- matrix(c(Y1, Y2), ncol=2, byrow=TRUE)
colnames(tab) <- c('Y1 (PC1)', 'Y2 (PC2)')
rownames(tab) <- c('transformed scores')
tab

# -----------------------------------------------
#### TEST #####
# type A id = 5

new_pat_a <- exp[15,]
test_a <- new_pat_a[, 3:15]
test_a

Y1_a <- sum(test_a*W) 
Y2_a <- sum(test_a*Z)
points(Y1_a, Y2_a, pch = 4, col = 'black', cex = 1.5)  


# type B id = 22

new_pat_b <- exp[39,3:15] ##change row to check 
Y1_b <- sum(new_pat_b*W)
Y2_b <- sum(new_pat_b*Z)
points(Y1_b, Y2_b, pch = 4, col = 'black', cex = 1.5)  


# type C id = 50

new_pat_c <- exp[60,3:15] ##change row to check 
Y1_c <- sum(new_pat_c*W)
Y2_c <- sum(new_pat_c*Z)
points(Y1_c, Y2_c, pch = 4, col = 'black', cex = 1.5)  

legend(2, -3, legend= 'Test Check',
       col= 'black', cex=0.75, pch= 4,)








  
  
  
  
  