-- drop database if exists
DROP DATABASE IF EXISTS Weather;
DROP DATABASE IF EXISTS weather;  

-- create database music 
CREATE database weather; 

-- user database music 
USE weather;

-- Drop tables if they exists 
DROP TABLE IF EXISTS location; 
DROP TABLE IF EXISTS weather_data; 

-- location table 
CREATE TABLE location(
	Id int NOT NULL PRIMARY KEY
	,name VARCHAR (255)
	,country VARCHAR(255)
	,area VARCHAR(255)
	,elevation VARCHAR(255)
    ,population VARCHAR(255)
); 

-- insert data 
INSERT INTO location VALUES 
(1 ,'London', 'England', '1.572 skm', '11 m', '8,982 million')
, (2, 'Nice','France', '71,92 skm', '4 m', '342.522')
, (3, 'Rome', 'Italy', '1.285 skm', '21 m', '2,873 million')
, (4, 'Mykonos', 'Greece', '86,12 skm', '341 m', '10.134' )
, (5, 'Cluj-Napoca', 'Romania', '179,5 skm', '340 m', '303.047')
, (6, 'Copenhagen', 'Denmark', '179,8 skm', '91 m', '602.481')
, (7, 'Stockholm', 'Sweden', '188 skm', '28 m', '975.551')
, (8, 'Oslo', 'Norway', '454 skm', '23 m', '634.293');

-- create weather table
CREATE TABLE weather_data(
	Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT 
	,location_id INT 
	,local_time DATETIME
	,temperature INT
	,measureament_unit VARCHAR(2)
	,description VARCHAR(255)
	,precipitations VARCHAR(5)
	,humidity VARCHAR(5)
	,wind VARCHAR(10)
	,FOREIGN KEY (location_id) REFERENCES location(ID)
); 