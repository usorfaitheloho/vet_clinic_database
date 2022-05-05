/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals where name like '%mon';

SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-12-31';

 SELECT * FROM animals where neutered = true AND escape_attempts < 3;

 SELECT date_of_birth FROM animals WHERE name IN ('Agumon',  'Pikachu');

 SELECT name,escape_attempts FROM animals WHERE weight_kg > 10.5;

 SELECT * FROM animals WHERE neutered = true;

 SELECT * FROM animals WHERE name NOT IN ('Gabumon');

 SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 ;

 SELECT COUNT(*) FROM animals;

 SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

 SELECT AVG(weight_kg) AS average FROM animals;

 SELECT neutered, COUNT(escape_attempts) AS count FROM animals WHERE escape_attempts > 0 GROUP BY neutered;
SELECT species,MIN(weight_kg),MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth >= '1990-1-1' 
AND date_of_birth <= '2000-12-31' GROUP BY species; 