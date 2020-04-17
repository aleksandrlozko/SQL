CREATE TABLE movies (
    name         VARCHAR2(50) NOT NULL,
    director     VARCHAR2(60) NOT NULL,
    release_year NUMBER(4),
    rating       VARCHAR2(10),
    duration     VARCHAR2(10)
);

ALTER TABLE movies ADD CONSTRAINT movies_pk PRIMARY KEY (name, director);

CREATE TABLE country (
    country VARCHAR2(60) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY (country);

CREATE TABLE movie_country(
    movie_name      VARCHAR2(50) NOT NULL,
    movie_director  VARCHAR2(60) NOT NULL,
    movie_country      VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_country  ADD CONSTRAINT movie_country_pk PRIMARY KEY (movie_name, movie_director, movie_country);

ALTER TABLE movie_country  ADD CONSTRAINT movie_country_country_fk FOREIGN KEY (movie_country) REFERENCES country(country);

ALTER TABLE movie_country  ADD CONSTRAINT movie_country_movie_fk FOREIGN KEY (movie_name, movie_director) REFERENCES movies(name, director);

CREATE TABLE genres (
    genres VARCHAR2(60) NOT NULL
);

ALTER TABLE genres ADD CONSTRAINT genres_pk PRIMARY KEY (genres);

CREATE TABLE movie_genres(
    movie_name      VARCHAR2(50) NOT NULL,
    movie_director  VARCHAR2(60) NOT NULL,
    movie_genres      VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_genres ADD CONSTRAINT movie_genres_pk PRIMARY KEY (movie_name, movie_director, movie_genres);

ALTER TABLE movie_genres ADD CONSTRAINT movie_genres_genres_fk FOREIGN KEY (movie_genres) REFERENCES genres(genres);

ALTER TABLE movie_genres ADD CONSTRAINT movie_genres_movie_fk FOREIGN KEY (movie_name, movie_director) REFERENCES movies(name, director);
