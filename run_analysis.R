samsumg_file_zip <- "getdata-projectfiles-UCI HAR Dataset.zip"
samsumg_file_unzip <-"UCI HAR Dataset"
samsumg_file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#Verifies if file exists. If it doesnt, then download it
if(!file.exists(samsumg_file_unzip)){
        
        if(!file.exists(samsumg_file_zip)){
                download.file(samsumg_file_url, destfile = samsumg_file)
        }
        #unzip the zip data file       
        unzip(samsumg_file_zip)
}



#Create data.frames with descriptions
features_description_df <- read.table("UCI HAR Dataset/features.txt")
activities_description_df <- read.table("UCI HAR Dataset/activity_labels.txt")

#select the columns indexes that corresponds to mean or std and then sort them.
#The *Mean* columns wasnt selected cause its an angle, not the mean.
mean_columns <- grep("mean", features_description_df[,2])
std_columns <- grep("std", features_description_df[,2])
measures_columns <- sort(c(mean_columns, std_columns))

#clear unused variables
rm(list=c("mean_columns", "std_columns"))


#Create train data.frame
subject_train_df <- read.table("UCI HAR Dataset/train/subject_train.txt")[,1]
activities_train_df <- factor(readLines(file("UCI HAR Dataset/train/Y_train.txt")),
                        levels=activities_description_df[,1],
                        labels=activities_description_df[,2])
measures_train_df <- read.table("UCI HAR Dataset/train/X_train.txt")[,measures_columns]
colnames(measures_train_df) <- features_description_df[measures_columns,2]

train <- cbind(subject=subject_train_df,
               activity=activities_train_df,
               measures_train_df)

#Create test data.frame
subject_test_df <- read.table("UCI HAR Dataset/test/subject_test.txt")[,1]
activities_test_df <- factor(readLines(file("UCI HAR Dataset/test/Y_test.txt"))
                              ,levels=activities_description_df[,1]
                              ,labels=activities_description_df[,2])
measures_test_df <- read.table("UCI HAR Dataset/test/X_test.txt")[,measures_columns]
colnames(measures_test_df) <- features_description_df[measures_columns,2]

test <- cbind(subject=subject_test_df,
               activity=activities_test_df,
               measures_test_df)

#Create data.frame merging train_df and test_df
merged_df <- rbind(train, test)


tiny_df <- aggregate(merged_df[,3:81], merged_df[,c("subject", "activity")], function(x) mean(x))
tiny_df <- tiny_df[order(tiny_df[,1], tiny_df[,2]),]
write.table(tiny_df, file="projeto.txt", row.names = FALSE)

rm(list=setdiff(ls(), "tiny_df"))