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

INSERT INTO owners VALUES (DEFAULT, 'Sam Smith', 34);
INSERT INTO owners VALUES (DEFAULT, 'Jennifer Orwell', 19);
INSERT INTO owners VALUES (DEFAULT, 'Bob', 45);
INSERT INTO owners VALUES (DEFAULT, 'Melody Pond', 77);
INSERT INTO owners VALUES (DEFAULT, 'Dean Winchester', 14);
INSERT INTO owners VALUES (DEFAULT, 'Jodie Whittaker', 38);
INSERT INTO owners VALUES (DEFAULT, 'Sam Smith', 34);
INSERT INTO owners VALUES (DEFAULT, 'Jennifer Orwell', 19);
INSERT INTO owners VALUES (DEFAULT, 'Bob', 45);
INSERT INTO owners VALUES (DEFAULT, 'Melody Pond', 77);
INSERT INTO owners VALUES (DEFAULT, 'Dean Winchester', 14);
INSERT INTO owners VALUES (DEFAULT, 'Jodie Whittaker', 38);
INSERT INTO owners VALUES (DEFAULT, 'Sam Smith', 34);
INSERT INTO owners VALUES (DEFAULT, 'Jennifer Orwell', 19);
INSERT INTO owners VALUES (DEFAULT, 'Bob', 45);
INSERT INTO owners VALUES (DEFAULT, 'Melody Pond', 77);
INSERT INTO species VALUES (DEFAULT, 'Pokemon');
INSERT INTO species VALUES (DEFAULT, 'Digimon');
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';
UPDATE animals SET owner_id = 1 WHERE name LIKE 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name LIKE 'Gabumon' OR name LIKE 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name LIKE 'Devimon' OR name LIKE 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name LIKE 'Charmander' OR name LIKE 'Squirtle' OR name LIKE 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name LIKE 'Angemon' OR name LIKE 'Boarmon';

INSERT INTO vets VALUES (DEFAULT, 'William Tatcher', 45, '2000-04-23');
INSERT INTO vets VALUES (DEFAULT, 'Maisy Smith', 26, '2019-01-17');
INSERT INTO vets VALUES (DEFAULT, 'Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets VALUES (DEFAULT, 'Jack Harkness', 38, '2008-06-08');
INSERT INTO specializations VALUES (DEFAULT, 1, 1);
INSERT INTO specializations VALUES (DEFAULT, 2, 1);
INSERT INTO specializations VALUES (DEFAULT, 2, 2);
INSERT INTO specializations VALUES (DEFAULT, 3, 2);
INSERT INTO visits VALUES (DEFAULT, 1, 1, '2020-05-24');
INSERT INTO visits VALUES (DEFAULT, 1, 3, '2020-07-22');
INSERT INTO visits VALUES (DEFAULT, 2, 4, '2021-02-02');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-01-05');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-03-08');
INSERT INTO visits VALUES (DEFAULT, 3, 2, '2020-05-14');
INSERT INTO visits VALUES (DEFAULT, 4, 3, '2021-05-04');
INSERT INTO visits VALUES (DEFAULT, 5, 4, '2021-02-24');
INSERT INTO visits VALUES (DEFAULT, 6, 2, '2019-12-21');
INSERT INTO visits VALUES (DEFAULT, 6, 1, '2020-08-10');
INSERT INTO visits VALUES (DEFAULT, 6, 2, '2021-04-07');
INSERT INTO visits VALUES (DEFAULT, 7, 3, '2019-09-29');
INSERT INTO visits VALUES (DEFAULT, 8, 4, '2020-10-03');
INSERT INTO visits VALUES (DEFAULT, 8, 4, '2020-11-04');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2019-01-24');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2019-05-15');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2020-02-27');
INSERT INTO visits VALUES (DEFAULT, 9, 2, '2020-08-03');
INSERT INTO visits VALUES (DEFAULT, 10, 3, '2020-05-24');
INSERT INTO visits VALUES (DEFAULT, 10, 1, '2021-01-11');



