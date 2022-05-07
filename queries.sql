/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals where name like '%mon';

SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-12-31';

 SELECT * FROM animals where neutered = true AND escape_attempts < 3;

 SELECT date_of_birth FROM animals WHERE name IN ('Agumon',  'Pikachu');

 SELECT name,escape_attempts FROM animals WHERE weight_kg > 10.5;

 SELECT * FROM animals WHERE neutered = true;

 SELECT * FROM animals WHERE name NOT IN ('Gabumon');

 SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 ;

 BEGIN;
UPDATE animals SET species = 'unspecified';

SELECT * FROM animals;

ROLLBACK;

UPDATE animals SET species = 'digimon' WHERE name like '%mon';

BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon%';

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;

COMMIT;

/* To delete all from tables and restore it back*/
BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '01-01-2022';
SAVEPOINT delete_animals;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO delete_animals;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) AS average FROM animals;

SELECT neutered, COUNT(escape_attempts) AS count FROM animals WHERE escape_attempts > 0 GROUP BY neutered;
SELECT species,MIN(weight_kg),MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth >= '1990-1-1' 
AND date_of_birth <= '2000-12-31' GROUP BY species; 


-- what animals belong to Melody Pond
SELECT name FROM animals A JOIN owners O ON O.id = A.owner_id WHERE full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon)
SELECT A.name FROM animals A JOIN species S ON S.id = A.species_id WHERE S.NAME = 'Pokemon';

-- List of all owners and their animals, remember to include those that don't own animals

SELECT 
owners.full_name, animals.name 
FROM owners 
LEFT JOIN animals ON owners.id = animals.owner_id;

-- How many animals are there per species?

SELECT 
species.name, COUNT(animals.name)
FROM species 
JOIN animals 
ON species.id = animals.species_id 
GROUP BY species.name;

-- List all Digimon owned by Jenniffer Orwell

SELECT
  animals.name 
  FROM species 
  JOIN animals 
  ON species.id = animals.species_id JOIN owners ON owners.id = animals.owner_id   
  WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Ornwell';

-- List all animals owned by Dean Winchester that haven't tried to escape

SELECT 
  animals.name 
  FROM owners 
  JOIN animals 
  ON owners.id = animals.owner_id 
  WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

  -- Who owns the most animals

SELECT
  owners.full_name, 
  COUNT(animals.name) 
  FROM owners 
  JOIN animals 
  ON owners.id = animals.owner_id 
  GROUP BY owners.full_name 
  ORDER BY COUNT DESC LIMIT 1;

-- who was the last animal seen by William Tatcher?

SELECT 
animals.name 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
JOIN vets 
ON vets.id = visits.vet_id 
WHERE vets.name = 'William Tatcher' 
ORDER BY visits.date_of_vist DESC LIMIT 1; 


-- How many different animals did stephanie Mendez see

SELECT
COUNT(animals.name) 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
JOIN vets 
ON vets.id = visits.vet_id 
WHERE vets.name = 'Stephanie Mendez';
