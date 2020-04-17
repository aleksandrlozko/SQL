CREATE TABLE movies (
    name         VARCHAR2(50) NOT NULL,
    director     VARCHAR2(60) NOT NULL,
    release_year NUMBER(4),
    rating       VARCHAR2(10),
    duration     VARCHAR2(10)
);

ALTER TABLE movies ADD CONSTRAINT movies_pk PRIMARY KEY (name, director);

CREATE TABLE cast (
    cast VARCHAR2(60) NOT NULL
);

ALTER TABLE cast ADD CONSTRAINT cast_pk PRIMARY KEY (cast);

CREATE TABLE movie_cast(
    movie_name      VARCHAR2(50) NOT NULL,
    movie_director  VARCHAR2(60) NOT NULL,
    movie_cast      VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_cast ADD CONSTRAINT movie_cast_pk PRIMARY KEY (movie_name, movie_director, movie_cast);

ALTER TABLE movie_cast ADD CONSTRAINT movie_cast_cast_fk FOREIGN KEY (movie_cast) REFERENCES cast(cast);

ALTER TABLE movie_cast ADD CONSTRAINT movie_cast_movie_fk FOREIGN KEY (movie_name, movie_director) REFERENCES movies(name, director);

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