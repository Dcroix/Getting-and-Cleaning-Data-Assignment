# README.md File for Getting and Cleaning Data Assignment
by Paolo G. Hilado


This is a README.md file which presents the details of the files contained in this Github repository 
which includes the README.md, run_Analysis.R, secondcleandata.txt and Codebook.md.These files pertain
to getting and cleaning data collected from the accelorometers from the Samsung Galaxy S smartphone.
The following are some brief details of the aforesaid files:

README.md = Provides details of the different files found in the aforesaid Github repository and 
            briefly presents the transformations in run_Analysis.R undertaken to produce
            secondcleandata.txt

run_Analysis.R = a file that is readable via Rstudio which contains the scripts used in order 
                 to clean data collected from the accelorometers of the Samsung Galaxy S smartphone
                 and create a second and independent clean data saved in the secondcleandata.txt file

secondcleandata.txt = the file that contains the second, indepedent tidy dataset that have been processed using the scripts
                   found in the run_Analysis.R, this dataset contains 180 observations and
		   68 variables which deals with the measurements relevant to mean and standard deviation
                   and presents the average of each variable for each activity and each subject. 

Codebook.md = the document that presents the variables of interest in the run_Analysis.R script and 
              secondcleandata.txt. It also presents a brief description of these variables and details on
	      the transformations undertaken so as to generate the data.


The secondcleandata.txt was created via the run_Analys.R script. The following are the processes
undertaken in order to generate the aforesaid ".txt" file:

	1. Downloaded and unzipped the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	2. Merged the training and test datasets to create one dataset
	3. Extracted the measurements on the mean and standard deviation for each measurement
	4. Used Descriptive Activity names to name the activities in the dataset
	5. From the dataset in step 4, created a second, indepdent tidy dataset named
	   secondcleandata.txt which presents the average of each variable for each activity
	   and each subject. 


For more details regarding the transformation of the dataset, kindly refer to the Codebook.md in the
repository that goes along with this document. 


