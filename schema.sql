/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INTEGER NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL,
    PRIMARY KEY(id) 
    );
    ALTER TABLE animals ADD COLUMN species VARCHAR(20);


-- Create table named vets 

CREATE TABLE vets(
  id INT GENERATED ALWAYS AS IDENTITY, 
  name VARCHAR(255), 
  age INT, 
  date_of_graduation DATE,
  PRIMARY KEY(id)
  );

-- create specialization table joining table

CREATE TABLE specialization(
  vets_id INT, 
  species_id INT);

-- Add vets_id foreign key refrencing vets table

ALTER TABLE specialization
ADD FOREIGN KEY (vets_id) 
REFERENCES vets (id) 
ON DELETE CASCADE;

-- Add species_id foreign key refrencing species table

ALTER TABLE specialization 
ADD FOREIGN KEY (species_id) 
REFERENCES species (id) 
ON DELETE CASCADE;

--create a visit table joining vets and animals

CREATE TABLE visits(
  id INT GENERATED ALWAYS AS IDENTITY,
  animal_id INT, 
  vet_id INT, 
  date_of_vist DATE
  );

-- Add animal_id foreign refering animals table

ALTER TABLE visits 
ADD FOREIGN KEY (animal_id) 
REFERENCES animals (id) 
ON DELETE CASCADE;

--Add vet_id foreign key referencing vet table

ALTER TABLE visits 
ADD FOREIGN KEY (vet_id) 
REFERENCES vets (id) 
ON DELETE CASCADE;