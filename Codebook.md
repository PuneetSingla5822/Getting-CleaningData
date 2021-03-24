Author: Puneet Singla
---------------------

**This codebook.md is generated from Codebook.Rmd**

This submission includes following R scripts
--------------------------------------------

### 1. run\_analysis.R

The purpose of this R script is to consolidate Test & Training datasets.
Following variables & transformations are involved

-   fldrnm\_test: Folder location of test files
-   fldrnm\_train: Folder location of training files
-   flnm\_test: List of all test files
-   flnm\_train: List of all training files
-   obj\_all: List of all R objects to store consolidated Test &
    Training data
-   subject: Subject id for each observation
-   ftre\_lbl: Variable names for each of the feature vector
-   actv\_lbl: Activity labels
-   y\_actv\_lbl: Each observation with their activity labels
-   X: Matrix of all observations with their feature vectors
-   X\_mean\_std: Subset of X. Feature variables limited to Mean and
    Standard Deviation
-   X\_mean\_std\_grp\_by: X\_mean\_std variables converted to data
    frame with declared group by at Subject & Activity level
-   X\_avg\_mean\_std: Tidy dataset with average of all variables in
    X\_mean\_std aggregated at Subject & Activity level

Data Outputs
------------

1.tidy\_dataset.txt: A tidy data set representing average of Mean &
Standard deviation features of each variable for each activity and each
subject. This file is created from variable - X\_avg\_mean\_std

### Data Dictionary: tidy\_dataset

sbj\_id: Identifies the subject who performed the activity for each
window sample.

Unique Values:

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    ## [26] 26 27 28 29 30

actv\_nm: Activity name

Unique Values:

    ## [1] WALKING_DOWNSTAIRS WALKING_UPSTAIRS   WALKING            SITTING           
    ## [5] STANDING           LAYING            
    ## 6 Levels: LAYING SITTING STANDING WALKING ... WALKING_UPSTAIRS

