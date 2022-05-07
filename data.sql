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

--insert data for vets 

INSERT INTO vets(
  name, 
  age, 
  date_of_graduation
  )
  VALUES
  ('William Tatcher', 45, 'April 23, 2000'), 
  ('Maisy Smith', 26, 'January 17, 2019'), 
  ('Stephanie Mendez', 64, 'May 4, 1981'), 
  ('Jack Harkness', 38, 'June 8, 2008');

  --insert data for specialization

  INSERT INTO specialization(
    vets_id, species_id
    ) 
    VALUES
    (1, 1), 
    (3, 2), 
    (3, 1), 
    (4, 2);

--insert data for visit

INSERT INTO visits (
  animal_id, vet_id, date_of_vist
  )
  VALUES
  (1, 1, 'May 24, 2020'), 
  (1, 3, 'July 22, 2020'), 
  (2, 4, 'February 2, 2021'), 
  (3, 2, 'January 5, 2020'), 
  (3, 2, 'March 8, 2020'), 
  (3, 2, 'May 14, 2020'), 
  (4, 3, 'May 4, 2021'), 
  (5, 4, 'February 24, 2021'), 
  (6, 2, 'December 21, 2019'), 
  (6, 1, 'August 10, 2020'), 
  (6, 2, 'April 7, 2021'), 
  (7, 3, 'September 29, 2019'), 
  (8, 4, 'October 3, 2020'), 
  (8, 4, 'November 4, 2020'), 
  (16, 2, 'January 24, 2019'), 
  (16, 2, 'May 15, 2019'), 
  (16, 2, 'February 27, 2020'), 
  (16, 2, 'August 3, 2020'), 
  (17, 3, 'May 24, 2020'), 
  (17, 1, 'January 11, 2021');