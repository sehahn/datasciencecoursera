---
title: "CodeBook"
author: "Susan Hahn"
date: "Wednesday, January 21, 2015"
output:
  html_document:
    keep_md: yes
    toc: yes
---

This codebook describes both final\_test\_train\_data and final\_test\_train\_avgs.  Please, scroll down to line 599 for the second file.   

####File1:				
final\_test\_train\_data  
Created using run_analysis.R  
See README.md for a description of the data processing involved in creating this file.  

####Input:
[Human Activity Recognition Using Smartphones Dataset:   activity_labels.txt, features.txt, subject_test.txt, subject_train.txt, x_test, x_train, y_test, and y_train]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Variables from the original dataset retained in the new dataset had their names modified to remove parentheses and replace hyphens with periods.

####File Structure:  
10299 obs. of  69 variables, tab-delimited, first row variable names, no row labels

####Variable descriptions:

**1. ActivityName:**  
Activities tracked in study   
Factor w/ 6 levels:  
- “WALKING”  
- “WALKING UPSTAIRS”  
- “WALKING DOWNSTAIRS”  
- “SITTING”  
- “STANDING”  
- “LAYING”  

 **2. SubjectNum**  
ID for volunteer subjects who performed activities monitored by a Samsung Galaxy S II worn at the waist  
Integer  
- 1:30  

**3. tBodyAcc.mean.X**  
Numeric  
Time domain signal; accelerometer:  body acceleration; mean; axial signal in the X direction;  

**4. tBodyAcc.mean.Y**    
Numeric  
Time domain signal;  accelerometer:  body acceleration; mean; axial signal in the Y direction;   
  
**5. tBodyAcc.mean.Z**    
Numeric  
Time domain signal;  accelerometer:  body acceleration; mean; axial signal in the Z direction;
  
**6. tBodyAcc.std.X**    
Numeric  
Time domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the X direction;

**7. tBodyAcc.std.Y**  
Numeric  
Time domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the Y direction;

**8. tBodyAcc.std.Z**  
Numeric  
Time domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the Z direction;

**9. tGravityAcc.mean.X**  
Numeric  
Time domain signal; accelerometer:  gravity acceleration; mean; axial signal in the X direction;

**10. tGravityAcc.mean.Y**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration; mean; axial signal in the Y direction; 

**11. tGravityAcc.mean.Z**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration; mean; axial signal in the Z direction;

**12. tGravityAcc.std.X**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration; standard deviation; axial signal in the X direction;

**13. tGravityAcc.std.Y**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration; standard deviation; axial signal in the Y direction;

**14. tGravityAcc.std.Z**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration; standard deviation; axial signal in the Z direction;

**15. tBodyAccJerk.mean.X**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the X direction;

**16. tBodyAccJerk.mean.Y**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the Y direction;

**17. tBodyAccJerk.mean.Z**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the Z direction;

**18. tBodyAccJerk.std.X**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the X direction;

**19. tBodyAccJerk.std.Y**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the Y direction;

**20. tBodyAccJerk.std.Z**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the Z direction;

**21. tBodyGyro.mean.X**  
Numeric  
Time domain signal; gyroscope:  angular velocity; mean; axial signal in the X direction;

**22. tBodyGyro.mean.Y**  
Numeric  
Time domain signal;  gyroscope:  angular velocity; mean; axial signal in the Y direction;

**23. tBodyGyro.mean.Z**  
Numeric  
Time domain signal;  gyroscope:  angular velocity; mean; axial signal in the Z direction;

**24. tBodyGyro.std.X**  
Numeric  
Time domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the X direction;

**25. tBodyGyro.std.Y**  
Numeric  
Time domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the Y direction;

**26. tBodyGyro.std.Z**  
Numeric  
Time domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the Z direction;

**27. tBodyGyroJerk.mean.X**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; mean; axial signal in the X direction;

**28. tBodyGyroJerk.mean.Y**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; mean; axial signal in the Y direction;

**29. tBodyGyroJerk.mean.Z**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; mean; axial signal in the Z direction;

**30. tBodyGyroJerk.std.X**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; standard deviation; axial signal in the X direction;

**31. tBodyGyroJerk.std.Y**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; standard deviation; axial signal in the Y direction;

**32. tBodyGyroJerk.std.Z**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk; standard deviation; axial signal in the Z direction;

**33. tBodyAccMag.mean**  
Numeric  
Time domain signal;  accelerometer:  body acceleration magnitude; mean; 

**34. tBodyAccMag.std**  
Numeric  
Time domain signal;  accelerometer:  body acceleration magnitude; standard deviation; 

**35. tGravityAccMag.mean**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration magnitude; mean; 

**36. tGravityAccMag.std**  
Numeric  
Time domain signal;  accelerometer:  gravity acceleration magnitude; standard deviation; 

