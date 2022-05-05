/* Populate database with sample data. */

 INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
 VALUES ('Agumon','2020-2-3',0,true,10.23);

 INSERT INTO animals (name,date_of_birth,escape_attempts,neutered,weight_kg) 
 VALUES ('Gabumon','2018-11-15',2,true,8);

 INSERT INTO animals (name,date_of_birth,escape_attempts,neutered,weight_kg) 
 VALUES ('Pikachu','2021-01-07',1,false,15.04);

 INSERT INTO animals (name,date_of_birth,escape_attempts,neutered,weight_kg) 
 VALUES ('Devimon','2017-05-12',5,true,11);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Charmander','2020-2-8',0,false,11);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Plantmon','2021-11-15',2,false,5.7);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Squirtle','1993-04-02',3,false,12.13);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Angemon','2005-06-12',1,true,45);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Boarmon','2005-06-07',7,true,20.4);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Blossom','1998-10-13',3,true,17);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Ditto','2022-05-14',4,true,22);

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