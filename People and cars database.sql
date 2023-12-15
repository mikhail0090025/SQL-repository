CREATE DATABASE IF NOT EXISTS MyDB;
USE MyDB;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Car;
CREATE TABLE Car(id INT PRIMARY KEY, YearProduced SMALLINT, color ENUM('Red', 'Green', 'Black', 'White', 'Yellow', 'Blue'));
CREATE TABLE Person(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), surname VARCHAR(30), birthday DATETIME, car_id INT UNIQUE, FOREIGN KEY(car_id) REFERENCES Car(id));
INSERT INTO Car (id, YearProduced, color) VALUES
    (1, 2010, 'Red'),
    (2, 2011, 'Green'),
    (3, 2012, 'Black'),
    (4, 2013, 'White'),
    (5, 2014, 'Yellow'),
    (6,2015, 'Blue'),
    (7,2016, 'Red'),
    (8,2017, 'Green'),
    (9,2018, 'Black'),
    (10,2019, 'White'),
    (11,2020, 'Yellow'),
    (12,2021, 'Blue'),
    (13,2022, 'Red'),
    (14,2023, 'Green'),
    (15,2024, 'Black'),
    (16,2025, 'White'),
    (17,2026, 'Yellow'),
    (18,2027, 'Blue'),
    (19,2028, 'Red'),
    (20,2029, 'Green'),
    (21,2030, 'Black');
INSERT INTO Person (name, surname, birthday, car_id) VALUES
    ('John', 'Doe', '1990-01-15', 1),
    ('Jane', 'Smith', '1985-04-22', 2),
    ('Bob', 'Johnson', '1992-07-08', 3),
    ('Alice', 'Williams', '1988-09-30', 4),
    ('Charlie', 'Brown', '1983-11-12', 5),
    ('Eva', 'Miller', '1994-02-28', 6),
    ('David', 'Davis', '1979-05-19', 7),
    ('Grace', 'Moore', '1987-08-02', 8),
    ('Frank', 'Jones', '1993-12-05', 9),
    ('Helen', 'Clark', '1990-03-14', 10),
    ('George', 'Taylor', '1988-06-25', 11),
    ('Ivy', 'Lee', '1981-09-17', 12),
    ('Jack', 'Carter', '1986-01-07', 13),
    ('Katie', 'Hill', '1977-04-04', 14),
    ('Louis', 'Adams', '1995-07-21', 15),
    ('Mia', 'King', '1980-10-11', 16),
    ('Nathan', 'Cooper', '1985-12-30', 17),
    ('Olivia', 'Evans', '1982-02-09', 18),
    ('Peter', 'Ward', '1991-05-23', 19),
    ('Quinn', 'Fisher', '1989-08-14', 20),
    ('Rachel', 'Perry', '1984-11-26', 21);
SELECT UPPER(CONCAT(name, " ", surname)) AS Name,
DATE_FORMAT(birthday, '%y.%m.%d') AS Birthday,
Car.YearProduced AS YEAR_PRODUCED
FROM Person
JOIN Car ON car_id = Car.id
WHERE birthday > '1990-00-00'
ORDER BY Person.birthday