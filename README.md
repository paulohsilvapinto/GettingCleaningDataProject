## Getting and Cleaning Data Project

####About
This file will explain each step performed into run_analysis.R script to acquire the tidy data set described into codebook. The raw data can be downloaded here: 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

####0. Initial step
First of all, every Samsung's data file path is set into variables and the root folder is considered to be [YourWorkingDirectory]/UCI HAR Dataset.
If this folder didn't exists, the script checks if there is a .zip file of Samsung's data and extract it.
If neither .zip file nor root folder exists, then it will download the .zip file and then extract it into your Working Directory.

####1. Merging data files
This step will produce the merged data file as a data.frame object.
We first bind the subjects test data, activities test data and measures test data by columns, creating the test data.frame and then repeat the process to create the train data.frame.
After that we bind the two data.frames by rows, creating the merged data.frame.

####2. Extracting Mean and Std columns
Now we are interested just in mean and standard deviation columns.
We know the first column of our merged data.frame is the subject, the second is the activity and the third till the last one are the measures. To find the measures that corresponds to mean or std, we read the features file as a data.frame and use the function grep, looking for the words "mean" or "std" into the features names, to obtain a vector with their indexes. The vector is sorted to remain ordered as the merged data set.
As said, measures starts onto 3rd column, so we need to sum 2 to the vector and finally we can subset the merged data set.

####3. Changing activity number to descriptive values
This step needs a from/to process, so we read the activity description file into a data.frame for this purpose.
The column Activity of the merged data set is converted to a factor with levels equals to the first column of activity_df (the numbers) and labels equals to the second column of activity_df (the descriptions).

####4. Labels the data set with descriptive variable names
Simply set the variables names.

####5. Create tidy data
For each subject/activity, obtain the mean of each variable with function aggregate(), producing the tidy_data.
Next, sort the tidy data to become subject and activity ascendant and, then, concatenate the word "_average" to the measures names.

####6. Writing tidy data
The last step writes a tidy_data.txt file into the working directory.

The script returns the final tidy data.frame.



