---
title: "Codebook"
author: "b12goosa"
date: "8 de mayo de 2017"
output: html_document
---
##Getting and Cleaning Data Course Project

The purpose of this codebook is to summarizes the data resulting after the analysis, included in the archive `tidy.txt`.

##Tidy.txt content

The `tidy.txt` content is the result of the getting and cleaning data from the accelerometers from the Samsung Galaxy S smartphone, in the context where companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The dimensions of the data are 180 observations of 68 variables.

##Variables in Tidy data
###Identifiers

The first two columns of the data are the subject and the activity which subject developed while the data was collected. On this way:

- Subject: there 30 subjects in these study
- Activity: six differents activities were developed by subjects:
        1. Standing
        2. Sitting
        3. Laying
        4. Walking
        5. Walking downstairs
        6. Walking upstairs

### Measurement variables

There are a total of 66 measurement variables:

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-mean()
32. tBodyAccMag-std()
33. tGravityAccMag-mean()
34. tGravityAccMag-std()
35. tBodyAccJerkMag-mean()
36. tBodyAccJerkMag-std()
37. tBodyGyroMag-mean()
38. tBodyGyroMag-std()
39. tBodyGyroJerkMag-mean()
40. tBodyGyroJerkMag-std()
41. fBodyAcc-mean()-X
42. fBodyAcc-mean()-Y
43. fBodyAcc-mean()-Z
44. fBodyAcc-std()-X
45. fBodyAcc-std()-Y
46. fBodyAcc-std()-Z
47. fBodyAccJerk-mean()-X
48. fBodyAccJerk-mean()-Y
49. fBodyAccJerk-mean()-Z
50. fBodyAccJerk-std()-X
51. fBodyAccJerk-std()-Y
52. fBodyAccJerk-std()-Z
53. fBodyGyro-mean()-X
54. fBodyGyro-mean()-Y
55. fBodyGyro-mean()-Z
56. fBodyGyro-std()-X
57. fBodyGyro-std()-Y
58. fBodyGyro-std()-Z
59. fBodyAccMag-mean()
60. fBodyAccMag-std()
61. fBodyBodyAccJerkMag-mean()
62. fBodyBodyAccJerkMag-std()
63. fBodyBodyGyroMag-mean()
64. fBodyBodyGyroMag-std()
65. fBodyBodyGyroJerkMag-mean()
66. fBodyBodyGyroJerkMag-std()"

##Archives related to the tidy data
###Raw data used for the project

Here you can find the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Code analysis used for the project

In this repo you can find a `run_analysis.R` archive which contains the code analysis for the project. Thus, the `README.md` archive (also contained in this repo) explains the steps taken in the analysis.