**37. tBodyAccJerkMag.mean**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk magnitude; mean; 

**38. tBodyAccJerkMag.std**  
Numeric  
Time domain signal;  accelerometer:  body acceleration jerk magnitude; standard deviation; 

**39. tBodyGyroMag.mean**  
Numeric  
Time domain signal;  gyroscope:  angular velocity magnitude; mean;

**40. tBodyGyroMag.std**  
Numeric  
Time domain signal;  gyroscope:  angular velocity magnitude; standard deviation; 


**41. tBodyGyroJerkMag.mean**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk magnitude; mean; 

**42. tBodyGyroJerkMag.std**  
Numeric  
Time domain signal;  gyroscope:  angular velocity jerk magnitude; standard deviation; 

**43. fBodyAcc.mean.X**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; mean; axial signal in the X direction;

**44. fBodyAcc.mean.Y**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; mean; axial signal in the Y direction;

**45. fBodyAcc.mean.Z**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; mean; axial signal in the Z direction;

**46. fBodyAcc.std.X**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the X direction;

**47. fBodyAcc.std.Y**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the Y direction;

**48. fBodyAcc.std.Z**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration; standard deviation; axial signal in the Z direction;

**49. fBodyAccJerk.mean.X**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the X direction;

**50. fBodyAccJerk.mean.Y**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the Y direction;

**51. fBodyAccJerk.mean.Z**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; mean; axial signal in the Z direction;

**52. fBodyAccJerk.std.X**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the X direction;

**53. fBodyAccJerk.std.Y**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the Y direction;

**54. fBodyAccJerk.std.Z**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk; standard deviation; axial signal in the Z direction;

**55. fBodyGyro.mean.X**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; mean; axial signal in the X direction;

**56. fBodyGyro.mean.Y**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; mean; axial signal in the Y direction;

**57. fBodyGyro.mean.Z**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; mean; axial signal in the Z direction;

**58. fBodyGyro.std.X**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the X direction;

**59. fBodyGyro.std.Y**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the Y direction;

**60. fBodyGyro.std.Z**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity; standard deviation; axial signal in the Z direction;

**61. fBodyAccMag.mean**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration magnitude; mean; 

**62. fBodyBodyAccMag.std**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration magnitude; standard deviation; 

**63. fBodyAccJerkMag.mean**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk magnitude; mean; 

**64. fBodyBodyAccJerkMag.std**  
Numeric  
Frequency domain signal;  accelerometer:  body acceleration jerk magnitude; standard deviation; 

**65. fBodyBodyGyroMag.mean**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity magnitude; mean; 

**66. fBodyBodyGyroMag.std**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity magnitude; standard deviation; 

**67. fBodyBodyGyroJerkMag.mean**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity jerk magnitude; mean; 

**68. fBodyBodyGyroJerkMag.std**  
Numeric  
Frequency domain signal;  gyroscope:  angular velocity jerk magnitude; standard deviation; 

**69. SourceFile**  
Input file source of observation  
Factor w/ 2 levels     
- "test"  
- "train"  

For more information on the derivation of the 66 measurement variables contained in this file, see features_info.txt and README.txt included in the Human Activity Recognition Using Smartphones Dataset.  

####File Summary:  

