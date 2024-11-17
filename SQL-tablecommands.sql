CREATE TABLE movie(  
    movieId int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    movieName VARCHAR(255) NOT NULL,
    movieYear int NOT NULL,
    genreName VARCHAR(255),
    FOREIGN KEY (genreName) REFERENCES genre(genreName)
);

CREATE TABLE genre(
    genreName VARCHAR(255) PRIMARY KEY NOT NULL
);

CREATE TABLE movieUser(
    userId int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    userName VARCHAR(255),
    password VARCHAR(255),
    birthYear int
);

CREATE TABLE favourites(
    favouriteId int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    userId int,
    FOREIGN KEY (userId) REFERENCES movieUser(userId),
    movieId int,
    FOREIGN KEY (movieId) REFERENCES movie(movieId)
);

CREATE TABLE reviews(
    reviewId int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    userId int,
    FOREIGN KEY (userId) REFERENCES movieUser(userId),
    movieId int,
    FOREIGN KEY (movieId) REFERENCES movie(movieId),
    stars FLOAT,
    reviewText VARCHAR(500)
);

INSERT INTO genre VALUES 
('drama'),('comedy'),('scifi'),('fantasy'),('action'),('triller');

INSERT INTO movie (movieName, movieYear, genreName) VALUES 
('Inception', 2010, 'action'),
('The Terminator', 1984, 'action'),
('Tropic Thunder', 2008, 'comedy'),
('Borat', 2006, 'comedy'),
('Interstellar', 2014, 'drama'),
('Joker', 2019, 'drama');

INSERT INTO movieUser (name, userName, password, birthYear) VALUES
('reimarii', 'Reima Riihimäki', 'qwerty123', 1986),
('lizzy', 'Lisa Simpson', 'abcdef', 1991 ),
('boss', 'Ben Bossy', 'salasana', 1981 )
