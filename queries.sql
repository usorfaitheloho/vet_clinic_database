/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals where name like '%mon';

SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-12-31';

 SELECT * FROM animals where neutered = true AND escape_attempts < 3;

 SELECT date_of_birth FROM animals WHERE name IN ('Agumon',  'Pikachu');

 SELECT name,escape_attempts FROM animals WHERE weight_kg > 10.5;

 SELECT * FROM animals WHERE neutered = true;

 SELECT * FROM animals WHERE name NOT IN ('Gabumon');

 SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 ;