# Supervised Learning 
 This is a simple classifier that identify different type of Glass based on data from UCI Machine Learning Repository (a dataset consists of percentage of all chemical elements involved in glass)


## Learning Result 
```shell

Confusion Matrix and Statistics

          Reference
Prediction  1  2  3  5  6  7
         1 11  0  0  0  0  0
         2  0 10  0  0  0  0
         3  0  0  2  1  0  0
         5  0  0  0  1  0  0
         6  0  0  0  0  3  0
         7  0  0  0  0  0  2

Overall Statistics
                                          
               Accuracy : 0.9667          
                 95% CI : (0.8278, 0.9992)
    No Information Rate : 0.3667          
    P-Value [Acc > NIR] : 4.476e-12       
                                          
                  Kappa : 0.9544          
 Mcnemar's Test P-Value : NA              

Statistics by Class:

                     Class: 1 Class: 2 Class: 3 Class: 5 Class: 6 Class: 7
Sensitivity            1.0000   1.0000  1.00000  0.50000      1.0  1.00000
Specificity            1.0000   1.0000  0.96429  1.00000      1.0  1.00000
Pos Pred Value         1.0000   1.0000  0.66667  1.00000      1.0  1.00000
Neg Pred Value         1.0000   1.0000  1.00000  0.96552      1.0  1.00000
Prevalence             0.3667   0.3333  0.06667  0.06667      0.1  0.06667
Detection Rate         0.3667   0.3333  0.06667  0.03333      0.1  0.06667
Detection Prevalence   0.3667   0.3333  0.10000  0.03333      0.1  0.06667
Balanced Accuracy      1.0000   1.0000  0.98214  0.75000      1.0  1.00000
> 
```



