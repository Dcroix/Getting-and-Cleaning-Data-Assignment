# Codebook.md File for Getting and Cleaning Data Assignment
by Paolo G. Hilado


This Codebook.md file presents the variables in the run_Analysis.R script and the secondcleandata.txt.
Furthermore, it also contains brief descriptions of the aforementioned variables and details on
the transformations undertaken to generate the second independent data (secondcleandata.txt).

The data has been retrieved from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It is entitled as Human Activity Recognition Using Smartphones Data Set sourced from:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
ESANN 2013. Bruges, Belgium 24-26 April 2013.


The processed data via run_Analysis.R script which is reflected in the secondcleandata.txt has 180 observations and 68 variables.
Of the 68 variables 2 were factors and 66 were numeric 

1. SubjectID (factor w/ 30 levels) - Identification assigned to the participants
2. Activity (factor w/ 6 levels) - the Type of Activity that the participants have undergone which
				includes WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
				while wearing a smartphone (Samsung Galaxy S II) on the waist. 

Measurements (Units for acceleration = standard gravity units(g), Units for angular velocity vector = radians / second):
1.	tBodyAcc-mean-X      		 = mean of acceleration via Body Accelerometer (time) in X axis
2.	tBodyAcc-mean-Y      		 = mean of acceleration via Body Accelerometer (time) in Y axis  
3.	tBodyAcc-mean-Z        		 = mean of acceleration via Body Accelerometer (time)in Z axis
4.	tBodyAcc-std-X           	 = Standard Deviation of acceleration via Body Accelerometer (time) in X axis
5.	tBodyAcc-std-Y			 = Standard Deviation of acceleration via Body Accelerometer (time) in Y axis          
6.	tBodyAcc-std-Z 			 = Standard Deviation of acceleration via Body Accelerometer (time) in Z axis          
7.	tGravityAcc-mean-X       	 = mean of acceleration via Body Accelerometer (time) in X axis
8.	tGravityAcc-mean-Y       	 = mean of acceleration via Body Accelerometer (time) in Y axis
9.	tGravityAcc-mean-Z       	 = mean of acceleration via Body Accelerometer (time) in Z axis
10.	tGravityAcc-std-X        	 = Standard Deviation of acceleration via Gravity Accelerometer (time) in X axis
11.	tGravityAcc-std-Y        	 = Standard Deviation of acceleration via Body Accelerometer (time) in Y axis
12.	tGravityAcc-std-Z        	 = Standard Deviation of acceleration via Body Accelerometer (time) in Z axis
13.	tBodyAccJerk-mean-X      	 = mean of Body Acceleration Jerk (time) in X axis
14.	tBodyAccJerk-mean-Y      	 = mean of Body Acceleration Jerk (time) in Y axis
15.	tBodyAccJerk-mean-Z      	 = mean of Body Acceleration Jerk (time) in Z axis
16.	tBodyAccJerk-std-X      	 = Standard Deviation of Body Acceleration Jerk (time) in X axis
17.	tBodyAccJerk-std-Y       	 = Standard Deviation of Body Acceleration Jerk (time) in Y axis
18.	tBodyAccJerk-std-Z      	 = Standard Deviation of Body Acceleration Jerk (time) in Z axis
19.	tBodyGyro-mean-X         	 = Mean of Angular Velocity vector with time domain via Body Gyroscope in X axis 
20.	tBodyGyro-mean-Y        	 = Mean of Angular Velocity vector with time domain via Body Gyroscope in Y axis
21.	tBodyGyro-mean-Z         	 = Mean of Angular Velocity vector with time domain via Body Gyroscope in Z axis
22.	tBodyGyro-std-X         	 = Standard Deviation of Angular Velocity vector with time domain via Body Gyroscope in X axis
23.	tBodyGyro-std-Y          	 = Standard Deviation of Angular Velocity vector with time domain via Body Gyroscope in Y axis
24.	tBodyGyro-std-Z        		 = Standard Deviation of Angular Velocity vector with time domain via Body Gyroscope in Z axis 
25.	tBodyGyroJerk-mean-X 		 = Mean of Angular Velocity Jerk vector with time domain via Body Gyroscope in X axis   
26.	tBodyGyroJerk-mean-Y     	 = Mean of Angular Velocity Jerk vector with time domain via Body Gyroscope in Y axis
27.	tBodyGyroJerk-mean-Z     	 = Mean of Angular Velocity Jerk vector with time domain via Body Gyroscope in Z axis
28.	tBodyGyroJerk-std-X      	 = Standard Deviation of Angular Velocity Jerk vector with time domain via Body Gyroscope in X axis
29.	tBodyGyroJerk-std-Y      	 = Standard Deviation of Angular Velocity Jerk vector with time domain via Body Gyroscope in Y axis
30.	tBodyGyroJerk-std-Z      	 = Standard Deviation of Angular Velocity Jerk vector with time domain via Body Gyroscope in Z axis
31.	tBodyAccMag-mean          	 = Mean of the time domain magnitude of body acceleration
32.	tBodyAccMag-std         	 = Standard Deviation of the time domain magnitude of body acceleration
33.	tGravityAccMag-mean		 = Mean of the time domain magnitude of gravity acceleration	        
34.	tGravityAccMag-std     	 	 = Standard Deviation of the time domain magnitude of gravity acceleration   
35.	tBodyAccJerkMag-mean     	 = Mean of the time domain magnitude of body acceleration jerk
36.	tBodyAccJerkMag-std      	 = Standard Deviation of the time domain magnitude of body acceleration jerk
37.	tBodyGyroMag-mean        	 = Mean of the time domain magnitude of body angular velocity
38.	tBodyGyroMag-std         	 = Standard Deviation of the time domain magnitude of body angular velocity
39.	tBodyGyroJerkMag-mean    	 = Mean of the time domain magnitude of body angular velocity jerk
40.	tBodyGyroJerkMag-std     	 = Standard Deviation of the time domain magnitude of body angular velocity jerk
41.	fBodyAcc-mean-X    	         = mean of acceleration via Body Accelerometer (frequency) in X axis
42.	fBodyAcc-mean-Y        	         = mean of acceleration via Body Accelerometer (frequency) in Y axis
43.	fBodyAcc-mean-Z                  = mean of acceleration via Body Accelerometer (frequency) in Z axis
44.	fBodyAcc-std-X      	         = Standard Deviation of acceleration via Body Accelerometer (time) in X axis     
45.	fBodyAcc-std-Y      	         = Standard Deviation of acceleration via Body Accelerometer (time) in Y axis       
46.	fBodyAcc-std-Z	                 = Standard Deviation of acceleration via Body Accelerometer (time) in Z axis                
47.	fBodyAccJerk-mean-X 	         = mean of Body Acceleration Jerk (frequency) in X axis     
48.	fBodyAccJerk-mean-Y      	 = mean of Body Acceleration Jerk (frequency) in Y axis     
49.	fBodyAccJerk-mean-Z	         = mean of Body Acceleration Jerk (frequency) in Z axis           
50.	fBodyAccJerk-std-X	       	 = Standard Deviation of Body Acceleration Jerk (frequency) in X axis       
51.	fBodyAccJerk-std-Y		 = Standard Deviation of Body Acceleration Jerk (frequency) in Y axis      
52.	fBodyAccJerk-std-Z		 = Standard Deviation of Body Acceleration Jerk (frequency) in Z axis       
53.	fBodyGyro-mean-X		 = Mean of Angular Velocity vector with frequency domain via Body Gyroscope in X axis         
54.	fBodyGyro-mean-Y		 = Mean of Angular Velocity vector with frequency domain via Body Gyroscope in Y axis                  
55.	fBodyGyro-mean-Z		 = Mean of Angular Velocity vector with frequency domain via Body Gyroscope in Z axis                
56.	fBodyGyro-std-X		         = Standard Deviation of Angular Velocity vector with frequency domain via Body Gyroscope in X axis
57.	fBodyGyro-std-Y		         = Standard Deviation of Angular Velocity vector with frequency domain via Body Gyroscope in Y axis          
58.	fBodyGyro-std-Z		         = Standard Deviation of Angular Velocity vector with frequency domain via Body Gyroscope in Z axis          
59.	fBodyAccMag-mean	         = Mean of the frequency domain magnitude of body acceleration         
60.	fBodyAccMag-std		         = Standard Deviation of the frequency domain magnitude of body acceleration         
61.	fBodyBodyAccJerkMag-mean         = Mean of the frequency domain magnitude of body acceleration jerk 
62.	fBodyBodyAccJerkMag-std		 = Standard Deviation of the frequency domain magnitude of body acceleration jerk  
63.	fBodyBodyGyroMag-mean		 = Mean of the frequency domain magnitude of body angular velocity		    
64.	fBodyBodyGyroMag-std		 = Standard Deviation of the frequency domain magnitude of body angular velocity     
65.	fBodyBodyGyroJerkMag-mean	 = Mean of the frequency domain magnitude of body angular velocity jerk
66.	fBodyBodyGyroJerkMag-std	 = Standard Deviation of the frequency domain magnitude of body angular velocity jerk


Below are the processes involved during the transformation of dataset:
1. Files were downloaded (activity_labels.txt, features.txt, X_train.txt, y_train.txt,
		subject_train.txt, X_test.txt, y_test.txt, subject_test.txt)   
		from the url(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. The packages of reshape2 and data.table were loaded into Rstudio
3. Files (activity_labels.txt, features.txt) were read via Rstudio and given column names
4. Defined the measurements which only included the mean and standard deviations
5. Files (X_train.txt, y_train.txt, subject_train.txt) were read via Rstudio and given column names 
6. Files (X_test.txt, y_test.txt, subject_test.txt) were read via Rstudio and given column names
7. Merged the read datasets in one dataset (this dataset only includes the mean and standard deviation measurements)
8. Used descriptive activity names to label the activities in the dataset
9. Created a second, indepedent tidy dataset with the average of each variable for each activity and each subject
10. Exported the second, independent tidy dataset as secondcleandata.txt
