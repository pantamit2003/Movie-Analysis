# Movie-Analysis(SQL)
# About 

# IMDB Top 250 Movies 
The IMDB Top 250 Movies Excel file contains a comprehensive list of the top-rated movies on IMDb, ranked based on user ratings. The file provides essential details about each movie, including its title, rating, count of ratings by users, release date, country of origin, budget, domestic gross (with country name), domestic weekend gross (with country name and date), and worldwide gross. 

 # Features:
•	Movie Names: The names of the top-rated movies on IMDb are listed in this column.

•	Ratings: The ratings column displays the IMDb ratings for each movie, indicating the average score given by users.

•	Count of Ratings: This column shows the total number of ratings submitted by users for each movie.

•	Release Date: The release date column specifies the date when each movie was officially released.

•	Country: The country column indicates the country of origin for each movie.

•	Budget: This column provides information about the estimated budget for producing each movie.

•	Domestic Gross: The domestic gross column displays the total earnings generated by each movie within its country of origin.

•	Domestic Weekend Gross: This column shows the earnings generated by each movie during its opening weekend within its country of origin, along with the date of the opening weekend.

•	Worldwide Gross: The worldwide gross column displays the total earnings generated by each movie globally, including earnings from all countries where it was released. 

# Purpose:
The IMDB Top 250 Movies Excel file serves as a valuable resource for movie enthusiasts, researchers, and industry professionals interested in exploring the highest-rated movies on IMDb and analyzing their key performance metrics. Users can utilize this data for various purposes, such as conducting market analysis, studying trends in movie ratings and earnings, and identifying successful films across different genres and countries. Additionally, the file facilitates comparisons between movies based on their ratings, financial performance, and other factors, enabling users to make informed decisions related to movie selection, investment, or research.


| Column Name            | Description                                        | Data Type  |
|------------------------|----------------------------------------------------|------------|
| Movies Names           | The names of the top-rated movies.                 | VARCHAR(100) |
| Rating out of 10       | The IMDb rating out of 10 for each movie.          | FLOAT(2,1)  |
| Count of Ratings       | The total number of ratings submitted by users for each movie. | VARCHAR(10) |
| Release Date           | The date when each movie was officially released.  | DATE       |
| Month                  | The month in which the movie was released.         | VARCHAR(10) |
| Year                   | The year in which the movie was released.          | INT        |
| Country                | The country of origin for each movie.              | VARCHAR(30) |
| Budget                 | The estimated budget for producing each movie.     | VARCHAR(20) |
| Domestic Weekend       | The earnings generated by each movie during its opening weekend within its country of origin. | VARCHAR(20) |
| Domestic Weekend Gross Date | The date of the opening weekend for each movie.   | DATE       |
| Worldwide Gross        | The total earnings generated by each movie globally, including earnings from all countries where it was released. | VARCHAR(20) | 



# Approach Used:

1.Auto Increment Movie ID: Ek auto_increment column banaya gaya hai movie ID ke liye, jo primary key ke roop mein kaam karega.

2.Not Null Constraint on Sales Column: Sales column par not null constraint lagaya gaya hai, jisse har ek entry mein sales ki value compulsory hai.

3.Transformed Release Date: Release date column ke data ko alag-alag columns mein divide kiya gaya hai:

Month Column: Movie release month ke liye.
Year Column: Movie release year ke liye.
Country Column: Movie release country ke liye.
4. Excel Text to Columns Transformation: Is transformation ke liye Excel ke Text to Columns feature ka istemal kiya gaya hai, jisse data ko alag-alag columns mein split kiya ja sakta hai.



