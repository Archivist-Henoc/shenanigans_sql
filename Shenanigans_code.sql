/* Determining game popularity, experience, and years*/
SELECT games.game, COUNT(games.game) FROM games
	GROUP BY game;

SELECT persons.experience, COUNT(persons.experience) FROM persons
	GROUP BY experience;
    
SELECT persons.year, COUNT(persons.year) FROM persons
	GROUP BY year;


/* Group options for 1st DM */
SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Friday%' OR persons.availability LIKE '%Saturday%' OR persons.availability LIKE  '%Sunday%') AND (games.game = 'D&D');

/* Group options for 2nd DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Monday%' OR persons.availability LIKE  '%Wednesday%' OR persons.availability LIKE  '%Friday%') AND (games.game = 'Pathfinder');

/* Group options for 3rd DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Saturday%' OR persons.availability LIKE  '%Thursday%' OR persons.availability LIKE  '%Friday%') AND (games.game = 'Ryuutama');

/* Group options for 4th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Wednesday%' OR persons.availability LIKE  '%Saturday%' OR persons.availability LIKE  '%Sunday%') AND (games.game = 'D&D');

/* Group options for 5th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Thursday%' OR persons.availability LIKE  '%Wednesday%' OR persons.availability LIKE  '%Monday%') AND (games.game = 'Lancer');

/* Group options for 6th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Thursday%' OR persons.availability LIKE  '%Friday%' OR persons.availability LIKE  '%Sunday%') AND (games.game = 'D&D');

/* Group options for 7th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Wednesday%' OR persons.availability LIKE  '%Tuesday%' OR persons.availability LIKE  '%Sunday%') AND (games.game = 'Cyperpunk');

/* Group options for 8th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Saturday%' OR persons.availability LIKE  '%Friday%' OR persons.availability LIKE  '%Sunday%') AND (games.game = 'D&D');

/* Group options for 9th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Monday%' OR persons.availability LIKE  '%Sunday%' OR persons.availability LIKE  '%Tuesday%') AND (games.game = 'Lancer');

/* Group options for 10th DM */

SELECT games.person_id, persons.name, persons.availability, games.game FROM learning_schema.persons
JOIN games 
ON  persons.id = games.person_id
WHERE (persons.availability LIKE '%Monday%' OR persons.availability LIKE  '%Wednesday%' OR persons.availability LIKE  '%Friday%') AND (games.game = 'Pathfinder');


/* Showing game groups */
SELECT a.name as DM_Name, b.name as Player_Name, schedules.day_playing, games.game FROM schedules
	JOIN persons a
    ON schedules.dm_id = a.id
    JOIN persons b
    ON schedules.player_id = b.id
    JOIN games
    ON schedules.dm_id = games.id;
