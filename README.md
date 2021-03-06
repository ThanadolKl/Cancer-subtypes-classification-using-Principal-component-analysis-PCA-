# Cancer subtypes prediction using-Principal component analysis (PCA)
## Author: "Thanadol Klainin 6S No.8 "
## Date: "22/10/2021"
## ESC 782 DSS 

# Homework I : Apply principle component analysis to the dataset.

## Report the loadings (weights) of principle component 1 (PC1) and 2 (PC2).

```
Loadings:
> pca_W[1:13,1:2]
            Comp.1      Comp.2
gene1   0.24509252  0.15929799
gene2  -0.07677245  0.47718604
gene3  -0.25011449  0.33983573
gene4   0.24584694  0.40935077
gene5  -0.05118737  0.48594855
gene6   0.18946114  0.21013666
gene7  -0.14215444  0.02537374
gene8  -0.37619508  0.04796248
gene9  -0.40909223  0.04085372
gene10 -0.34880323  0.03945311
gene11 -0.29126688 -0.31505288
gene12 -0.36429767 -0.04509875
gene13 -0.32283439  0.27585473
```

## Plot the 60 patients’ transformed scores on PC1 and PC2.

![PCA_60](https://user-images.githubusercontent.com/67301601/142720540-8cac4fb0-58c6-43b5-88d7-8d9f7a4d2b05.png)

---

# Homework II : Predict cancer subtypes of the new patients

## Report the transformed scores on PC1 (Y1) and PC2 (Y2) of the new patient.

| Y1 (PC1) | Y2 (PC2) |
|----------|----------|
|0.1278733 | -2.386158|

## Plot the new patient’s transformed scores on PC1 and PC2 (plot Y1 versus Y2) together with those of the 60 patients.

![PCA_61](https://user-images.githubusercontent.com/67301601/142720812-7526287d-0b0f-4d38-935d-13fd48d58ea5.png)

## Based on the plot, can you predict which cancer subtype the new patient is?

> จากการดูพิกัดของ new data ที่ plot ลงบนกราฟเดิมแล้ว พบว่า ข้อมูลผู้ป่วยใหม่อยู่ในบริเวณกลุ่มของผู้ป่วยที่เป็น subtype B จึงทำนายว่าข้อมูล expression ของผู้ป่วยคนใหม่ มีความน่าจะเป็นที่จะอยู่ใน subtype B มากที่สุด 