```  
    summary(read.table("./final_test_train_data.txt", sep="\t", header=TRUE))  

            ActivityName    SubjectNum   
 LAYING            :1944   Min.   : 1.00  
 SITTING           :1777   1st Qu.: 9.00  
 STANDING          :1906   Median :17.00  
 WALKING           :1722   Mean   :16.15  
 WALKING_DOWNSTAIRS:1406   3rd Qu.:24.00  
 WALKING_UPSTAIRS  :1544   Max.   :30.00  

tBodyAcc.mean.X   tBodyAcc.mean.Y   
 Min.   :-1.0000   Min.   :-1.00000  
 1st Qu.: 0.2626   1st Qu.:-0.02490  
 Median : 0.2772   Median :-0.01716  
 Mean   : 0.2743   Mean   :-0.01774  
 3rd Qu.: 0.2884   3rd Qu.:-0.01062  
 Max.   : 1.0000   Max.   : 1.00000  

tBodyAcc.mean.Z    tBodyAcc.std.X   
 Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.:-0.12102   1st Qu.:-0.9924  
 Median :-0.10860   Median :-0.9430  
 Mean   :-0.10892   Mean   :-0.6078  
 3rd Qu.:-0.09759   3rd Qu.:-0.2503  
 Max.   : 1.00000   Max.   : 1.0000  

tBodyAcc.std.Y     tBodyAcc.std.Z   
 Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.:-0.97699   1st Qu.:-0.9791  
 Median :-0.83503   Median :-0.8508  
 Mean   :-0.51019   Mean   :-0.6131  
 3rd Qu.:-0.05734   3rd Qu.:-0.2787  
 Max.   : 1.00000   Max.   : 1.0000  

tGravityAcc.mean.X tGravityAcc.mean.Y 
 Min.   :-1.0000    Min.   :-1.000000  
 1st Qu.: 0.8117    1st Qu.:-0.242943  
 Median : 0.9218    Median :-0.143551  
 Mean   : 0.6692    Mean   : 0.004039  
 3rd Qu.: 0.9547    3rd Qu.: 0.118905  
 Max.   : 1.0000    Max.   : 1.000000  

tGravityAcc.mean.Z tGravityAcc.std.X
 Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.:-0.11671   1st Qu.:-0.9949  
 Median : 0.03680   Median :-0.9819  
 Mean   : 0.09215   Mean   :-0.9652  
 3rd Qu.: 0.21621   3rd Qu.:-0.9615  
 Max.   : 1.00000   Max.   : 1.0000  

tGravityAcc.std.Y tGravityAcc.std.Z
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9913   1st Qu.:-0.9866  
 Median :-0.9759   Median :-0.9665  
 Mean   :-0.9544   Mean   :-0.9389  
 3rd Qu.:-0.9464   3rd Qu.:-0.9296  
 Max.   : 1.0000   Max.   : 1.0000  

tBodyAccJerk.mean.X tBodyAccJerk.mean.Y
 Min.   :-1.00000    Min.   :-1.000000  
 1st Qu.: 0.06298    1st Qu.:-0.018555  
 Median : 0.07597    Median : 0.010753  
 Mean   : 0.07894    Mean   : 0.007948  
 3rd Qu.: 0.09131    3rd Qu.: 0.033538  
 Max.   : 1.00000    Max.   : 1.000000  

tBodyAccJerk.mean.Z tBodyAccJerk.std.X
 Min.   :-1.000000   Min.   :-1.0000   
 1st Qu.:-0.031552   1st Qu.:-0.9913   
 Median :-0.001159   Median :-0.9513   
 Mean   :-0.004675   Mean   :-0.6398   
 3rd Qu.: 0.024578   3rd Qu.:-0.2912   
 Max.   : 1.000000   Max.   : 1.0000   

tBodyAccJerk.std.Y tBodyAccJerk.std.Z
 Min.   :-1.0000    Min.   :-1.0000   
 1st Qu.:-0.9850    1st Qu.:-0.9892   
 Median :-0.9250    Median :-0.9543   
 Mean   :-0.6080    Mean   :-0.7628   
 3rd Qu.:-0.2218    3rd Qu.:-0.5485   
 Max.   : 1.0000    Max.   : 1.0000   

tBodyGyro.mean.X   tBodyGyro.mean.Y  
 Min.   :-1.00000   Min.   :-1.00000  
 1st Qu.:-0.04579   1st Qu.:-0.10399  
 Median :-0.02776   Median :-0.07477  
 Mean   :-0.03098   Mean   :-0.07472  
 3rd Qu.:-0.01058   3rd Qu.:-0.05110  
 Max.   : 1.00000   Max.   : 1.00000  

tBodyGyro.mean.Z   tBodyGyro.std.X  
 Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.: 0.06485   1st Qu.:-0.9872  
 Median : 0.08626   Median :-0.9016  
 Mean   : 0.08836   Mean   :-0.7212  
 3rd Qu.: 0.11044   3rd Qu.:-0.4822  
 Max.   : 1.00000   Max.   : 1.0000  

tBodyGyro.std.Y   tBodyGyro.std.Z  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9819   1st Qu.:-0.9850  
 Median :-0.9106   Median :-0.8819  
 Mean   :-0.6827   Mean   :-0.6537  
 3rd Qu.:-0.4461   3rd Qu.:-0.3379  
 Max.   : 1.0000   Max.   : 1.0000  

tBodyGyroJerk.mean.X tBodyGyroJerk.mean.Y
 Min.   :-1.00000     Min.   :-1.00000    
 1st Qu.:-0.11723     1st Qu.:-0.05868    
 Median :-0.09824     Median :-0.04056    
 Mean   :-0.09671     Mean   :-0.04232    
 3rd Qu.:-0.07930     3rd Qu.:-0.02521    
 Max.   : 1.00000     Max.   : 1.00000    

tBodyGyroJerk.mean.Z tBodyGyroJerk.std.X
 Min.   :-1.00000     Min.   :-1.0000    
 1st Qu.:-0.07936     1st Qu.:-0.9907    
 Median :-0.05455     Median :-0.9348    
 Mean   :-0.05483     Mean   :-0.7313    
 3rd Qu.:-0.03168     3rd Qu.:-0.4865    
 Max.   : 1.00000     Max.   : 1.0000    

tBodyGyroJerk.std.Y tBodyGyroJerk.std.Z
 Min.   :-1.0000     Min.   :-1.0000    
 1st Qu.:-0.9922     1st Qu.:-0.9926    
 Median :-0.9548     Median :-0.9503    
 Mean   :-0.7861     Mean   :-0.7399    
 3rd Qu.:-0.6268     3rd Qu.:-0.5097    
 Max.   : 1.0000     Max.   : 1.0000    

tBodyAccMag.mean  tBodyAccMag.std  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9819   1st Qu.:-0.9822  
 Median :-0.8746   Median :-0.8437  
 Mean   :-0.5482   Mean   :-0.5912  
 3rd Qu.:-0.1201   3rd Qu.:-0.2423  
 Max.   : 1.0000   Max.   : 1.0000  

tGravityAccMag.mean tGravityAccMag.std
 Min.   :-1.0000     Min.   :-1.0000   
 1st Qu.:-0.9819     1st Qu.:-0.9822   
 Median :-0.8746     Median :-0.8437   
 Mean   :-0.5482     Mean   :-0.5912   
 3rd Qu.:-0.1201     3rd Qu.:-0.2423   
 Max.   : 1.0000     Max.   : 1.0000   

tBodyAccJerkMag.mean tBodyAccJerkMag.std
 Min.   :-1.0000      Min.   :-1.0000    
 1st Qu.:-0.9896      1st Qu.:-0.9907    
 Median :-0.9481      Median :-0.9288    
 Mean   :-0.6494      Mean   :-0.6278    
 3rd Qu.:-0.2956      3rd Qu.:-0.2733    
 Max.   : 1.0000      Max.   : 1.0000    

tBodyGyroMag.mean tBodyGyroMag.std 
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9781   1st Qu.:-0.9775  
 Median :-0.8223   Median :-0.8259  
 Mean   :-0.6052   Mean   :-0.6625  
 3rd Qu.:-0.2454   3rd Qu.:-0.3940  
 Max.   : 1.0000   Max.   : 1.0000  

tBodyGyroJerkMag.mean tBodyGyroJerkMag
.std
 Min.   :-1.0000       Min.   :-1.0000     
 1st Qu.:-0.9923       1st Qu.:-0.9922     
 Median :-0.9559       Median :-0.9403     
 Mean   :-0.7621       Mean   :-0.7780     
 3rd Qu.:-0.5499       3rd Qu.:-0.6093     
 Max.   : 1.0000       Max.   : 1.0000     

fBodyAcc.mean.X   fBodyAcc.mean.Y  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9913   1st Qu.:-0.9792  
 Median :-0.9456   Median :-0.8643  
 Mean   :-0.6228   Mean   :-0.5375  
 3rd Qu.:-0.2646   3rd Qu.:-0.1032  
 Max.   : 1.0000   Max.   : 1.0000  

fBodyAcc.mean.Z   fBodyAcc.std.X   
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9832   1st Qu.:-0.9929  
 Median :-0.8954   Median :-0.9416  
 Mean   :-0.6650   Mean   :-0.6034  
 3rd Qu.:-0.3662   3rd Qu.:-0.2493  
 Max.   : 1.0000   Max.   : 1.0000  

fBodyAcc.std.Y     fBodyAcc.std.Z   
 Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.:-0.97689   1st Qu.:-0.9780  
 Median :-0.83261   Median :-0.8398  
 Mean   :-0.52842   Mean   :-0.6179  
 3rd Qu.:-0.09216   3rd Qu.:-0.3023  
 Max.   : 1.00000   Max.   : 1.0000  

fBodyAccJerk.mean.X fBodyAccJerk.mean.Y
 Min.   :-1.0000     Min.   :-1.0000    
 1st Qu.:-0.9912     1st Qu.:-0.9848    
 Median :-0.9516     Median :-0.9257    
 Mean   :-0.6567     Mean   :-0.6290    
 3rd Qu.:-0.3270     3rd Qu.:-0.2638    
 Max.   : 1.0000     Max.   : 1.0000    

fBodyAccJerk.mean.Z fBodyAccJerk.std.X
 Min.   :-1.0000     Min.   :-1.0000   
 1st Qu.:-0.9873     1st Qu.:-0.9920   
 Median :-0.9475     Median :-0.9562   
 Mean   :-0.7436     Mean   :-0.6550   
 3rd Qu.:-0.5133     3rd Qu.:-0.3203   
 Max.   : 1.0000     Max.   : 1.0000   

fBodyAccJerk.std.Y fBodyAccJerk.std.Z
 Min.   :-1.0000    Min.   :-1.0000   
 1st Qu.:-0.9865    1st Qu.:-0.9895   
 Median :-0.9280    Median :-0.9590   
 Mean   :-0.6122    Mean   :-0.7809   
 3rd Qu.:-0.2361    3rd Qu.:-0.5903   
 Max.   : 1.0000    Max.   : 1.0000   

fBodyGyro.mean.X  fBodyGyro.mean.Y 
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9853   1st Qu.:-0.9847  
 Median :-0.8917   Median :-0.9197  
 Mean   :-0.6721   Mean   :-0.7062  
 3rd Qu.:-0.3837   3rd Qu.:-0.4735  
 Max.   : 1.0000   Max.   : 1.0000  

fBodyGyro.mean.Z  fBodyGyro.std.X  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9851   1st Qu.:-0.9881  
 Median :-0.8877   Median :-0.9053  
 Mean   :-0.6442   Mean   :-0.7386  
 3rd Qu.:-0.3225   3rd Qu.:-0.5225  
 Max.   : 1.0000   Max.   : 1.0000  

fBodyGyro.std.Y   fBodyGyro.std.Z  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9808   1st Qu.:-0.9862  
 Median :-0.9061   Median :-0.8915  
 Mean   :-0.6742   Mean   :-0.6904  
 3rd Qu.:-0.4385   3rd Qu.:-0.4168  
Max.   : 1.0000   Max.   : 1.0000  

fBodyAccMag.mean  fBodyAccMag.std  
 Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9847   1st Qu.:-0.9829  
 Median :-0.8755   Median :-0.8547  
 Mean   :-0.5860   Mean   :-0.6595  
 3rd Qu.:-0.2173   3rd Qu.:-0.3823  
 Max.   : 1.0000   Max.   : 1.0000  

fBodyBodyAccJerkMag.mean fBodyBodyAccJerkMag.std
 Min.   :-1.0000          Min.   :-1.0000        
 1st Qu.:-0.9898          1st Qu.:-0.9907        
 Median :-0.9290          Median :-0.9255        
 Mean   :-0.6208          Mean   :-0.6401        
 3rd Qu.:-0.2600          3rd Qu.:-0.3082        
 Max.   : 1.0000          Max.   : 1.0000        

fBodyBodyGyroMag.mean fBodyBodyGyroMag.std
 Min.   :-1.0000       Min.   :-1.0000     
 1st Qu.:-0.9825       1st Qu.:-0.9781     
 Median :-0.8756       Median :-0.8275     
 Mean   :-0.6974       Mean   :-0.7000     
 3rd Qu.:-0.4514       3rd Qu.:-0.4713     
 Max.   : 1.0000       Max.   : 1.0000     

fBodyBodyGyroJerkMag.mean fBodyBodyGyroJerkMag.std
 Min.   :-1.0000           Min.   :-1.0000         
 1st Qu.:-0.9921           1st Qu.:-0.9926         
 Median :-0.9453           Median :-0.9382         
 Mean   :-0.7798           Mean   :-0.7922         
 3rd Qu.:-0.6122           3rd Qu.:-0.6437         
 Max.   : 1.0000           Max.   : 1.0000         
 
 SourceFile  
 test :2947  
 train:7352
```
####File2:            		
final\_test\_train\_avgs  
Created using run_analysis.R  
See README.md for a description of the data processing involved in creating this file.  

