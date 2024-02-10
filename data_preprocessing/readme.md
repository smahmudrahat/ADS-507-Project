
# IMDb Dataset Preprocessing

#### Overview

This repository contains scripts and information for preprocessing the IMDb datasets for easier use in data science projects and MySQL databases. The original datasets, sourced from IMDb, contain extensive information about movies, TV shows, crew, ratings, and more, but they are presented in a format that can be challenging to work with directly. Our preprocessing steps aim to make these datasets more accessible and user-friendly.

#### Data Source

The IMDb datasets are available for personal and non-commercial use and can be downloaded from [IMDb Datasets](https://developer.imdb.com/non-commercial-datasets/). These datasets are provided in gzipped, tab-separated-values (TSV) formatted files.

#### Preprocessing Steps

1. Conversion from TSV to CSV 
The original datasets in TSV format were converted to CSV for better compatibility with various data analysis tools and libraries. This was done using a Python script that iterates over each TSV file and writes its contents to a new CSV file.

2. Data Cleaning and Transformation
The following steps were implemented in Python, primarily using the Pandas library, to clean and transform the data:

a. Truncating Data:
Each dataset initially contained over 10 million rows, which was cumbersome for analysis. The data was truncated to the first 50,000 rows (5,000 for the title.crew dataset) to make the datasets more manageable.

b. Handling Missing Values:
The original datasets used '\N' to denote missing values. These were replaced with NaN (Not a Number) to make them compatible with Pandas for further analysis and processing.

c. Removing Unnecessary Columns:
Columns with more than 90% missing values were removed to streamline the datasets. This step enhances the datasets' usability by focusing on more complete and relevant information.

d. Splitting Categorical Data:
Columns containing multiple categorical values separated by commas (e.g., genres, knownForTitles) were split. Each category now appears in separate rows, aligning with the principles of a relational database.

3. Saving Processed Data
The processed datasets were saved as new CSV files, preserving their original naming convention with the addition of '_New' to denote the processed state.

#### Usage
The processed datasets can be directly used for various data science projects, including but not limited to:

- Exploratory Data Analysis (EDA)
- Building recommendation systems
- Analyzing trends in the film and television industry
- They are also structured to be compatible with MySQL, making them suitable for database-related projects and learning exercises.

#### Contribution
Feel free to fork this repository and adapt the preprocessing scripts to your specific needs. Contributions to further improve the scripts or to extend the functionality are welcome.

#### License
The datasets are subject to IMDb's terms and conditions for non-commercial use. Please refer to [IMDb's Non-Commercial Licensing] (https://developer.imdb.com/non-commercial-datasets/) and [copyright/license] (https://www.imdb.com/conditions) for compliance
