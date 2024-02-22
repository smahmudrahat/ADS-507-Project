# ADS-507-Project

### Overview
This repository contains database integration and data preprocessing scripts for storing and organizing information related to movies, streaming platforms, box office details, writers, stars, and directors in a MySQL database.

### Data Source
The datasets are available on Kaggle.com and are in CSV formatted files.

### Preprocessing

1) Multiple CSV files were created into a dataframe for the preprocessing analysis.
2) The CSV files that were put into a dataframe (df_streaming, df_title, df_director, df_star, df_writer, and df_movie) were read using the pd.read_csv() function from the pandas library. These dataframes contain information about movies, directors, stars, writers, box office details, and streaming platforms.
3) Database connection parameters, such as db_username, db_password, db_host, and db_database are used to establish a connection to a MySQL database.
4) MySQL database connection is established using the create_engine function from the SQLAlchemy library.
5) All the dataframes were inserted into the corresponding MySQL tables using the to_sql method. The function, if_exists='replace' parameter is used to ensure to replace the tables with new data if it already exists.
6) The structure of each table is defined by SQL statements.
7) The original datasets used '\N' to denote missing values. These were replaced with NaN (Not a Number) to make them compatible with Pandas for further analysis and processing.
8) Columns with more than 90% missing values were removed to streamline the datasets. This step enhances the datasets' usability by focusing on more complete and relevant information.
9) Columns containing multiple categorical values separated by commas were split. Each category now appears in separate rows, aligning with the principles of a relational database.
10) The processed datasets were saved as new CSV files, preserving their original naming convention with the addition of '_New' to denote the processed state.

### File Structure
Data: Contains CSV files with information on movies, directors, stars, writers, box office details, and streaming platforms.
Scripts: Contains Python scripts for reading CSV files and inserting data into a MySQL database.
SQL: Contains SQL scripts for creating database tables.

#### Usage
The processed datasets can be directly used for various data science projects, including but not limited to:

- Exploratory Data Analysis (EDA)
- Building recommendation systems
- Analyzing trends in the film and television industry
- They are also structured to be compatible with MySQL, making them suitable for database-related projects and learning exercises.

#### Contribution
Feel free to fork this repository and adapt the preprocessing scripts to your specific needs. Contributions to further improve the scripts or to extend the functionality are welcome.

#### License
Creative Commons is the nonprofit behind the open licenses and other legal tools that allow creators to share their work. Our legal tools are free to use. https://creativecommons.org/publicdomain/zero/1.0/
