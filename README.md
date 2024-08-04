# Spotify Data Pipeline (ETL) Project Using Python, AWS & Snowflake  
## Project Description
The Spotify Data Pipeline (ETL) Project Using Python leverages the power of AWS cloud services to automate the extraction, transformation, 
and loading (ETL) process of Spotify API data. This project seamlessly transforms raw data from the SpotifyAPI into a structured and query-ready dataset, enabling insightful data analysis and visualization.
## Project Overview:
In this project, we build a comprehensive data pipeline that efficiently handles Spotify API data using AWS services and Python programming.
## Project Architecure
![image](https://github.com/user-attachments/assets/9034e8b2-068a-4e0e-b7fe-4fe2259ef0fc)
## 1. Data Extraction
Utilize Python scripts to extract data from the Spotify API, capturing valuable insights about album, artist, songs data's. Deploy the data extraction code onto AWS Lambda Functions,
which provide a serverless environment for executing code on demand.Set up scheduled triggers using Amazon coludWatch to run the extraction code on a weekly basis.
Store the raw data securely in Amazon S3 bucket, a scalable and cost-effective storage solution.
![Raw_Data_Folder_Structure](https://github.com/user-attachments/assets/fd99b61e-053d-4a7d-9219-196315fd9cc5)
## 2. Data Transformation
Configure AWS Lambda Functions to trigger automatically upon the arrival of new data in the Amazon S3 bucket.
Implement Python-based data transformation logic within AWS Lambda Functions to clean, enrich, and format the raw data.
Store the transformed data back into a designated Amazon S3 bucket container, ensuring data integrity and accessibility.
## 3. Data Loading
Create an snowflake pipeline to load the data when new data lands in the Amazon S3 bucket container.
![image](https://github.com/user-attachments/assets/62a46f7b-7ddb-40d8-895a-687de5ea7c2e)
## Table View in SnowFlake 
Below are the snaps of snowflake tables after loading data
## Album Table
![Album_Table](https://github.com/user-attachments/assets/b0b297cb-0b89-483f-9fd7-d8f710b0ab84)
## Artist table
![Artist_Table](https://github.com/user-attachments/assets/df0e19a9-9f2f-403a-a612-8c59bbdf2c68)
## songs Table
![Songs_Table](https://github.com/user-attachments/assets/3ad658dd-ce90-4725-8bcf-16252d4f9d56)
## Snowflake Database and Schema Snap
![Schema](https://github.com/user-attachments/assets/6a56bb23-9825-4d65-a1d3-a4bd903c9992)
## Key Components
AWS Lambda : Provides serverless compute for data extraction and transformation.

AWS S3 : Serves as a reliable and scalable storage solution for raw and transformed data.

Amazon Cloud watch : Enables automated scheduling of data extraction tasks.

Amazon Object trigger : Enables automated schedule trigger when data is arrived on S3 bucket folder.

snowflake database: To load the data from s3 querying of the transformed dataset using SQL.

## Programming and Tools
Python is used extensively for data extraction, transformation, and processing, employing Pandas DataFrames for efficient data manipulation.


