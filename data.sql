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
VALUES ('Charmander','2020-2-8',0,false,-11);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Plantmon','2021-11-15',2,false,-5.7);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Squirtle','1993-04-02',3,false,-12.13);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Angemon','2005-06-12',1,true,-45);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Boarmon','2005-06-07',7,true,20.4);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Blossom','1998-10-13',3,true,17);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Ditto','2022-05-14',4,true,22);


/* owners table insertion*/
INSERT INTO owners (full_name,age) VALUES ('Sam Smith', 34);

INSERT INTO owners (full_name,age) VALUES ('Jennifer Orwell', 19);

 INSERT INTO owners (full_name,age) VALUES ('Bob', 45);

 INSERT INTO owners (full_name,age) VALUES ('Melody Pond', 77);

 INSERT INTO owners (full_name,age) VALUES ('Dean Winchester', 14);

 INSERT INTO owners (full_name,age) VALUES ('Jodie Whittaker', 38);

 /*species table insertion*/
 INSERT INTO species (name) VALUES ('Pokemon');

 INSERT INTO species (name) VALUES ('Digimon');

 --Modify your inserted data so that if the name ends in mon it will be 'Digimon';
 UPDATE animals SET species_id = 2 WHERE name like '%mon';

 --All other animals are Pokemon;
 UPDATE animals SET species_id = 1 WHERE name not like '%mon';

  -- Modify your inserted animals to include owner information (owner_id);

  -- Sam Smith owns Agumon.
     UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon','Pikachu');

  -- Jennifer Orwell owns Gabumon and Pikachu.
      UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon','Plantmon');

  -- Bob owns Devimon and Plantmon.
      UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander','Squirtle','Blossom');

  -- Melody Pond owns Charmander, Squirtle, and Blossom.
     UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander','Squirtle','Blossom');

  -- Dean Winchester owns Angemon and Boarmon.
     UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon','Boarmon');

 -- Insert data into vets table

    INSERT INTO vets
    (name,age,date_of_graduation) 
    VALUES('William Tatcher',45,'April 23,2000'),
    ('Maisy Smith',26,'January 17, 2019'),
    ('Stephanie Mendez', 64, 'May 4,1981'),
    ('Jack Harkness',38, 'June 8, 2008');

--Insert data into specialization table

     INSERT INTO specialization(
         vet_id, species_id
         ) 
        VALUES 
        (1,1),(3,2),(3,1),(4,2);

--Insert into visit table

 INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES 
 (1, 1, 'May 24, 2020'), (1, 3, 'July 22, 2020'), 
 (2, 4, 'February 2, 2021'), (3, 2, 'January 5, 2020'), 
 (3, 2, 'March 8, 2020'),(3, 2, 'May 14, 2020'), 
 (4, 3, 'May 4, 2021'), (5, 4, 'February 24, 2021'),
 (6, 2, 'December 21, 2019'),  (6, 1, 'August 10, 2020'), 
 (6, 2, 'April 7, 2021'), (7, 3, 'September 29, 2019'), 
 (8, 4, 'October 3, 2020'),(8, 4, 'November 4, 2020'), 
 (9, 2, 'January 24, 2019'),  (9, 2, 'May 15, 2019'),
  (9, 2, 'February 27, 2020'), (9, 2, 'August 3, 2020'),
  (10, 3, 'May 24, 2020'),(10, 1, 'January 11, 2021');
    