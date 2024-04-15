create database movies_collection; 

use movies_collection; 

CREATE TABLE movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    MovieName VARCHAR(255) NOT NULL,
    Rating DECIMAL(3,1),
    CountOfRatings VARCHAR(255),
    ReleaseDate VARCHAR(255),
    Month VARCHAR(255),
    Year VARCHAR(255),
    Country VARCHAR(255),
    Budget VARCHAR(255),
    DomesticWeekend VARCHAR(255),
    DomesticWeekendGrossDate VARCHAR(255),
    WorldwideGross VARCHAR(255)
);



select * from movies;
 
 
 /* 1.	How many unique release years are there for movies? */
 
 select * from Movie; 
 
 SELECT COUNT(DISTINCT year (ReleaseDate)) AS UniqueReleaseYears
FROM movies;
 
/* 2.	Which  year has the highest number of movie releases? */

select * from Movie; 


select year ,count(MovieName) as 'Highest number of movie'
from movies
group by year
order by 'Highest number of movie' desc
limit 1; 

/*3.	In which month were the most movies released? */

select * from movies; 
select Month ,count(MovieName) as 'Maximum movie'
from movies
group by Month 
order by 'Maximum movie' desc 
limit 1;


/* 4.	Which country has the highest number of movies? */
select * from movies;
select country,count(MovieName) as 'Total movie' from movies
group by country 
order by 'Total movie' desc; 

/* 5.	From which country has the highest revenue been generated? */ 

select * from movies;  
select country , sum(replace(replace(WorldwideGross,'$',''),',','')) as 'Total revenue'
from movies
group by country 
order by 'Total revenue' desc;  

/* 6.	How many movies have the minimum budget and how many have the maximum budget? */  

select avg(Budget) from movies;   

select 
MovieName,
case 
    when budget > 92033888.18875502 then 'Maximum Budget'
    when budget < 92033888.18875502 then 'Minimun Budget'
    else 'Not consider'
    end as Movie_Budget 
from movies;

/* 7.	How many movies have the minimum domestic gross and how many have the maximum domestic gross? */
select avg(DomesticWeekend) from movies;

select 
MovieName,
case 
    when DomesticWeekend > 16510011.570281124  then 'Minimum domestic gross'
    when DomesticWeekend < 16510011.570281124  then 'Maximum domestic gross'
    else 'Decent domestic gross'
    end as Movie_Domestic_earning
from movies;

 
 
/* 8.	Which movie has the highest domestic gross? */
select * from movies;

SELECT MAX(CAST(DomesticWeekend AS SIGNED)) FROM movies;

 
/* 9.	Which movie has the highest worldwide gross? */

SELECT MAX(CAST(WorldwideGross AS SIGNED)) as 'Highest world wide gross' FROM movies;  

/*10.	TOP 3  movie  that had the highest budget? */

SELECT MovieName, MAX(CAST(Budget AS SIGNED)) AS 'maximum budget'
FROM movies
GROUP BY MovieName
ORDER BY `maximum budget` DESC
limit 3; 

/* 11 	TOP 3 movie that  had the lowest budget? */
SELECT MovieName, Min(CAST(Budget AS SIGNED)) AS 'minimum budget'
FROM movies
where budget > 0
GROUP BY MovieName
ORDER BY `minimum budget` asc
limit 3; 

/* 12. What is the total budget of all movies released in 1994?  */

select sum(budget) as 'Total Budget' from movies
where year = 1994;  

/* 13. How many movies were released in India? */

select count(MovieName) as "Movie released in inida" from movies 
where country ='India'; 

/* 14.	How many movies have a budget greater than $50,000,000? */

select count(MovieName) as "budget Greater than 50000000" from movies
where budget > "50,000,000"; 


/* 15 which   top three movie has the highest rating ? */

select MovieName,max(Rating) as 'Rating'
from movies
group by MovieName
order by `Rating` desc 
limit 3;  

/* How many movies that have rating greater than 8.8 IMDB, with their world wide collection ? */
select MovieName,Rating,Budget,WorldwideGross from movies 
where rating > 8.8
order by rating desc; 



/* Top 5 movies based on worldwidegross */
select `MovieName`,sum(WorldwideGross),
  rank() over(order by sum(WorldwideGross) desc) as "Movie Rank"
  from movies
  group by `MovieName`
  limit 5;   




 
 








