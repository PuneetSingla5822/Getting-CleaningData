## Assignment: Getting and Cleaning Data Course Project
## Author: Puneet Singla
## Problem Statement: Prepare a tidy dataset

## This R script has one function: run_analysis
## Step 1: Merge the training and test sets to create consolidated datasets
## Step 2: Appropriately label all fields
## Step 3: Associate all observations with their respective subjects and activity labels
## Step 4: Subset the dataset to required fields
## Step 5: Create the final independent tidy dataset

run_analysis <- function() {
  
  ## Load dplyr and tidyr libraries
  library(dplyr)
  library(tidyr)
  
  ## Declare location of test & training files
  fldrnm_test <- c("UCI_HAR_Dataset/test")
  fldrnm_train <- c("UCI_HAR_Dataset/train")
  
  ## List all test & training files to process
  flnm_test <- list.files(paste0(fldrnm_test))
  flnm_train <- list.files(paste0(fldrnm_train))
  
  ## Objects to store consolidated datesets, derived from the file names
  obj_all <- gsub("_test.txt","",flnm_test)
  
  ## Read test & train files in sequence and combine them
  for(i in 1:length(flnm_test)) {
    tmp_test <- read.table(paste0(fldrnm_test,"/",flnm_test[i]))
    tmp_train <- read.table(paste0(fldrnm_train,"/",flnm_train[i]))
    assign(obj_all[i], rbind(tmp_test,tmp_train))
    rm("tmp_test")
    rm("tmp_train")
  }
  
  ## Assign names to Subject file
  names(subject) <- c("sbj_id")
  
  ## Read features labels and assign names to features dataset
  ftre_lbl <- read.table("UCI_HAR_Dataset/features.txt")
  names(X) <- ftre_lbl[,2]
  
  ## Read activity labels and merge with the activity ids. Assign labels to the dataset
  actv_lbl <- read.table("UCI_HAR_Dataset/activity_labels.txt")
  y_actv_lbl <- merge(y,actv_lbl,by.x = "V1", by.y = "V1")
  names(y_actv_lbl) <- c("actv_id","actv_nm")
  
  ## Overwrite X to include Subject ID and activity labels
  X <- cbind(subject,y_actv_lbl,X)
  
  ## Subset X to contain only Mean & Standard deviation metrics
  X_mean_std <- select(X, sbj_id, actv_nm, contains(c("mean","std"), ignore.case = TRUE))
  
  ## Independent tidy dataset with average of each variable for each activity and each subject 
  X_mean_std_grp_by <- tbl_df(X_mean_std) %>% group_by(sbj_id, actv_nm)
  X_avg_mean_std <- summarize_all(X_mean_std_grp_by, mean)
  
  ## Rename fields of the tidy datasets to reflect calculation
  for(i in 3:dim(X_avg_mean_std)[2]) {names(X_avg_mean_std)[i] <- paste0("avg_",names(X_avg_mean_std)[i])}
  
  ## Write the tidy dataset to a file
  write.table(X_avg_mean_std, "tidy_dataset.txt",row.names = FALSE, append = FALSE)
  X_avg_mean_std
}