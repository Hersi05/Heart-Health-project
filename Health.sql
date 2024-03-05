select * from heart_health;
		
			--- remove duplicate

select distinct * from heart_health;

			--- Names and Ages of all Individuals 

select Name, Age from heart_health; 

			--- The average age 
select avg(age) As Average_Age from heart_health;

			--- People who have had a heart attack
            
select name from heart_health
where 'HeartAttack' = 1;

			--- The name and weights of individuals who are smokers and have high cholesterol 
            
select name, Weight from heart_health
where Smoker = 'yes' AND Cholesterol > 200;

			--- the names and heights of individuals who are females and exercise less than 3 hours per week
            
select name, height from heart_health
where Gender = 'female' and Exercise < 3;
			
            --- the names and average cholesterol levels for each gender

select gender, avg(cholesterol) AS Average_cholesterol
from heart_health
group by Gender;

			--- Th name of individual who have body mass index(BMI) above 25. BMI is calculated as Weight/height

select name from heart_health
where (weight / ((height / 100) * (height / 100))) > 25;

			--- Th total name of individual who have body mass index(BMI) above 25. BMI is calculated as Weight/height
            
select count(name) from heart_health
where (weight / ((height / 100) * (height / 100))) > 25;

			--- The name of individual who have the hightest glucose among female and male
            
select name from heart_health
where Gender = 'female'
order by Glucose desc
limit 1;

select name from heart_health
where Gender = 'male'
order by Glucose desc
limit 1;
             
             --- The name of individual are smokers, have high cholesterol over 200 or high glucose over 150

select  distinct name, age from heart_health
where Smoker = 'yes' and (Cholesterol > 200 or glucose > 150)
order by age asc;


