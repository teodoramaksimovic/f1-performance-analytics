CREATE TABLE drivers (
    driverId INT PRIMARY KEY,
    code VARCHAR(10),
    forename VARCHAR(100),
    surname VARCHAR(100),
    nationality VARCHAR(100),
    "driver name" VARCHAR(200)
);

CREATE TABLE constructors (
    constructorId INT PRIMARY KEY,
    name VARCHAR(100),
    nationality VARCHAR(100)
);

CREATE TABLE races (
    raceId INT PRIMARY KEY,
    year INT,
    round INT,
    name VARCHAR(150),
    date DATE,
    "race country" VARCHAR(100)
);

CREATE TABLE status (
    statusId INT PRIMARY KEY,
    status VARCHAR(100)
);

CREATE TABLE results (
    resultId INT PRIMARY KEY,
    raceId INT REFERENCES races(raceId),
    driverId INT REFERENCES drivers(driverId),
    constructorId INT REFERENCES constructors(constructorId),
    grid INT,
    positionOrder INT,
    points FLOAT,
    laps INT,
    statusId INT REFERENCES status(statusId),
    win INT,
    podium INT,
    positions_gained FLOAT
);

CREATE TABLE qualifying (
    qualifyId INT PRIMARY KEY,
    raceId INT REFERENCES races(raceId),
    driverId INT REFERENCES drivers(driverId),
    constructorId INT REFERENCES constructors(constructorId),
    position INT,
    q1 VARCHAR(20),
    q2 VARCHAR(20),
    q3 VARCHAR(20)
);