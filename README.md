Author: Puneet Singla
---------------------

**This README.md is generated from README.Rmd**

Data source
-----------

Human Activity Recognition Using Smartphones Dataset. Version 1.0

This submission includes following R scripts
--------------------------------------------

### 1. run\_analysis.R

The purpose of this R script is to consolidate Test & Training datasets.
Following steps are involved

-   Step 1: Merge the training and test sets to create consolidated
    datasets
-   Step 2: Appropriately label all fields
-   Step 3: Associate all observations with their respective subjects
    and activity labels
-   Step 4: Subset the dataset to required fields
-   Step 5: Create the final independent tidy dataset

For more details on variables, refer to codebook.Rmd

Data Outputs
------------

1.tidy\_dataset.txt: A tidy data set representing average of Mean &
Standard deviation features of each variable for each activity and each
subject.

References:
-----------

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012.

Link to the full dataset -
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>
