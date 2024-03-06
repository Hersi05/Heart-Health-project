select * from heart_health;
		
			--- remove duplicate

select distinct * from heart_health;

			--- Names and Ages of all Individuals:

select Name, Age from heart_health; 

			--- Average age 
select avg(age) As Average_Age from heart_health;

			--- People who have had a Heart Attack
            
select name from heart_health
where 'HeartAttack' = 1;

			--- Smokers with High Cholesterol
            
select name, Weight from heart_health
where Smoker = 'yes' AND Cholesterol > 200;

			--- Females with Low Exercise Hours:
            
select name, height from heart_health
where Gender = 'female' and Exercise < 3;
			
            --- Average Cholesterol Levels by Gender:

select gender, avg(cholesterol) AS Average_cholesterol
from heart_health
group by Gender;

			--- Individuals with BMI above 25: BMI is calculated as Weight/height

select name from heart_health
where (weight / ((height / 100) * (height / 100))) > 25;

			--- Total Individuals with BMI above 25. BMI is calculated as Weight/height
            
select count(name) from heart_health
where (weight / ((height / 100) * (height / 100))) > 25;

			--- Individuals with Highest Glucose Levels by Gender
            
select name from heart_health
where Gender = 'female'
order by Glucose desc
limit 1;

select name from heart_health
where Gender = 'male'
order by Glucose desc
limit 1;
             
             --- Smokers with High Cholesterol or High Glucose

select  distinct name, age from heart_health
where Smoker = 'yes' and (Cholesterol > 200 or glucose > 150)
order by age asc;