Metrics:

    ## [1] "avg_tBodyAcc-mean()-X:0.265 - 0.282"
    ## [1] "avg_tBodyAcc-mean()-Y:-0.023 - -0.014"
    ## [1] "avg_tBodyAcc-mean()-Z:-0.118 - -0.095"
    ## [1] "avg_tGravityAcc-mean()-X:0.475 - 0.952"
    ## [1] "avg_tGravityAcc-mean()-Y:-0.33 - 0.175"
    ## [1] "avg_tGravityAcc-mean()-Z:-0.161 - 0.277"
    ## [1] "avg_tBodyAccJerk-mean()-X:0.063 - 0.104"
    ## [1] "avg_tBodyAccJerk-mean()-Y:-0.002 - 0.024"
    ## [1] "avg_tBodyAccJerk-mean()-Z:-0.026 - 0.018"
    ## [1] "avg_tBodyGyro-mean()-X:-0.07 - 0.045"
    ## [1] "avg_tBodyGyro-mean()-Y:-0.124 - -0.047"
    ## [1] "avg_tBodyGyro-mean()-Z:0.054 - 0.112"
    ## [1] "avg_tBodyGyroJerk-mean()-X:-0.121 - -0.073"
    ## [1] "avg_tBodyGyroJerk-mean()-Y:-0.07 - -0.035"
    ## [1] "avg_tBodyGyroJerk-mean()-Z:-0.062 - -0.017"
    ## [1] "avg_tBodyAccMag-mean():-0.686 - -0.014"
    ## [1] "avg_tGravityAccMag-mean():-0.686 - -0.014"
    ## [1] "avg_tBodyAccJerkMag-mean():-0.83 - -0.22"
    ## [1] "avg_tBodyGyroMag-mean():-0.765 - -0.092"
    ## [1] "avg_tBodyGyroJerkMag-mean():-0.882 - -0.406"
    ## [1] "avg_fBodyAcc-mean()-X:-0.81 - -0.114"
    ## [1] "avg_fBodyAcc-mean()-Y:-0.718 - -0.074"
    ## [1] "avg_fBodyAcc-mean()-Z:-0.778 - -0.296"
    ## [1] "avg_fBodyAccJerk-mean()-X:-0.851 - -0.185"
    ## [1] "avg_fBodyAccJerk-mean()-Y:-0.792 - -0.228"
    ## [1] "avg_fBodyAccJerk-mean()-Z:-0.877 - -0.434"
    ## [1] "avg_fBodyGyro-mean()-X:-0.824 - -0.309"
    ## [1] "avg_fBodyGyro-mean()-Y:-0.856 - -0.186"
    ## [1] "avg_fBodyGyro-mean()-Z:-0.811 - -0.179"
    ## [1] "avg_fBodyAccMag-mean():-0.756 - -0.068"
    ## [1] "avg_fBodyBodyAccJerkMag-mean():-0.828 - -0.12"
    ## [1] "avg_fBodyBodyGyroMag-mean():-0.831 - -0.248"
    ## [1] "avg_fBodyBodyGyroJerkMag-mean():-0.905 - -0.436"
    ## [1] "avg_tBodyAcc-std()-X:-0.787 - -0.104"
    ## [1] "avg_tBodyAcc-std()-Y:-0.699 - -0.01"
    ## [1] "avg_tBodyAcc-std()-Z:-0.739 - -0.117"
    ## [1] "avg_tGravityAcc-std()-X:-0.98 - -0.941"
    ## [1] "avg_tGravityAcc-std()-Y:-0.973 - -0.893"
    ## [1] "avg_tGravityAcc-std()-Z:-0.959 - -0.874"
    ## [1] "avg_tBodyAccJerk-std()-X:-0.845 - -0.156"
    ## [1] "avg_tBodyAccJerk-std()-Y:-0.778 - -0.2"
    ## [1] "avg_tBodyAccJerk-std()-Z:-0.886 - -0.476"
    ## [1] "avg_tBodyGyro-std()-X:-0.841 - -0.352"
    ## [1] "avg_tBodyGyro-std()-Y:-0.812 - -0.072"
    ## [1] "avg_tBodyGyro-std()-Z:-0.804 - -0.264"
    ## [1] "avg_tBodyGyroJerk-std()-X:-0.864 - -0.509"
    ## [1] "avg_tBodyGyroJerk-std()-Y:-0.924 - -0.389"
    ## [1] "avg_tBodyGyroJerk-std()-Z:-0.871 - -0.383"
    ## [1] "avg_tBodyAccMag-std():-0.735 - -0.102"
    ## [1] "avg_tGravityAccMag-std():-0.735 - -0.102"
    ## [1] "avg_tBodyAccJerkMag-std():-0.827 - -0.173"
    ## [1] "avg_tBodyGyroMag-std():-0.828 - -0.205"
    ## [1] "avg_tBodyGyroJerkMag-std():-0.902 - -0.462"
    ## [1] "avg_fBodyAcc-std()-X:-0.779 - -0.104"
    ## [1] "avg_fBodyAcc-std()-Y:-0.708 - -0.046"
    ## [1] "avg_fBodyAcc-std()-Z:-0.753 - -0.112"
    ## [1] "avg_fBodyAccJerk-std()-X:-0.852 - -0.202"
    ## [1] "avg_fBodyAccJerk-std()-Y:-0.778 - -0.225"
    ## [1] "avg_fBodyAccJerk-std()-Z:-0.894 - -0.516"
    ## [1] "avg_fBodyGyro-std()-X:-0.848 - -0.372"
    ## [1] "avg_fBodyGyro-std()-Y:-0.81 - -0.034"
    ## [1] "avg_fBodyGyro-std()-Z:-0.82 - -0.363"
    ## [1] "avg_fBodyAccMag-std():-0.773 - -0.264"
    ## [1] "avg_fBodyBodyAccJerkMag-std():-0.826 - -0.254"
    ## [1] "avg_fBodyBodyGyroMag-std():-0.858 - -0.325"
    ## [1] "avg_fBodyBodyGyroJerkMag-std():-0.905 - -0.538"
