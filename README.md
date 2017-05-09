---
title: "README.md"
output: html_document
---
##Getting and Cleaning Data - Course Project

The purpose of this README file is to described the sequence of steps taken by the `run_analysis.R` archive, in the treatment of the raw data to have as a result the tidy data contented in the `tidy.txt`file. 

On this sense, the R script, run_analysis, does the following:

1. Download the raw dataset if it does not already exist in your working directory.
2. Load both the train and test dataset in the current environment.
3. Extracts the data set which contain the mean and the standard deviation, and assing the names for this variables from the `features.txt`file.
4. Load the identifiers(subject and activity variables), and create new dataset with the identifiers included.
5. Merge both train and test dataset to establish a tidy dataset.
6. The last step creates a new dataset with the mean of the data with the same identifiers and measurement variable, obtaining as a result the mean dataset.
