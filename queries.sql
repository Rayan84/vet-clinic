/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered = true;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts), neutered FROM animals GROUP BY animals.neutered;
SELECT MIN(weight_kg), MAX(weight_kg), species FROM animals GROUP BY species;
SELECT AVG(escape_attempts), species FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01' GROUP BY species;

SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT animals.name, species.name AS species FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, animals.name FROM owners JOIN animals ON animals.owner_id = owners.id;
SELECT species.name AS Species_type, COUNT(*) FROM animals JOIN species ON species.id = animals.species_id GROUP BY Species_type;
SELECT owners.full_name AS Owner, animals.name AS Animal, species.name As Species FROM animals JOIN species ON species.id = animals.species_id JOIN owners ON owners.id = animals.owner_id WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';
SELECT animals.name As Animal_name, owners.full_name As Owner FROM animals JOIN owners ON owners.id = animals.owner_id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
SELECT owners.full_name AS Owner, COUNT(animals.name) AS Animals_count FROM owners LEFT JOIN animals ON owners.id = animals.owner_id GROUP BY Owner ORDER BY Animals_count DESC LIMIT 1;

SELECT animals.name AS Animal_name, vets.name AS Vet_name, date_of_visit FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'William Tatcher' ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(DISTINCT animal_id) FROM visits WHERE vet_id = 3;
SELECT vets.name AS vet_name, species.name AS species FROM vets JOIN specializations ON specializations.vet_id = vets.id JOIN species ON species.id = specializations.species_id;
SELECT animals.name FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'Stephanie Mendez' AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
SELECT COUNT(animals.name) AS count, animals.name FROM visits JOIN animals ON animals.id = visits.animal_id GROUP BY animals.name ORDER BY count DESC LIMIT 1;
SELECT animals.name AS animal_name, vets.name AS vet_name, date_of_visit FROM visits JOIN animals ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit LIMIT 1;



SELECT animals.name, animals.date_of_birth, animals.escape_attempts, animals.neutered, animals.weight_kg, vets.name, vets.age, vets.date_of_graduation, visits.date_of_visit FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id ORDER BY date_of_visit DESC LIMIT 1;
SELECT vets.name, COUNT (date_of_visit) FROM vets LEFT JOIN visits ON vets.id = visits.vet_id LEFT JOIN specializations ON vets.id = specializations.vet_id WHERE specializations.species_id IS NULL GROUP BY vets.name;
SELECT species.name, COUNT(species.name)
FROM visits
JOIN animals ON animals.id = visits.animal_id
JOIN vets ON visits.vet_id = vets.id
JOIN species ON species.id = animals.species_id
WHERE vets.id = 2
GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;


EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;
SELECT COUNT(*) FROM visits where animal_id = 4;
SELECT * FROM visits where vet_id = 2;
SELECT * FROM owners where email = 'owner_18327@mail.com';

EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;
EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';
