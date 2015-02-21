#------------------------------------------
# Coursera - Getting and Cleaning Data
# Johns Hopkins University
# Course Project
#------------------------------------------
# Define Files variables
#------------------------------------------

samsumg_file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
samsumg_zip_file <- "getdata-projectfiles-UCI HAR Dataset.zip"
samsumg_unzip_file <-"UCI HAR Dataset"
features_file <- "UCI HAR Dataset/features.txt"
activity_file <- "UCI HAR Dataset/activity_labels.txt"
subject_train_file <- "UCI HAR Dataset/train/subject_train.txt"
x_train_file <- "UCI HAR Dataset/train/X_train.txt"
y_train_file <- "UCI HAR Dataset/train/Y_train.txt"
subject_test_file <- "UCI HAR Dataset/test/subject_test.txt"
x_test_file <- "UCI HAR Dataset/test/X_test.txt"
y_test_file <- "UCI HAR Dataset/test/Y_test.txt"

#------------------------------------------
# 0.Verifies if file exists. If it doesnt, then download/unzip it
#------------------------------------------

if(!file.exists(samsumg_unzip_file)){
        
        if(!file.exists(samsumg_zip_file)){
                download.file(samsumg_file_url, destfile = samsumg_file)
        }
        #unzip the zip data file       
        unzip(samsumg_zip_file)
}

#------------------------------------------
# 1. Merges the training and the test sets to create one data set.
#------------------------------------------

train_df <- cbind(a=read.table(subject_train_file)[,1],
                  b=read.table(y_train_file)[,1],
                  c=read.table(x_train_file))

test_df <- cbind(a=read.table(subject_test_file)[,1],
                 b=read.table(y_test_file)[,1],
                 c=read.table(x_test_file))

merged_df <- rbind(train_df, test_df)



#------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each 
#measurement. 
#------------------------------------------

features_description_df <- read.table(features_file)

measures_columns <- sort(grep("(mean|std)\\(\\)", features_description_df[,2]))

df_columns=c(1,2, measures_columns+2)

merged_df <- merged_df[,df_columns]



#------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set
#------------------------------------------

activities_description_df <- read.table(activity_file)

merged_df[,2] <- factor(merged_df[,2],
                        levels = activities_description_df[,1],
                        labels = activities_description_df[,2])



#------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names.
#------------------------------------------

colnames(merged_df) <- c("subject"
                         ,"activity"
                         , as.character(features_description_df[measures_columns,2]))

#------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.
#-----------------------------------------

ncolumns <- ncol(merged_df)

tidy_df <- aggregate(merged_df[,3:ncolumns], merged_df[,1:2], function(x) mean(x))
tidy_df <- tidy_df[order(tidy_df[,1], tidy_df[,2]),]

colnames(tidy_df) <- c("subject"
                       ,"activity"
                       ,paste(colnames(tidy_df[3:ncolumns]), "_average", sep = ""))


#------------------------------------------
# 6. Write file
#-----------------------------------------

write.table(tidy_df, file="tidy_data.txt", row.names = FALSE)

# Remove all variables except merged_df and tiny_df
rm(list=setdiff(ls(), "tidy_df"))
