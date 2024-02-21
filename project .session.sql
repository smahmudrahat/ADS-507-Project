USE imdb; 

Drop TABLE Movies_Directory;

CREATE TABLE Movies_Directory (
    `index` INT,
    tconst VARCHAR(15) PRIMARY KEY ,
    titleType VARCHAR(50),
    primaryTitle VARCHAR(255),
    startYear INT,
    genres VARCHAR(100),
    averageRating DECIMAL(3,1)
);


DROP TABLE IF EXISTS Director;

CREATE TABLE Director (
    `index` INT PRIMARY KEY,
    nconst VARCHAR(15),
    primaryName VARCHAR(255),
    primaryProfession VARCHAR(255),
    tconst VARCHAR(15) NOT NULL,
    FOREIGN KEY (tconst) REFERENCES Movies_Directory(tconst)
);

DROP TABLE IF EXISTS Star;

CREATE TABLE Star (
    `index` INT PRIMARY KEY,
    nconst VARCHAR(15),
    primaryName VARCHAR(255),
    primaryProfession VARCHAR(255),
    tconst VARCHAR(15) NOT NULL,
    FOREIGN KEY (tconst) REFERENCES Movies_Directory(tconst)
);

DROP TABLE IF EXISTS Writer;

CREATE TABLE Writer (
    `index` INT PRIMARY KEY,
    nconst VARCHAR(15),
    primaryName VARCHAR(255),
    primaryProfession VARCHAR(255),
    tconst VARCHAR(15) NOT NULL,
    FOREIGN KEY (tconst) REFERENCES Movies_Directory(tconst)
);

Drop TABLE If EXISTS Movies_Box_office;

CREATE TABLE Movies_Box_office (
    `index` INT PRIMARY KEY,
    name VARCHAR(255),
    rating VARCHAR(50),
    genre VARCHAR(100),
    year INT,
    released VARCHAR(100),
    score DECIMAL(3, 1),
    votes BIGINT,
    director VARCHAR(255),
    writer VARCHAR(255),
    star VARCHAR(255),
    country VARCHAR(100),
    budget BIGINT,
    gross BIGINT,
    company VARCHAR(255),
    runtime INT,
    tconst VARCHAR(15),
    FOREIGN KEY (tconst) REFERENCES Movies_Directory(tconst)
);

DROP TABLE IF EXISTS Streaming;

CREATE TABLE Streaming (
    `index` INT,
    Unnamed_0 INT,
    ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Year INT,
    Age VARCHAR(50),
    Rotten_Tomatoes DECIMAL(4,1),
    Netflix BOOLEAN,
    Hulu BOOLEAN,
    Prime_Video BOOLEAN,
    Disney_Plus BOOLEAN,
    Type INT,
    tconst VARCHAR(15),
    FOREIGN KEY (tconst) REFERENCES Movies_Directory(tconst)
);

