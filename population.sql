-------------------------
-- genres table
-------------------------
INSERT INTO genres(genres)
VALUES('Comedies');

INSERT INTO genres(genres)
VALUES('Kids TV');

INSERT INTO genres(genres)
VALUES('Stand-Up Comedy');

INSERT INTO genres(genres)
VALUES('Adventure');

INSERT INTO genres(genres)
VALUES('Family Movies');

INSERT INTO genres(genres)
VALUES('Documentaries');

INSERT INTO genres(genres)
VALUES('Horror');

INSERT INTO genres(genres)
VALUES('Dramas');

-------------------------
-- movies table
-------------------------
INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Norm of the North: King Sized Adventure', 'Richard Finn' , 2019, 'TV-PG', 90);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Jandino: Whatever it Takes', 'Tim Maltby', 2016, 'TV-MA', 94);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('#realityhigh', 'Fernando Lebrija' , 2017, 'TV-14', 99);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Automata', 'Gabe Ibáñez' , 2014, 'R', 110);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Fabrizio Copano: Solo pienso en mi', 'Rodrigo Toro' , 2017, 'TV-MA', 60);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Good People', 'Henrik Ruben Genz' , 2014, 'R', 90);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Joaquín Reyes: Una y no más', 'José Miguel Contreras' , 2017, 'TV-MA', 78);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Kidnapping Mr. Heineken', 'Daniel Alfredson' , 2015, 'R', 95);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Krish Trish and Baltiboy: Battle of Wits', 'Munjal Shroff' , 2013, 'TV-Y7', 62);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Krish Trish and Baltiboy: Best Friends Forever', 'Tilak Shetty' , 2016, 'TV-Y', 65);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Love', 'Gaspar Noé' , 2015, 'NR', 135);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Manhattan Romance', 'Tom OBrien' , 2014, 'TV-14', 98);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Moonwalkers', 'Antoine Bardou-Jacquet' , 2015, 'R', 96);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Rolling Papers', 'Mitch Dickman' , 2015, 'TV-MA', 79);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Stonehearst Asylum', 'Brad Anderson' , 2014, 'PG-13', 113);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('The Runner', 'Austin Stark' , 2015, 'R', 90);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('6 Years', 'Hannah Fidell' , 2015, '	NR', 80);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('City of Joy', 'Madeleine Gavin' , 2018, 'TV-MA', 77);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Laddaland', 'Sopon Sukdapisit' , 2011, 'TV-MA', 112);

INSERT INTO movies(name,director,release_year,rating,duration)
VALUES('Next Gen', 'Joe Ksander' , 2018, 'TV-PG', 106);

-------------------------
-- country table
-------------------------
INSERT INTO country(country)
VALUES('United Kingdom');

INSERT INTO country(country)
VALUES('United States');

INSERT INTO country(country)
VALUES('Spain');

INSERT INTO country(country)
VALUES('Bulgaria');

INSERT INTO country(country)
VALUES('Chile');

INSERT INTO country(country)
VALUES('Netherlands');

INSERT INTO country(country)
VALUES('France');

INSERT INTO country(country)
VALUES('Thailand');

INSERT INTO country(country)
VALUES('Belgium');

-------------------------
-- movie_country table
-------------------------
INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Norm of the North: King Sized Adventure', 'Richard Finn', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Jandino: Whatever it Takes', 'Tim Maltby', 'United Kingdom');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('#realityhigh', 'Fernando Lebrija', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Automata', 'Gabe Ibáñez', 'Bulgaria');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Fabrizio Copano: Solo pienso en mi', 'Rodrigo Toro' , 'Chile');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Good People', 'Henrik Ruben Genz', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Joaquín Reyes: Una y no más', 'José Miguel Contreras', 'Spain');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Kidnapping Mr. Heineken', 'Daniel Alfredson', 'Netherlands');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Krish Trish and Baltiboy: Battle of Wits', 'Munjal Shroff', 'Spain');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Krish Trish and Baltiboy: Best Friends Forever', 'Tilak Shetty', 'Spain');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Love', 'Gaspar Noé', 'France');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Manhattan Romance', 'Tom OBrien', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Moonwalkers', 'Antoine Bardou-Jacquet', 'France');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Rolling Papers', 'Mitch Dickman', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('Stonehearst Asylum', 'Brad Anderson', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('The Runner', 'Austin Stark', 'United States');

INSERT INTO movie_country(movie_name,movie_director,movie_country)
VALUES('6 Years', 'Hannah Fidell', 'United States');
