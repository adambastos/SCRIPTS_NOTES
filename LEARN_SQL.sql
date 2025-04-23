/*Show first name, last name, and gender of patients whose gender is 'M'*/
SELECT first_name, last_name, gender from patients where gender = 'M';

/*Show first name and last name of patients who does not have allergies. (null)*/
SELECT first_name, last_name FROM patients where allergies is null;

/*Show first name of patients that start with the letter 'C'*/
SELECT first_name FROM patients WHERE first_name like 'C%';

/*Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)*/
SELECT first_name, last_name FROM patients where weight between 100 and 120;

/*Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA*/
UPDATE PATIENTS SET ALLERGIES = 'NKA' WHERE ALLERGIES IS NULL;

/*Show first name and last name concatinated into one column to show their full name.*/
SELECT concat(first_name, ' ', last_name) as full_name from patients;

/*Show first name, last name, and the full province name of each patient.*/
SELECT first_name, last_name, province_name from patients join province_names on province_names.province_id = patients.patient_id;

/*Show how many patients have a birth_date with 2010 as the birth year.*/
SELECT COUNT(*) AS total_patients from patients where year(birth_date) = 2010;

/*Show the first_name, last_name, and height of the patient with the greatest height.*/
SELECT FIRST_NAME, LAST_NAME MAX(height) AS height FROM PATIENTS;

/*Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000*/
SELECT * FROM PATIENTS WHERE PATIENT_ID IN(1,45,534,879,1000);

/*Show the total number of admissions*/
SELECT COUNT(*) ADMISSIONS FROM ADMISSIONS;

/*Show all the columns from admissions where the patient was admitted and discharged on the same day.*/
SELECT * FROM ADMISSIONS WHERE ADMISSION_DATE = DISCHARGE_DATE;

/*Show the patient id and the total number of admissions for patient_id 579.*/
SELECT PATIENT_ID, COUNT(ADMISSION_DATE) AS TOTAL_ADMISSIONS FROM ADMISSIONS WHERE PATIENTE_ID = 579;

/*Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.*/
SELECT distinct(city) as unique_cities FROM patients WHERE province_id = 'ns';

/*Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70*/
SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE FROM PATIENTS WHERE HEIGHT > 160 AND WEIGHT > 70;

/*Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'*/
SELECT first_name, last_name, allergies FROM patients WHERE city = 'Hamilton' and allergies is not null

SELECT LOTE_LOT as CONTADOR_MATERIAL, LOJA + 1000 AS CENTRO FROM  

SELECT LOTE.CODI_PSV, 