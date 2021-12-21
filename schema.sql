/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT PRIMARY KEY NOT NULL,
    name varchar(100),
    date_of_birth date,
    escape_attempts INT,
    neutered boolean,
    weight_kg decimal
);

ALTER TABLE animals
ADD species TEXT;

CREATE TABLE owners (
    id SERIAL PRIMARY KEY NOT NULL,
    full_name varchar(255),
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY NOT NULL,
    name varchar(255)
);

ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('animals');
ALTER TABLE animals DROP species;

ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
    id SERIAL PRIMARY KEY NOT NULL,
    name varchar(255),
    age INT,
    date_of_graduation date
);

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY NOT NULL,
    vet_id INT,
    species_id INT,
    FOREIGN KEY (vet_id) REFERENCES vets(id),
    FOREIGN KEY (species_id) REFERENCES species(id)
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY NOT NULL,
    animal_id INT,
    vet_id INT,
    date_of_visit date,
    FOREIGN KEY (animal_id) REFERENCES animals(id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);