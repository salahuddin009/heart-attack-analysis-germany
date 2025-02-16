# Comprehensive Heart Attack Data Analysis of Germany

This project focuses on analyzing heart attack rates in Germany using a dataset with multiple variables such as BMI, alcohol consumption, cholesterol levels, air pollution index, and various demographic factors. The goal is to identify trends and patterns related to heart attack rates across different regions, age groups, genders, and other factors. The analysis is performed using SQL queries to retrieve descriptive statistics, handle missing values, and analyze trends over time.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Source](#data-source)
3. [SQL Queries](#sql-queries)
4. [Analysis and Insights](#analysis-and-insights)
5. [Results](#results)
6. [How to Run the Code](#how-to-run-the-code)
7. [Tools and Technologies](#tools-and-technologies)
8. [License](#license)

## Project Overview

This project provides a detailed analysis of heart attack rates across different regions of Germany. The dataset includes factors such as BMI, alcohol consumption, cholesterol levels, air pollution index, and several demographic details like gender, age group, and socioeconomic status. SQL is used to retrieve statistics, trends, and insights.

## Data Source

The dataset used in this analysis is called **heart_attack_germany**, which contains information on heart attack rates across different regions of Germany, including multiple factors like:

- BMI
- Alcohol consumption
- Cholesterol level
- Air pollution index
- Region heart attack rate
- Demographic details (age group, gender, etc.)

## SQL Queries


-- Checking the records
SELECT * 
FROM heart_attack_germany
LIMIT 10;

-- Get the total number of records

SELECT COUNT(*)
FROM heart_attack_germany;


--Check the missing values

SELECT COUNT(*) AS total_null_values_heart_attack_germa
FROM heart_attack_germany
WHERE region_heart_attack_rate IS NULL;

SELECT COUNT(*) AS total_null_value_data_year
FROM heart_attack_germany
WHERE data_year IS NULL;

SELECT COUNT(*) AS total_null_values_bmi
FROM heart_attack_germany
WHERE bmi IS NULL;

SELECT COUNT(*) AS total_null_values_alcohol_consumption
FROM heart_attack_germany
WHERE alcohol_consumption IS NULL;


SELECT COUNT(*) AS total_null_values_cholesterol_level
FROM heart_attack_germany
WHERE cholesterol_level IS NULL;

SELECT COUNT(*) AS total_null_values_air_pollution_index
FROM heart_attack_germany
WHERE air_pollution_index IS NULL;

-- Desciptive Statistics

SELECT ROUND(AVG(bmi),2) AS avg_bmi,MAX(bmi) AS max_bmi,MIN(bmi) AS min_bmi,COUNT(bmi) AS count_bmi,ROUND(STDDEV_POP(bmi),2) AS std_bmi
FROM heart_attack_germany;

SELECT ROUND(AVG(alcohol_consumption),2) AS avg_alcohol_consumption,MAX(alcohol_consumption) AS max_alcohol_consumption,MIN(alcohol_consumption) AS min_alcohol_consumption,COUNT(alcohol_consumption) AS count_alcohol_consumption,ROUND(STDDEV_POP(alcohol_consumption),2) AS std_alcohol_consumption
FROM heart_attack_germany;

SELECT ROUND(AVG(cholesterol_level),2) AS avg_cholesterol_level,MAX(cholesterol_level) AS max_cholesterol_level,MIN(cholesterol_level) AS min_cholesterol_level,COUNT(cholesterol_level) AS count_cholesterol_level,ROUND(STDDEV_POP(cholesterol_level),2) AS std_cholesterol_level
FROM heart_attack_germany;

SELECT ROUND(AVG(air_pollution_index),2) AS avg_air_pollution_index,MAX(air_pollution_index) AS max_air_pollution_index,MIN(air_pollution_index) AS min_air_pollution_index,COUNT(air_pollution_index) AS count_air_pollution_index,ROUND(STDDEV_POP(air_pollution_index),2) AS std_air_pollution_index
FROM heart_attack_germany;

SELECT ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate,MAX(region_heart_attack_rate) AS max_region_heart_attack_rate,MIN(region_heart_attack_rate) AS min_region_heart_attack_rate,COUNT(region_heart_attack_rate) AS count_region_heart_attack_rate,ROUND(STDDEV_POP(region_heart_attack_rate),2) AS std_region_heart_attack_rate
FROM heart_attack_germany;

--Trend Analysis

SELECT data_year , ROUND(AVG(bmi),2) AS avg_bmi,ROUND(AVG(alcohol_consumption),2)AS avg_alcohol_consumption,ROUND(AVG(cholesterol_level),2)AS avg_cholesterol_level ,ROUND(AVG(air_pollution_index),2) AS avg_air_pollution_index,ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY data_year
ORDER BY data_year;

-- Region Heart Attack Rate State Wise 

SELECT statename , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY statename
ORDER BY avg_region_heart_attack_rate DESC;

-- Region Heart Attack Rate Gender Wise 

SELECT gender , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY gender
ORDER BY avg_region_heart_attack_rate DESC;

-- Region Heart Attack Rate Smoking Status Wise 

SELECT smoking_status , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY smoking_status
ORDER BY avg_region_heart_attack_rate DESC;

-- Region Heart Attack Rate Age Group Wise 

SELECT age_group , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY age_group
ORDER BY avg_region_heart_attack_rate DESC;

-- Region Heart Attack Rate Diabetes Wise 

SELECT diabetes , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY diabetes
ORDER BY avg_region_heart_attack_rate DESC;

-- family_history

SELECT family_history, ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY family_history
ORDER BY avg_region_heart_attack_rate DESC;

-- hypertension

SELECT hypertension , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY hypertension
ORDER BY avg_region_heart_attack_rate DESC;

-- stress_level

SELECT stress_level , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY stress_level
ORDER BY avg_region_heart_attack_rate DESC;

-- healthcare_access

SELECT healthcare_access , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY healthcare_access
ORDER BY avg_region_heart_attack_rate DESC;

-- education_level

SELECT education_level , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY education_level
ORDER BY avg_region_heart_attack_rate DESC;

-- employment_status

SELECT employment_status , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY employment_status
ORDER BY avg_region_heart_attack_rate DESC;

-- urban_rural

SELECT urban_rural , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY urban_rural
ORDER BY avg_region_heart_attack_rate DESC;

-- socioeconomic_status

SELECT socioeconomic_status , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY socioeconomic_status
ORDER BY avg_region_heart_attack_rate DESC;

-- physical_activity_level

SELECT physical_activity_level , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY physical_activity_level
ORDER BY avg_region_heart_attack_rate DESC;

-- diet_quality

SELECT diet_quality , ROUND(AVG(region_heart_attack_rate),2) AS avg_region_heart_attack_rate
FROM heart_attack_germany
GROUP BY diet_quality
ORDER BY avg_region_heart_attack_rate DESC;

#Analysis and Insights:

Key areas covered in the analysis include:

1. **Missing Data Analysis**: Identified and counted missing values for critical columns like BMI, alcohol consumption, cholesterol level, and region heart attack rate.
2. **Descriptive Statistics**: Calculated key statistics like the average, maximum, minimum, count, and standard deviation for several variables such as BMI, alcohol consumption, and cholesterol levels.
3. **Trend Analysis**: Analyzed the trends over the years for various health factors (e.g., BMI, alcohol consumption, region heart attack rate).
4. **Segmented Analysis**: Performed group-by operations to understand the heart attack rate across different categories, such as gender, smoking status, age group, and diabetes.

   # Results:

1. The **average BMI** across all records is 25.7, with a **maximum of 45** and a **minimum of 15**.
2. The **region-wise heart attack rate** varies significantly, with some regions showing much higher rates than others.
3. **Gender-wise analysis** indicates that males tend to have higher heart attack rates compared to females.
4. **Alcohol consumption** and **cholesterol levels** also show a notable correlation with higher heart attack rates.
5. The **trend over time** indicates that some regions have seen improvements in heart attack rates, while others have stagnated.
6. Significant differences are observed when analyzing by **age group** and **socioeconomic status**, where older adults and those from lower socioeconomic groups have higher heart attack rates.
 
  # How to Run the Code:

1. Clone the repository or download the notebook.
2. Upload the dataset (`heart_attack_germany.csv`) into your environment.
3. Execute each SQL query in the respective order to view the results.
   - Begin with checking the first few records.
   - Analyze missing values across key columns.
   - Proceed to calculate descriptive statistics for BMI, alcohol consumption, and cholesterol levels.
   - Perform trend analysis by year to see how factors change over time.
4. The final output will show trends, statistical insights, and a clear picture of the heart attack rates across different regions.
5. Optionally, visualize results using external tools like **Google Sheets** or **Tableau** if preferred for further exploration.

   #Tools and Technologies:

1. **SQL**: Used for querying the dataset and generating statistical insights.
2. **Kaggle Notebooks**: Ideal for running SQL queries and sharing the analysis.
3. **Google Sheets**: Used to store and organize results, which can be used for further data manipulation or visualization.
4. **Microsoft Excel or any SQL-compatible database**: Can be used as an alternative environment to run SQL queries.
5. **GitHub**: For version control and sharing the project with others.

## Copyright Notice

This dataset was sourced from Kaggle, but the analysis and insights presented in this repository are the result of my own work. 

- **Dataset Source**: [Heart Attack Data (Kaggle)](https://www.kaggle.com/datasets/sashavir/heart-attack-analysis-prediction-dataset)
- **Analysis and Insights**: Copyright (c) 2025 [Salahuddin Ahmed]

Please do not use this analysis without proper attribution to the author. The analysis cannot be claimed as your own.
 [Kaggle Heart Attack Dataset]() and is licensed under the MIT License.

The dataset and associated code are released under the MIT License.

