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

CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY, 
    full_name VARCHAR(100) NOT NULL,
    age SMALLINT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INTEGER;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species (id) ON DELETE CASCADE;

ALTER TABLE animals ADD owner_id INTEGER;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners (id) ON DELETE CASCADE;

CREATE TABLE vets(id INT GENERATED ALWAYS AS IDENTITY,NAME VARCHAR(100),AGE INT,date_of_graduation DATE);
