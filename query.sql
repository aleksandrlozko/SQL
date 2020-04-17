--TASK 1--
SELECT COUNT(name) AS amount, rating
FROM movies
GROUP BY rating
HAVING rating IN ('R', 'TV-14', 'TV-MA')
ORDER BY amount;

--TASK 2--
SELECT movies.name, movie_genres.movie_genres AS genre, movies.duration
FROM movies 
JOIN movie_genres 
ON movies.name = movie_genres.movie_name
ORDER BY movies.duration DESC;

--TASK 3--
SELECT movies.release_year AS year, COUNT(movies.name) AS amount, movie_country.movie_country AS country
FROM movies
JOIN movie_country
ON movies.director = movie_country.movie_director
JOIN movie_genres 
ON movies.name = movie_genres.movie_name
GROUP BY movies.release_year, movie_country.movie_country
ORDER BY movies.release_year;
