#HELLO TO MY GETTING AND CLEAN DATA COURSE PROJECT

#These are the steps to be achieved. I have done it but not ordered.
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.

#download the files in your working directory
if(!file.exists("getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")){
        fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url = fileurl, destfile = "./getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")
        unzip("getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")
}
#packages to use
library("dplyr")
library("gsubfn") #needed packing for multiple substituting
library("reshape2")

#load both data set
#test set
test<-read.table("UCI HAR Dataset/test/X_test.txt",sep = "", colClasses = "numeric",
                 col.names = colnames)

#train set
train<-read.table("UCI HAR Dataset/train/X_train.txt",sep = "",colClasses = "numeric",
                  col.names = colnames)


#column names are the same for both dataset
colnames<-readLines("UCI HAR Dataset/features.txt")

#Extracting the columns with the "mean" and the "std"(and not with "meanFreq")
#(2. Extracts only the measurements on the mean and standard deviation for each measurement.)
#vector with T and F with the column to be extracted
snam<-grepl(pattern = "mean()|std()",colnames)-grepl(pattern = "meanFreq",colnames)
#numeric vector with column to be extracted from both dataset
snam2<-which(snam==1)
colnamesdat<-colnames[which(snam==1)]#used below for the merge data
#(3. Uses descriptive activity names to name the activities in the data set)


#Extracting the columns of test and train

test<-select(test,c(snam2))
train<-select(train,c(snam2))

#Adding row names of each dataset
#row names are different between both dataset. In addition, the need to be correlated with the
#activity level respectively.
#1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING
#lab is the variable for activity_labels.
lab<-c("walking","walking upstairs","walking downstairs","sitting","standing","laying")

#row names of test dataset 
rownamestest<-readLines("UCI HAR Dataset/test/y_test.txt")
rownamestest<-as.factor(gsubfn(".",list("1"=lab[1],"2"=lab[2],"3"=lab[3],"4"=lab[4],"5"=lab[5],"6"=lab[6]),rownamestest))
Activity<-rownamestest; test<-cbind(Activity,test)#insert row names as a activity column

#row names of train dataset
rownamestrain<-readLines("UCI HAR Dataset/train/y_train.txt")
rownamestrain<-as.factor(gsubfn(".",list("1"=lab[1],"2"=lab[2],"3"=lab[3],"4"=lab[4],"5"=lab[5],"6"=lab[6]),rownamestrain))
Activity<-rownamestrain; train<-cbind(Activity,train)#insert row names as a activity column

#rownames are introduced as a factor column below 
#because of row.names argument does not accept duplicated elements.

#Introduce subject in the data frame
subj<-read.table("UCI HAR Dataset/test/subject_test.txt")# train subjects
test<-cbind(subj,test)
subj<-read.table("UCI HAR Dataset/train/subject_train.txt")#test subjects
train<-cbind(subj,train)

#Merge the data(1. Merges the training and the test sets to create one data set.)
dat<-rbind(train,test)
colnames(dat)<-c("subject","activity",colnamesdat)#named the subject and activity column
#(3. Uses descriptive activity names to name the activities in the data set)
#(4. Appropriately labels the data set with descriptive variable names.)
dat$Subject<-as.factor(dat$subject)#subject column as a factor

str(dat)#show the tidy dataset

#The last step of the course project in the rscript is to create a new dataset as follow.
#(5.From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.)
datmelt<-melt(dat,id = c("subject","activity"),measure.vars = colnamesdat)
datmean<-dcast(datmelt, subject + activity ~ variable, mean)

#Save the dataset in a tidy.txt file
write.table(x = datmean, file = "tidy.txt", row.names = FALSE, quote = FALSE)

str(datmean)#show the new tidy dataset

