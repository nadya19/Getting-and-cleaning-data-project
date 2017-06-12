# Getting-and-cleaning-data-project

## The run_analysis.R program accomplishes the following steps on the UCI HAR dataset:

1.  Reads in various files, including first the variable labels, followed by the measurements, subjects, and activities files for both training and test data.  Assigns variable names while reading in files.
1.  Binds columns for subjects, activities and measurements for training and test data separately.
1.  Merges training and test data into one file.
1.  Extracts only those measurements that contain mean() or std() in variable names.
1.  Assigns descriptive labels to activity variable codes.
1.  Makes variable names "tidy", by removing periods, changing initial "t" to "time", initial "f" to "freq", and making all letter lowercase.
1.  Creates new dataset with the mean of each variable for each subject and activity.
1.  Write new dataset to summarizeddata.txt file.