####Input:
final\_test\_train\_data 

####File Structure:  
180 obs. of  68 variables, tab-delimited, first row variable names, no row labels

####Variable descriptions:
See variable descriptions from final\_test\_train\_data above.  This file contains averages of all measurement variables in that data file.  Averages were calculated using  

    means_by_Act_Sub <- aggregate(measurements, by=list(byData$ActivityName, byData$SubjectNum), FUN=mean, na.rm=TRUE)  

Variable names for calculated averages were modified by prefixing "Avg." to the original variable names.

####File Summary:

``` 
    summary(read.table("./final_test_train_avgs.txt", sep="\t", header=TRUE))

             ActivityName   SubjectNum   Avg.tBodyAcc.mean.X
 LAYING            :30    Min.   : 1.0   Min.   :0.2216     
 SITTING           :30    1st Qu.: 8.0   1st Qu.:0.2712     
 STANDING          :30    Median :15.5   Median :0.2770     
 WALKING           :30    Mean   :15.5   Mean   :0.2743     
 WALKING_DOWNSTAIRS:30    3rd Qu.:23.0   3rd Qu.:0.2800     
 WALKING_UPSTAIRS  :30    Max.   :30.0   Max.   :0.3015     
 
 Avg.tBodyAcc.mean.Y Avg.tBodyAcc.mean.Z Avg.tBodyAcc.std.X
 Min.   :-0.040514   Min.   :-0.15251    Min.   :-0.9961   
 1st Qu.:-0.020022   1st Qu.:-0.11207    1st Qu.:-0.9799   
 Median :-0.017262   Median :-0.10819    Median :-0.7526   
 Mean   :-0.017876   Mean   :-0.10916    Mean   :-0.5577   
 3rd Qu.:-0.014936   3rd Qu.:-0.10443    3rd Qu.:-0.1984   
 Max.   :-0.001308   Max.   :-0.07538    Max.   : 0.6269   
 
 Avg.tBodyAcc.std.Y Avg.tBodyAcc.std.Z Avg.tGravityAcc.mean.X
 Min.   :-0.99024   Min.   :-0.9877    Min.   :-0.6800       
 1st Qu.:-0.94205   1st Qu.:-0.9498    1st Qu.: 0.8376       
 Median :-0.50897   Median :-0.6518    Median : 0.9208       
 Mean   :-0.46046   Mean   :-0.5756    Mean   : 0.6975       
 3rd Qu.:-0.03077   3rd Qu.:-0.2306    3rd Qu.: 0.9425       
 Max.   : 0.61694   Max.   : 0.6090    Max.   : 0.9745       
 
 Avg.tGravityAcc.mean.Y Avg.tGravityAcc.mean.Z Avg.tGravityAcc.std.X
 Min.   :-0.47989       Min.   :-0.49509       Min.   :-0.9968      
 1st Qu.:-0.23319       1st Qu.:-0.11726       1st Qu.:-0.9825      
 Median :-0.12782       Median : 0.02384       Median :-0.9695      
 Mean   :-0.01621       Mean   : 0.07413       Mean   :-0.9638      
 3rd Qu.: 0.08773       3rd Qu.: 0.14946       3rd Qu.:-0.9509      
 Max.   : 0.95659       Max.   : 0.95787       Max.   :-0.8296      
 
 Avg.tGravityAcc.std.Y Avg.tGravityAcc.std.Z Avg.tBodyAccJerk.mean.X
 Min.   :-0.9942       Min.   :-0.9910       Min.   :0.04269        
 1st Qu.:-0.9711       1st Qu.:-0.9605       1st Qu.:0.07396        
 Median :-0.9590       Median :-0.9450       Median :0.07640        
 Mean   :-0.9524       Mean   :-0.9364       Mean   :0.07947        
 3rd Qu.:-0.9370       3rd Qu.:-0.9180       3rd Qu.:0.08330        
 Max.   :-0.6436       Max.   :-0.6102       Max.   :0.13019        
 
 Avg.tBodyAccJerk.mean.Y Avg.tBodyAccJerk.mean.Z
 Min.   :-0.0386872      Min.   :-0.067458      
 1st Qu.: 0.0004664      1st Qu.:-0.010601      
 Median : 0.0094698      Median :-0.003861      
 Mean   : 0.0075652      Mean   :-0.004953      
 3rd Qu.: 0.0134008      3rd Qu.: 0.001958      
 Max.   : 0.0568186      Max.   : 0.038053      
 
 Avg.tBodyAccJerk.std.X Avg.tBodyAccJerk.std.Y Avg.tBodyAccJerk.std.Z
 Min.   :-0.9946        Min.   :-0.9895        Min.   :-0.99329      
 1st Qu.:-0.9832        1st Qu.:-0.9724        1st Qu.:-0.98266      
 Median :-0.8104        Median :-0.7756        Median :-0.88366      
 Mean   :-0.5949        Mean   :-0.5654        Mean   :-0.73596      
 3rd Qu.:-0.2233        3rd Qu.:-0.1483        3rd Qu.:-0.51212      
 Max.   : 0.5443        Max.   : 0.3553        Max.   : 0.03102      
 
 Avg.tBodyGyro.mean.X Avg.tBodyGyro.mean.Y Avg.tBodyGyro.mean.Z
 Min.   :-0.20578     Min.   :-0.20421     Min.   :-0.07245    
 1st Qu.:-0.04712     1st Qu.:-0.08955     1st Qu.: 0.07475    
 Median :-0.02871     Median :-0.07318     Median : 0.08512    
 Mean   :-0.03244     Mean   :-0.07426     Mean   : 0.08744    
 3rd Qu.:-0.01676     3rd Qu.:-0.06113     3rd Qu.: 0.10177    
 Max.   : 0.19270     Max.   : 0.02747     Max.   : 0.17910    
 
 Avg.tBodyGyro.std.X Avg.tBodyGyro.std.Y Avg.tBodyGyro.std.Z
 Min.   :-0.9943     Min.   :-0.9942     Min.   :-0.9855    
 1st Qu.:-0.9735     1st Qu.:-0.9629     1st Qu.:-0.9609    
 Median :-0.7890     Median :-0.8017     Median :-0.8010    
 Mean   :-0.6916     Mean   :-0.6533     Mean   :-0.6164    
 3rd Qu.:-0.4414     3rd Qu.:-0.4196     3rd Qu.:-0.3106    
 Max.   : 0.2677     Max.   : 0.4765     Max.   : 0.5649    
 
 Avg.tBodyGyroJerk.mean.X Avg.tBodyGyroJerk.mean.Y
 Min.   :-0.15721         Min.   :-0.07681        
 1st Qu.:-0.10322         1st Qu.:-0.04552        
 Median :-0.09868         Median :-0.04112        
 Mean   :-0.09606         Mean   :-0.04269        
 3rd Qu.:-0.09110         3rd Qu.:-0.03842        
 Max.   :-0.02209         Max.   :-0.01320        
 
 Avg.tBodyGyroJerk.mean.Z Avg.tBodyGyroJerk.std.X
 Min.   :-0.092500        Min.   :-0.9965        
 1st Qu.:-0.061725        1st Qu.:-0.9800        
 Median :-0.053430        Median :-0.8396        
 Mean   :-0.054802        Mean   :-0.7036        
 3rd Qu.:-0.048985        3rd Qu.:-0.4629        
 Max.   :-0.006941        Max.   : 0.1791        
 
 Avg.tBodyGyroJerk.std.Y Avg.tBodyGyroJerk.std.Z Avg.tBodyAccMag.mean
 Min.   :-0.9971         Min.   :-0.9954         Min.   :-0.9865     
 1st Qu.:-0.9832         1st Qu.:-0.9848         1st Qu.:-0.9573     
 Median :-0.8942         Median :-0.8610         Median :-0.4829     
 Mean   :-0.7636         Mean   :-0.7096         Mean   :-0.4973     
 3rd Qu.:-0.5861         3rd Qu.:-0.4741         3rd Qu.:-0.0919     
 Max.   : 0.2959         Max.   : 0.1932         Max.   : 0.6446     
 
 Avg.tBodyAccMag.std Avg.tGravityAccMag.mean Avg.tGravityAccMag.std
 Min.   :-0.9865     Min.   :-0.9865         Min.   :-0.9865       
 1st Qu.:-0.9430     1st Qu.:-0.9573         1st Qu.:-0.9430       
 Median :-0.6074     Median :-0.4829         Median :-0.6074       
 Mean   :-0.5439     Mean   :-0.4973         Mean   :-0.5439       
 3rd Qu.:-0.2090     3rd Qu.:-0.0919         3rd Qu.:-0.2090       
 Max.   : 0.4284     Max.   : 0.6446         Max.   : 0.4284       
 
 Avg.tBodyAccJerkMag.mean Avg.tBodyAccJerkMag.std
 Min.   :-0.9928          Min.   :-0.9946        
 1st Qu.:-0.9807          1st Qu.:-0.9765        
 Median :-0.8168          Median :-0.8014        
 Mean   :-0.6079          Mean   :-0.5842        
 3rd Qu.:-0.2456          3rd Qu.:-0.2173        
 Max.   : 0.4345          Max.   : 0.4506        
 
 Avg.tBodyGyroMag.mean Avg.tBodyGyroMag.std Avg.tBodyGyroJerkMag.mean
 Min.   :-0.9807       Min.   :-0.9814      Min.   :-0.99732         
 1st Qu.:-0.9461       1st Qu.:-0.9476      1st Qu.:-0.98515         
 Median :-0.6551       Median :-0.7420      Median :-0.86479         
 Mean   :-0.5652       Mean   :-0.6304      Mean   :-0.73637         
 3rd Qu.:-0.2159       3rd Qu.:-0.3602      3rd Qu.:-0.51186         
 Max.   : 0.4180       Max.   : 0.3000      Max.   : 0.08758         
 
 Avg.tBodyGyroJerkMag.std Avg.fBodyAcc.mean.X Avg.fBodyAcc.mean.Y
 Min.   :-0.9977          Min.   :-0.9952     Min.   :-0.98903   
 1st Qu.:-0.9805          1st Qu.:-0.9787     1st Qu.:-0.95361   
 Median :-0.8809          Median :-0.7691     Median :-0.59498   
 Mean   :-0.7550          Mean   :-0.5758     Mean   :-0.48873   
 3rd Qu.:-0.5767          3rd Qu.:-0.2174     3rd Qu.:-0.06341   
 Max.   : 0.2502          Max.   : 0.5370     Max.   : 0.52419   
 
 Avg.fBodyAcc.mean.Z Avg.fBodyAcc.std.X Avg.fBodyAcc.std.Y
 Min.   :-0.9895     Min.   :-0.9966    Min.   :-0.99068  
 1st Qu.:-0.9619     1st Qu.:-0.9820    1st Qu.:-0.94042  
 Median :-0.7236     Median :-0.7470    Median :-0.51338  
 Mean   :-0.6297     Mean   :-0.5522    Mean   :-0.48148  
 3rd Qu.:-0.3183     3rd Qu.:-0.1966    3rd Qu.:-0.07913  
 Max.   : 0.2807     Max.   : 0.6585    Max.   : 0.56019  
 
 Avg.fBodyAcc.std.Z Avg.fBodyAccJerk.mean.X Avg.fBodyAccJerk.mean.Y
 Min.   :-0.9872    Min.   :-0.9946         Min.   :-0.9894        
 1st Qu.:-0.9459    1st Qu.:-0.9828         1st Qu.:-0.9725        
 Median :-0.6441    Median :-0.8126         Median :-0.7817        
 Mean   :-0.5824    Mean   :-0.6139         Mean   :-0.5882        
 3rd Qu.:-0.2655    3rd Qu.:-0.2820         3rd Qu.:-0.1963        
 Max.   : 0.6871    Max.   : 0.4743         Max.   : 0.2767        
 
 Avg.fBodyAccJerk.mean.Z Avg.fBodyAccJerk.std.X
 Min.   :-0.9920         Min.   :-0.9951       
 1st Qu.:-0.9796         1st Qu.:-0.9847       
 Median :-0.8707         Median :-0.8254       
 Mean   :-0.7144         Mean   :-0.6121       
 3rd Qu.:-0.4697         3rd Qu.:-0.2475       
 Max.   : 0.1578         Max.   : 0.4768       
 
 Avg.fBodyAccJerk.std.Y Avg.fBodyAccJerk.std.Z Avg.fBodyGyro.mean.X
 Min.   :-0.9905        Min.   :-0.993108      Min.   :-0.9931     
 1st Qu.:-0.9737        1st Qu.:-0.983747      1st Qu.:-0.9697     
 Median :-0.7852        Median :-0.895121      Median :-0.7300     
 Mean   :-0.5707        Mean   :-0.756489      Mean   :-0.6367     
 3rd Qu.:-0.1685        3rd Qu.:-0.543787      3rd Qu.:-0.3387     
 Max.   : 0.3498        Max.   :-0.006236      Max.   : 0.4750     
 
 Avg.fBodyGyro.mean.Y Avg.fBodyGyro.mean.Z Avg.fBodyGyro.std.X
 Min.   :-0.9940      Min.   :-0.9860      Min.   :-0.9947    
 1st Qu.:-0.9700      1st Qu.:-0.9624      1st Qu.:-0.9750    
 Median :-0.8141      Median :-0.7909      Median :-0.8086    
 Mean   :-0.6767      Mean   :-0.6044      Mean   :-0.7110    
 3rd Qu.:-0.4458      3rd Qu.:-0.2635      3rd Qu.:-0.4813    
 Max.   : 0.3288      Max.   : 0.4924      Max.   : 0.1966    
 
 Avg.fBodyGyro.std.Y Avg.fBodyGyro.std.Z Avg.fBodyAccMag.mean
 Min.   :-0.9944     Min.   :-0.9867     Min.   :-0.9868     
 1st Qu.:-0.9602     1st Qu.:-0.9643     1st Qu.:-0.9560     
 Median :-0.7964     Median :-0.8224     Median :-0.6703     
 Mean   :-0.6454     Mean   :-0.6577     Mean   :-0.5365     
 3rd Qu.:-0.4154     3rd Qu.:-0.3916     3rd Qu.:-0.1622     
 Max.   : 0.6462     Max.   : 0.5225     Max.   : 0.5866     
 
 Avg.fBodyAccMag.std Avg.fBodyBodyAccJerkMag.mean
 Min.   :-0.9876     Min.   :-0.9940             
 1st Qu.:-0.9452     1st Qu.:-0.9770             
 Median :-0.6513     Median :-0.7940             
 Mean   :-0.6210     Mean   :-0.5756             
 3rd Qu.:-0.3654     3rd Qu.:-0.1872             
 Max.   : 0.1787     Max.   : 0.5384             
 
 Avg.fBodyBodyAccJerkMag.std Avg.fBodyBodyGyroMag.mean
 Min.   :-0.9944             Min.   :-0.9865          
 1st Qu.:-0.9752             1st Qu.:-0.9616          
 Median :-0.8126             Median :-0.7657          
 Mean   :-0.5992             Mean   :-0.6671          
 3rd Qu.:-0.2668             3rd Qu.:-0.4087          
 Max.   : 0.3163             Max.   : 0.2040          
 
 Avg.fBodyBodyGyroMag.std Avg.fBodyBodyGyroJerkMag.mean
 Min.   :-0.9815          Min.   :-0.9976              
 1st Qu.:-0.9488          1st Qu.:-0.9813              
 Median :-0.7727          Median :-0.8779              
 Mean   :-0.6723          Mean   :-0.7564              
 3rd Qu.:-0.4277          3rd Qu.:-0.5831              
 Max.   : 0.2367          Max.   : 0.1466              
 
 Avg.fBodyBodyGyroJerkMag.std
 Min.   :-0.9976             
 1st Qu.:-0.9802             
 Median :-0.8941             
 Mean   :-0.7715             
 3rd Qu.:-0.6081             
 Max.   : 0.2878
```

