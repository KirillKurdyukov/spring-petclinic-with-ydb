INSERT INTO vets(id, first_name, last_name)
VALUES (1, 'James', 'Carter'),
       (2, 'Helen', 'Leary'),
       (3, 'Linda', 'Douglas'),
       (4, 'Rafael', 'Ortega'),
       (5, 'Henry', 'Stevens'),
       (6, 'Sharon', 'Jenkins');

INSERT INTO specialties(id, name)
VALUES (1, 'radiology'),
       (2, 'surgery'),
       (3, 'dentistry');

INSERT INTO vet_specialties(vet_id, specialty_id)
VALUES (2, 1),
       (3, 2),
       (3, 3),
       (4, 2),
       (5, 1);

INSERT INTO types(id, name)
VALUES (1, 'cat'),
       (2, 'dog'),
       (3, 'lizard'),
       (4, 'snake'),
       (5, 'bird'),
       (6, 'hamster');

INSERT INTO owners(id, first_name, last_name, address, city, telephone)
VALUES (1, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023'),
       (2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749'),
       (3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763'),
       (4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198'),
       (5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765'),
       (6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654'),
       (7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387'),
       (8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683'),
       (9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435'),
       (10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');

INSERT INTO pets(id, name, birth_date, type_id, owner_id)
VALUES (1, 'Leo', DATE ('2010-09-07'), 1, 1),
       (2, 'Basil', Date ('2012-08-06'), 6, 2),
       (3, 'Rosy', DATE ('2011-04-17'), 2, 3),
       (4, 'Jewel', DATE ('2010-03-07'), 2, 3),
       (5, 'Iggy', DATE ('2010-11-30'), 3, 4),
       (6, 'George', DATE ('2010-01-20'), 4, 5),
       (7, 'Samantha', DATE ('2012-09-04'), 1, 6),
       (8, 'Max', DATE ('2012-09-04'), 1, 6),
       (9, 'Lucky', DATE ('2011-08-06'), 5, 7),
       (10, 'Mulligan', DATE ('2007-02-24'), 2, 8),
       (11, 'Freddy', DATE ('2010-03-09'), 5, 9),
       (12, 'Lucky', DATE ('2010-06-24'), 2, 10),
       (13, 'Sly', DATE ('2012-06-08'), 1, 10);

INSERT INTO visits(id, pet_id, visit_date, description)
VALUES (1, 7, DATE ('2013-01-01'), 'rabies shot'),
       (2, 8, DATE ('2013-01-02'), 'rabies shot'),
       (3, 8, DATE ('2013-01-03'), 'neutered'),
       (4, 7, DATE ('2013-01-04'), 'spayed');
