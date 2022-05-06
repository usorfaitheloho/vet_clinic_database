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
