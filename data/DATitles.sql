-- 1 Q. How many rows are in the data_analyst_jobs table? 
-- 1 A.  1793
/*	
	SELECT count(*)
	FROM data_analyst_jobs
*/

-- 2 Q. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
-- 2 A. ExxonMobil
/*
	SELECT company
	FROM data_analyst_jobs 
	LIMIT 10
*/

-- 3 Q. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
-- 3 A.  TN --> 21 , TN+KY --> 27
/*
	SELECT COUNT(location)
	FROM data_analyst_jobs
	WHERE location = 'TN' OR location = 'KY'
*/

-- 4 Q. How many postings in Tennessee have a star rating above 4?
-- 4 A. 3
/*	
	SELECT COUNT(star_rating)
	FROM data_analyst_jobs
	WHERE location = 'TN' 
	AND star_rating > 4;
*/

-- 5 Q. How many postings in the dataset have a review count between 500 and 1000?
-- 5 A.  Non-inclusive: 150 Inclusive: 151
/*
	SELECT COUNT(review_count)
	FROM data_analyst_jobs
	WHERE review_count BETWEEN 500 AND 1000
*/

/* 6 Q. Show the average star rating for companies in each state. The output should show the state as state and 
the average rating for the state as avg_rating. Which state shows the highest average rating?*/
-- 6 A. Kansas 4.1 avg_stars
/*
	SELECT location AS state , AVG(star_rating) AS avg_rating
	FROM data_analyst_jobs
	GROUP BY location
*/

-- 7 Q. Select unique job titles from the data_analyst_jobs table. How many are there?
-- 7 A. 881
/*
	SELECT COUNT(DISTINCT(title))
	FROM data_analyst_jobs
*/

-- 8 Q. How many unique job titles are there for California companies?
-- 8 A. 230
/*	
	SELECT COUNT(DISTINCT(title))
	FROM data_analyst_jobs
	WHERE location = 'CA'
*/
-- 9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
-- 10. Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
-- 11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
-- 12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
-- BONUS: You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.

--Disregard any postings where the domain is NULL.
--Order your results so that the domain with the greatest number of hard to fill jobs is at the top.
--Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?
