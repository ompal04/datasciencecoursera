Process Flow of the R script
  
  Downloads the data set into datasciencecoursera folder on the local desktop (existing files are overwritten by default)
  
  Checks whether the file had been unzipped before
  
  Reads data from all the text files in the UCI HAR folder into different dataframes
  
  Dataframes containing test and train data are merged, mean and std dev are extracted into TidyData dataframe
  
  Activities are named in the TidyData dataset and the dataset is labelled
  
  Extracts averages into FinalData and extracts it into a txt file


Info abt dataset
  
  features : 561 rows, 2 columns
  
  The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
  
  activities : 6 rows, 2 columns
  
  List of activities performed when the corresponding measurements were taken and its codes
  
  subject_test : 2947 rows, 1 column
  
  contains test data of 9/30 volunteer test subjects being observed
  
  x_test : 2947 rows, 561 columns
  
  contains recorded features test data
  
  y_test : 2947 rows, 1 columns
  
  contains test data of activities’code labels
  
  subject_train : 7352 rows, 1 column
  
  contains train data of 21/30 volunteer subjects being observed
  
  x_train : 7352 rows, 561 columns
  
  contains recorded features train data
  
  y_train : 7352 rows, 1 columns
  
  contains train data of activities’ code labels

  X : 10299 rows, 561 columns (x train + xtest)
  
  Y : 10299 rows, 1 column (y train + y test)
  
  Subject : 10299 rows, 1 column (subject train + subject test)
  
  Merged_Data : 10299 rows, 563 column (x + y + subject)
  
  TidyData : 10299 rows, 88 columns (subset of merged_data -> subject, code, mean and atd dev for each measurement col)

  Code numbers replaced by activities and col renamed to activities
  
  Acc -> Accelerometer
  
  Gyro -> Gyroscope
  
  BodyBody -> Body
  
  Mag -> Magnitude
  
  ^f -> Frequency
  
  ^t -> Time

  
  FinalData -> Summarize(TidySet)
  FinalData : 180 rows, 88 columns -> FinalData.txt
