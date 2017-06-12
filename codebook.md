## Codebook for adapted version of UCI HAR dataset

### In the finalized dataset, entitled "summarizeddata.txt", the mean of a series of variables (as listed below) has been calculated, grouped by subject and activity.  Only a subset of the original variables are presented here, namely those originally denoted with mean() or std().

subject:	ID of test subject(indexed from 1-30), upon which measurements were taken
activity:	type of activity performed when measurements were taken; consists of "walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying"   

### Adapted from features info file from UCI HAR dataset:
### The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeacc(xyz) and timegyro(xyz). These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timebodyacc(xyz) and timegravityacc(xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
### Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timebodyaccjerk(XYZ) and timebodygyrojerk(xyz). Also, the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timebodyaccmag, timegravityaccmag, timebodyaccjerkmag, timebodygyromag, timebodygyrojerkmag). 
### Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqbodyacc(xyz), freqbodyaccjerk(xyz), freqbodygyro(xyz), freqbodyaccjerkmag, freqbodygyromag, freqbodygyrojerkmag. 
### These signals were used to estimate variables of the feature vector for each pattern:  'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

### Measurement variables:          
timebodyaccmeanx
timebodyaccmeany           
timebodyaccmeanz
timegravityaccmeanx        
timegravityaccmeany
timegravityaccmeanz        
timebodyaccjerkmeanx
timebodyaccjerkmeany       
timebodyaccjerkmeanz
timebodygyromeanx          
timebodygyromeany
timebodygyromeanz          
timebodygyrojerkmeanx
timebodygyrojerkmeany     
timebodygyrojerkmeanz
timebodyaccmagmean         
timegravityaccmagmean
timebodyaccjerkmagmean     
timebodygyromagmean
timebodygyrojerkmagmean  
freqbodyaccmeanx
freqbodyaccmeany          
freqbodyaccmeanz
freqbodyaccjerkmeanx      
freqbodyaccjerkmeany
freqbodyaccjerkmeanz     
freqbodygyromeanx
freqbodygyromeany          
freqbodygyromeanz
freqbodyaccmagmean         
freqbodybodyaccjerkmagmean
freqbodybodygyromagmean   
freqbodybodygyrojerkmagmean
timebodyaccstdx            
timebodyaccstdy
timebodyaccstdz
timegravityaccstdx
timegravityaccstdy 
timegravityaccstdz
timebodyaccjerkstdx       
timebodyaccjerkstdy
timebodyaccjerkstdz
timebodygyrostdx
timebodygyrostdy
timebodygyrostdz
timebodygyrojerkstdx
timebodygyrojerkstdy
timebodygyrojerkstdz
timebodyaccmagstd
timegravityaccmagstd
timebodyaccjerkmagstd
timebodygyromagstd
timebodygyrojerkmagstd
freqbodyaccstdx
freqbodyaccstdy
freqbodyaccstdz            
freqbodyaccjerkstdx
freqbodyaccjerkstdy
freqbodyaccjerkstdz
freqbodygyrostdx
freqbodygyrostdy
freqbodygyrostdz
freqbodyaccmagstd
freqbodybodyaccjerkmagstd
freqbodybodygyromagstd
freqbodybodygyrojerkmagstd
