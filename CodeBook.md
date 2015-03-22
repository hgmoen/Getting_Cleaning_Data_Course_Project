Data Dictionary - Human Activity Recognition Using Smartphones Dataset
Version 1.0
=================

The file "run_analysis.R" creates a tidy data set based on the UCI HAR Dataset. 

The UCI HAR Dataset contains data about experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The UCI HAR Data set includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The tidy data set "meanData" is a data frame of 11880 observations on the following 4 variables. 

1. Subject (integer): An integer between 1 and 30 that is a unique identifier for each of  the 30 subjects in the experiment

2. Activity (character): A character with one of the following 6 values that identifier the activity for the mean variable calculation.
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
        
3. Variable (character): One of the following 66 variables (measurements) that identifies the variable for the mean calculation. This set of variables is a subset of the originial UCI HAR Dataset. Details of the complete data set can be found in features_info.txt
tBodyAcc-mean()-X           
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z           
tGravityAcc-mean()-X       
tGravityAcc-mean()-Y        
tGravityAcc-mean()-Z       
tBodyAccJerk-mean()-X       
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z       
tBodyGyro-mean()-X         
tBodyGyro-mean()-Y          
tBodyGyro-mean()-Z         
tBodyGyroJerk-mean()-X      
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z      
tBodyAccMag-mean()         
tGravityAccMag-mean()       
tBodyAccJerkMag-mean()     
tBodyGyroMag-mean()         
tBodyGyroJerkMag-mean()    
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z           
fBodyAccJerk-mean()-X      
fBodyAccJerk-mean()-Y       
fBodyAccJerk-mean()-Z      
fBodyGyro-mean()-X          
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z          
fBodyAccMag-mean()         
fBodyBodyAccJerkMag-mean()  
fBodyBodyGyroMag-mean()    
fBodyBodyGyroJerkMag-mean() 
tBodyAcc-std()-X           
tBodyAcc-std()-Y            
tBodyAcc-std()-Z           
tGravityAcc-std()-X         
tGravityAcc-std()-Y        
tGravityAcc-std()-Z         
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y        
tBodyAccJerk-std()-Z       
tBodyGyro-std()-X           
tBodyGyro-std()-Y          
tBodyGyro-std()-Z           
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y       
tBodyGyroJerk-std()-Z      
tBodyAccMag-std()           
tGravityAccMag-std()       
tBodyAccJerkMag-std()       
tBodyGyroMag-std()         
tBodyGyroJerkMag-std()      
fBodyAcc-std()-X           
fBodyAcc-std()-Y            
fBodyAcc-std()-Z           
fBodyAccJerk-std()-X        
fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z        
fBodyGyro-std()-X          
fBodyGyro-std()-Y           
fBodyGyro-std()-Z          
fBodyAccMag-std()           
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-std()      
fBodyBodyGyroJerkMag-std() 

4. mean (numeric): The numeric average of the variable for the activity and subject defined in the row. Features are normalized and bounded within [-1,1] and therefore don't have units.