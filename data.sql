/* Populate database with sample data. */

INSERT INTO animals VALUES (1, 'Agumon', '2020-02-03', 0, true, 10.23);
INSERT INTO animals VALUES (2, 'Gabumon', '2018-11-15', 2, true, 8);
INSERT INTO animals VALUES (3, 'Pikachu', '2021-01-07', 1, false, 15.04);
INSERT INTO animals VALUES (4, 'Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals VALUES (5, 'Charmander', '2020-02-08', 0, false, 11);
INSERT INTO animals VALUES (6, 'Plantmon', '2022-11-15', 2, true, -5.7);
INSERT INTO animals VALUES (7, 'Squirtle', '1993-04-02', 3, false, -12.13);
INSERT INTO animals VALUES (8, 'Angemon', '2005-06-12', 1, true, -45);
INSERT INTO animals VALUES (9, 'Boarmon', '2005-06-07', 7, true, 20.4);
INSERT INTO animals VALUES (10, 'Blossom', '1998-10-13', 3, true, 17);
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
TABLE animals;
BEGIN;
DELETE FROM animals;
ROLLBACK;
TABLE animals;
BEGIN;
  DELETE FROM animals WHERE date_of_birth > '2022-01-01';
  SAVEPOINT point_one;
  UPDATE animals SET weight_kg = weight_kg * -1;
  ROLLBACK TO SAVEPOINT point_one;
  UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;



