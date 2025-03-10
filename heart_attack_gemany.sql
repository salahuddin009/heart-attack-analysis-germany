
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