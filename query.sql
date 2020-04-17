--TASK 1--
SELECT COUNT(name) AS amount, rating
FROM movies
GROUP BY rating
HAVING rating IN ('R', 'TV-14', 'TV-MA')
ORDER BY amount;

--TASK 2--
SELECT movie_genres.movie_genres AS genres, round(COUNT(name) * 100 / (SELECT SUM(COUNT(movie_genres)) FROM movie_genres GROUP BY movie_genres), 1) AS persentage
FROM movies
JOIN movie_genres 
ON movies.name = movie_genres.movie_name
GROUP BY movie_genres.movie_genres;

--TASK 3--
SELECT movies.release_year AS year, COUNT(movies.name) AS amount
FROM movies
GROUP BY movies.release_year
ORDER BY movies.release_year;
