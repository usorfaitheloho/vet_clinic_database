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

-- List all vets and their specialties, including vets with no specialties.

SELECT 
vets.name, species.name 
FROM vets 
LEFT JOIN specialization 
ON vets.id = specialization.vets_id 
LEFT JOIN species 
ON species.id = specialization.species_id 
ORDER BY vets.id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.

SELECT animals.name 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
JOIN vets 
ON vets.id = visits.vet_id 
WHERE vets.name = 'Stephanie Mendez' AND visits.date_of_vist >= '2020-04-1' AND visits.date_of_vist <= '2020-08-30';


--What animal has the most visits to vets?

SELECT 
animals.name, 
COUNT(visits.animal_id) 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
GROUP BY animals.name 
ORDER BY COUNT DESC LIMIT 1;


--Who was Maisy Smith's first visit?

SELECT 
animals.name 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
JOIN vets 
ON vets.id = visits.vet_id 
WHERE vets.name = 'Maisy Smith' 
ORDER BY visits.date_of_vist 
DESC LIMIT 1;

-- Details for most recent visit: animal information, vet information, and date of visit.

SELECT 
animals.*, visits.date_of_vist, vets.* 
FROM animals 
JOIN visits 
ON animals.id = visits.animal_id 
JOIN vets 
ON vets.id = visits.vet_id 
ORDER BY visits.date_of_vist 
DESC LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?

SELECT 
vets.name, COUNT(vets.name) AS num_of_visits 
FROM vets 
LEFT JOIN specialization 
ON vets.id = specialization.vets_id 
JOIN visits 
ON vets.id = visits.vet_id 
WHERE specialization.species_id IS NULL 
GROUP BY vets.name ORDER BY COUNT(vets.name) DESC;

--What specialty should Maisy Smith consider getting? Look for the species she gets the most.

SELECT 
species.name AS expected_specialty 
FROM animals JOIN visits ON animals.id = visits.animal_id 
JOIN vets ON vets.id = visits.vet_id JOIN species ON species.id = animals.species_id 
WHERE vets.name = 'Maisy Smith' GROUP BY species.name 
ORDER BY COUNT(DISTINCT animals.name) DESC LIMIT 1;